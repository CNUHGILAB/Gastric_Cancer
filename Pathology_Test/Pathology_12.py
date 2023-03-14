from Base_ETL import BaseETL

class Pathology12(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                DISTINCT
                원무접수ID,
                환자번호,
                검사시행일,
                CASE
                    WHEN Endoscopic IS NULL
                    THEN 'OP'
                    ELSE 'ESD'
                END AS Endoscopic
            FROM(
                SELECT
                    원무접수ID,
                    환자번호,
                    검사시행일,
                    CASE
                        WHEN NULLIF(Endoscopic, '') IS NULL
                        THEN NULL
                        ELSE REGEXP_REPLACE(
                            TRIM(
                                TRAILING SUBSTR(Endoscopic, INSTR(Endoscopic, '\n'))
                                FROM Endoscopic
                            ), '[(|.|;|:|)]', ''
                        )
                    END AS endoscopic
                FROM(
                    SELECT
                        원무접수ID,
                        환자번호,
                        검사시행일,
                        SUBSTR(병리진단, INSTR(병리진단, 'endoscopic')) AS Endoscopic
                    FROM(
                        SELECT * FROM gc_protocol_test.pathology_01
                    ) biopsy
                ) biopsy
            ) biopsy
        '''
        
        df = self.df_from_sql(db_name = 'gc_protocol_test', sql = sql)
        
        self.insert(df, db_name = 'gc_protocol_test', tb_name = 'pathology_12')

if __name__ == '__main__':
    obj = Pathology12()
    obj.run()