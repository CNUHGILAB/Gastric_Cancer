from Base_ETL import BaseETL

class Pathology20(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                st0. 원무접수ID,
                환자번호,
                검사시행일,
                HER2
            FROM
                genetic_01 st0
                LEFT JOIN genetic_02 st1 ON (
                    st0.원무접수ID = st1.원무접수ID
                )
        '''
        
        df = self.df_from_sql(db_name = 'genetic_protocol', sql = sql)
        
        self.insert(df, db_name = 'pathology_protocol', tb_name = 'pathology_20')


if __name__ == '__main__':
    obj = Pathology20()
    obj.run()