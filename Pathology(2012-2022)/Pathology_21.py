from Base_ETL import BaseETL

class Pathology21(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                st0. 원무접수ID,
                환자번호,
                검사시행일,
                HER2,
                E_Cadherin_1,
                E_Cadherin_2
            FROM
                pathology_20 st0
                LEFT JOIN genetic_protocol.genetic_03 st1 ON (
                    st0.원무접수ID = st1.원무접수ID
                )
        '''
        
        df = self.df_from_sql(db_name = 'pathology_protocol', sql = sql)
        
        self.insert(df, db_name = 'pathology_protocol', tb_name = 'pathology_21')


if __name__ == '__main__':
    obj = Pathology21()
    obj.run()