import pandas as pd
from Base_ETL import BaseETL

class GeneticMerge09(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                st0.원무접수ID,
                HER2,
                E_Cadherin_1,
                E_Cadherin_2,
                p53,
                p53_p,
                Ki_67,
                ki_67_p,
                CD31_N_D2_40_1,
                CD31_N_D2_40_2,
                C_kit,
                CD34,
                PKC_Theta,
                s_100,
                SMA
            FROM
                genetic_merge_step_08 st0
                LEFT JOIN genetic_step_12 st1 ON st0.원무접수ID = st1.원무접수ID
        '''
        
        df = self.df_from_sql(db_name = "gc_protocol_test", sql = sql)
        self.insert(df, db_name = "gc_protocol_test", tb_name = "genetic_merge_09") 

if __name__ == "__main__":
    obj = GeneticMerge09()
    obj.run()
