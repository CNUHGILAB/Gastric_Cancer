from Base_ETL import BaseETL

class ASAScore00(BaseETL):

    def run(self):

        sql = '''
            SELECT
                환자번호,
                환자명,
                성별,
                나이,
                수술일,
                집도의,
                수술코드,
                수술명,
                수술전진단코드,
                수술전진단명,
                수술후진단코드,
                수술후진단명,
                `ASA Score`,
                `ASA Number`
            FROM(
                SELECT *,
                    CASE
                        WHEN NULLIF(EMR_ASA_Score, '') IS NOT NULL
                        THEN EMR_ASA_Score
                        WHEN NULLIF(RE_EMR_ASA_Score, '') IS NOT NULL
                        THEN RE_EMR_ASA_Score
                        WHEN NULLIF(`차세대 ASA class`, '') IS NOT NULL
                        THEN `차세대 ASA class`
                        ELSE NULL
                    END AS `ASA Score`
                FROM(
                    SELECT *,
                        CASE
                            WHEN NULLIF(`EMR ASA class`, '') IS NOT NULL AND NULLIF(RE_EMR_ASA_Score, '') IS NULL
                            THEN `EMR ASA class`
                            ELSE NULL
                        END AS EMR_ASA_Score
                    FROM(
                        SELECT *,
                            CASE
                                WHEN INSTR(`EMR ASA class`, '1,1') != 0
                                THEN '1'
                                WHEN INSTR(`EMR ASA class`, '1,1,1') != 0
                                THEN '1'
                                WHEN INSTR(`EMR ASA class`, '2,2') != 0
                                THEN '2'
                                WHEN INSTR(`EMR ASA class`, '2,2,2') != 0
                                THEN '2'
                                WHEN INSTR(`EMR ASA class`, '3,3') != 0
                                THEN '3'
                                WHEN INSTR(`EMR ASA class`, '3,3,3') != 0
                                THEN '3'
                                WHEN INSTR(`EMR ASA class`, '4,4') != 0
                                THEN '4'
                                WHEN INSTR(`EMR ASA class`, '4,4,4') != 0
                                THEN '4'
                                WHEN INSTR(`EMR ASA class`, '5,5') != 0
                                THEN '5'
                                WHEN INSTR(`EMR ASA class`, '5,5,5') != 0
                                THEN '5'
                                ELSE NULL
                            END AS RE_EMR_ASA_Score,
                            CASE
                                WHEN REGEXP_INSTR(`EMR ASA class`, '^[0-9]$') != 0
                                THEN '1'
                                WHEN REGEXP_INSTR(`EMR ASA class`, '^[0-9][,][0-9]$') != 0
                                THEN '2'
                                WHEN REGEXP_INSTR(`EMR ASA class`, '^[0-9][,][0-9][,][0-9]$') != 0
                                THEN '3'
                                WHEN NULLIF(`차세대 ASA class`, '') IS NOT NULL
                                THEN '1'
                                ELSE NULL
                            END AS `ASA Number`
                        FROM gc_raw.asa_score
                    ) a
                ) a
            ) a
        '''
        
        df = self.df_from_sql(db_name = "raw_data_edit", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_03.xlsx')
        #print(df)
        
        self.insert(df, db_name = "raw_data_edit", tb_name = "asa_score_00")


if __name__ == "__main__":
    obj = ASAScore00()
    obj.run()