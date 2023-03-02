from Base_ETL import BaseETL

class Pathologic_Biopsy12(BaseETL):

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
                        SELECT * FROM pathologic_biopsy_01
                    ) biopsy
                ) biopsy
            ) biopsy
        '''

        df = self.df_from_sql(db_name = 'gc_protocol_test', sql = sql)
            
        self.insert(df, db_name = 'gc_protocol_test', tb_name = 'pathologic_biopsy_12') 

if __name__ == "__main__":
    obj = Pathologic_Biopsy12()
    obj.run()