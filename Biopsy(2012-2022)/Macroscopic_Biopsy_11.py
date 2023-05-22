from Base_ETL import BaseETL

class VisualFindingStep11(BaseETL):

    def run(
        self,
    ):
        sql = '''
            SELECT
                원무접수ID,
                환자번호,
                검사시행일,
                판독의,
                병리진단,
                CASE
                    WHEN INSTR(1st, 'cancer') THEN TRIM(
                        TRAILING substr(
                            SUBSTR(병리진단, INSTR(병리진단, ' (1) ')),
                            instr(
                                SUBSTR(병리진단, INSTR(병리진단, ' (1) ')),
                                '\n'
                            )
                        )
                        FROM
                            SUBSTR(병리진단, INSTR(병리진단, ' (1) '))
                    )
                    WHEN NULLIF(1st, ' ') IS NULL THEN 
                    SUBSTRING_INDEX(
                        SUBSTRING_INDEX(병리진단, '\n', 5),
                        '\n',
                        -2
                    )
                    ELSE TRIM(
                        TRAILING substr(1st, instr(1st, '\n'))
                        FROM 1st
                    )
                END AS first
            FROM(
                    SELECT
                        원무접수ID,
                        환자번호,
                        검사시행일,
                        판독의,
                        병리진단,
                        SUBSTR(병리진단, INSTR(병리진단, ' 1) ')) AS 1st
                    FROM (
                            SELECT
                                DISTINCT st03.원무접수ID,
                                st03.환자번호,
                                st03.검사시행일,
                                visual.병리진단,
                                visual.판독의
                            FROM
                                biopsy_15 st03
                                LEFT JOIN biopsy_01 visual ON (
                                    st03.원무접수ID = visual.원무접수ID
                                    AND st03.환자번호 = visual.환자번호
                                    AND st03.검사시행일 = visual.검사시행일
                                )
                            WHERE
                                NULLIF(pT, 'None') IS NULL
                        ) a
                ) a
        '''
        df = self.df_from_sql(db_name="gc_protocol_test", sql=sql)
        df = df.sort_values(['검사시행일'])
        #df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/pT_Sentence.xlsx')
        self.insert(df, db_name="gc_protocol_test", tb_name="visual_findings_11") 

if __name__ == "__main__":
    obj = VisualFindingStep11()
    obj.run()
    
