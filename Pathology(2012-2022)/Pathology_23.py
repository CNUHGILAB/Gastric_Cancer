from Base_ETL import BaseETL

class Pathology23(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                st0.원무접수ID,
                환자번호,
                검사시행일,
                HER2,
                E_Cadherin_1,
                E_Cadherin_2,
                p53,
                p53_p,
                `Ki-67`,
                `Ki-67_p`
            FROM
                pathology_22 st0
                LEFT JOIN genetic_protocol.genetic_05 st1 ON (
                    st0.원무접수ID = st1.원무접수ID
                )
        '''
        
        df = self.df_from_sql(db_name = 'pathology_protocol', sql = sql)
        
        self.insert(df, db_name = 'pathology_protocol', tb_name = 'pathology_23')


if __name__ == '__main__':
    obj = Pathology23()
    obj.run()