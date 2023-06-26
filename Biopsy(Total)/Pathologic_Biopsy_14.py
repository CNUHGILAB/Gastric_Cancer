from Base_ETL import BaseETL

class Pathologic_Biopsy14(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                DISTINCT 원무접수ID,
                환자번호,
                검사시행일,
                CASE
                    WHEN Endoscopy IS NULL
                    THEN 'OP'
                    ELSE 'ESD'
                END AS Endoscopy
            FROM(
                SELECT
                    원무접수ID,
                    환자번호,
                    검사시행일,  
                    CASE
                        WHEN NULLIF(Endoscopy, '') IS NULL
                        THEN NULL
                        ELSE REGEXP_REPLACE(
                                TRIM(
                                    TRAILING SUBSTR(Endoscopy, INSTR(Endoscopy, '\n'))
                                    FROM Endoscopy
                                ), '[(|.|;|:|)]', ''
                            )
                    END AS Endoscopy
                FROM(
                    SELECT
                        원무접수ID,
                        환자번호,
                        검사시행일,
                        SUBSTR(병리진단, INSTR(병리진단, 'endoscopic')) AS Endoscopy
                    FROM(
                        SELECT * FROM pathologic_biopsy_03
                    ) biopsy
                ) biopsy
            ) biopsy
        '''

        df = self.df_from_sql(db_name = 'biopsy_total', sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Biopsy(Total)/Pathologic_Biopsy_14.xlsx')
            
        self.insert(df, db_name = 'biopsy_total', tb_name = 'pathologic_biopsy_14') 


if __name__ == "__main__":
    obj = Pathologic_Biopsy14()
    obj.run()