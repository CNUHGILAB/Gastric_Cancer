from Base_ETL import BaseETL

class Pathology11(BaseETL):
    
    def Run(self):
        
        sql = '''
            SELECT
                DISTINCT 원무접수ID,
                환자번호,
                검사시행일,
                SUBSTR(
                    SUBSTRING_INDEX(
                        MSI_Test, ')', 1
                    ), '(', -1
                ) AS MSI_Test
            FROM(
                SELECT
                    원무접수ID,
                    환자번호,
                    검사시행일,
                    육안소견,
                    REGEXP_REPLACE(
                        REPLACE(
                            TRIM(
                                TRAILING SUBSTR(MSI_Test, INSTR(MSI_Test, '\n'))
                                FROM MSI_Test
                            ), 'size', ''
                        ), '[;|:|-]', ''
                    ) AS MSI_Test
                    SUBSTR(병리진단, INSTR(병리진단, 'Microsatellite')) AS MSI_Test
                FROM(
                    SELECT
                        원무접수ID,
                        환자번호,
                        검사시행일,
                        육안소견,
                        SUBSTR(병리진단, INSTR(병리진단, 'Microsatellite')) AS MSI_Test
                    FROM(
                        SELECT * FROM gc_protocol_test.pathology_01
                    ) biopsy
                ) biopsy
            ) biopsy
        '''
        
        df = self.df_from_sql(db_name = 'gc_protocol_test', sql = sql)
        self.insert(df, db_name = 'gc_protocol_test', tb_name = 'pathology_11')
        
if __name__ == '__main__':
    obj = Pathology11()
    obj.Run()