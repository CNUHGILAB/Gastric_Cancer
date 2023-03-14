import pandas as pd
from Base_ETL import BaseETL

class GeneticMerge01(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                st0.원무접수ID,
                HER2,
                E_Cadherin_1,
                E_Cadherin_2
            FROM
                genetic_step_03 st0
                left join genetic_step_04 st1 on st0.원무접수ID = st1.원무접수ID
        '''
        
        df = self.df_from_sql(db_name = "gc_protocol_test", sql = sql)
        self.insert(df, db_name = "gc_protocol_test", tb_name = "genetic_merge_01") 

if __name__ == "__main__":
    obj = GeneticMerge01()
    obj.run()
