from Base_ETL import BaseETL

class Pathology_02(BaseETL):
    
    def Run(self):
        
        sql = '''
            SELECT
                원무접수ID,
                환자번호,
                검사시행일,
                육안소견,
                CONCAT(
                    REGEXP_REPLACE(
                        REPLACE(
                            TRIM(
                                TRAILING SUBSTR(`site`, INSTR(`site`, '\n'))
                                FROM `site`
                            ), 'site:', ''
                        ), '[(|.|:|;|)]', ''
                    ), ','
                ) AS `Site`
            FROM(
                SELECT
                    원무접수ID,
                    환자번호,
                    검사시행일,
                    육안소견,
                    SUBSTR(병리진단, INSTR(병리진단, 'site:')) AS `Site`
                FROM(
                    SELECT * FROM gc_protocol_test.pathology_01
                ) biopsy
            ) biopsy
        '''
        
        df = self.df_from_sql(db_name = 'gc_protocol_test', sql = sql)
        self.insert(df, db_name = 'gc_protocol_test', tb_name = 'pathology_02')
        
if __name__ == '__main__':
    obj = Pathology_02()
    obj.Run()