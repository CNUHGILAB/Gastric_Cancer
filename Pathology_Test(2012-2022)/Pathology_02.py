from Base_ETL import BaseETL

class Pathology02(BaseETL):
    
    def Run(self):
        
        sql = '''
            SELECT
                원무접수ID,
                환자번호,
                검사시행일,
                육안소견,
                병리진단,
                CONCAT(
                    REGEXP_REPLACE(
                        REPLACE(
                            TRIM(
                                TRAILING SUBSTR(`Site`, INSTR(`Site`, '\n'))
                                FROM `Site`
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
                    SELECT * FROM pathology_protocol.pathology_01
                ) biopsy
            ) biopsy
        '''
        
        df = self.df_from_sql(db_name = 'pathology_protocol', sql = sql)
        
        self.insert(df, db_name = 'pathology_protocol', tb_name = 'pathology_02')


if __name__ == '__main__':
    obj = Pathology02()
    obj.Run()