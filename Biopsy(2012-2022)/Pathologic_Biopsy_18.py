from Base_ETL import BaseETL

class Pathologic_Biopsy18(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                DISTINCT 원무접수ID,
                환자번호,
                검사시행일,
                REPLACE(
                    REPLACE(
                        REPLACE(
                            CONCAT(
                                Dysplasia_1, ',', Dysplasia_2
                            ), '0,', ''
                        ), ',0', ''
                    ), '0', ''
                ) AS Dysplasia,
                Adenoma,
                Gist
            FROM(
                SELECT
                    원무접수ID,
                    환자번호,
                    검사시행일,
                    CASE
                        WHEN NULLIF(Dysplasia_1, '') IS NOT NULL
                        THEN 'Low Grade Dysplasia'
                        ELSE 0
                    END AS Dysplasia_1,
                    CASE
                        WHEN NULLIF(Dysplasia_2, '') IS NOT NULL
                        THEN 'High Grade Dysplasia'
                        ELSE 0
                    END AS Dysplasia_2,
                    CASE
                        WHEN NULLIF(adenoma, '') IS NOT NULL
                        THEN 'adenoma'
                    END AS Adenoma,
                    CASE
                        WHEN NULLIF(gist, '') IS NOT NULL
                        THEN 'gist'
                    END AS Gist
                FROM(
                    SELECT
                        원무접수ID,
                        환자번호,
                        검사시행일,
                        SUBSTR(병리진단, INSTR(병리진단, 'low grade dysplasia')) AS Dysplasia_1,
                        SUBSTR(병리진단, INSTR(병리진단, 'high grade dysplasia')) AS Dysplasia_2,
                        SUBSTR(병리진단, INSTR(병리진단, 'adenoma')) AS Adenoma,
                        SUBSTR(병리진단, INSTR(병리진단, 'gist')) AS Gist
                    FROM(
                        SELECT * FROM pathologic_biopsy_01
                    ) biopsy
                ) biopsy
            ) biopsy
        '''
        
        df = self.df_from_sql(db_name = 'biopsy_protocol', sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Biopsy(2012-2022)/Pathologic_Biopsy_18.xlsx')
        
        self.insert(df, db_name = 'biopsy_protocol', tb_name = 'pathologic_biopsy_18') 


if __name__ == "__main__":
    obj = Pathologic_Biopsy18()
    obj.run()