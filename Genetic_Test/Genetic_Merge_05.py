import pandas as pd
from Base_ETL import BaseETL

class GeneticMerge05(BaseETL):

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
                C_kit
            FROM
                genetic_merge_04 st0
                LEFT JOIN genetic_08 st1 ON st0.원무접수ID = st1.원무접수ID
        '''
        
        df = self.df_from_sql(db_name = "gc_protocol_test", sql = sql)
        self.insert(df, db_name = "gc_protocol_test", tb_name = "genetic_merge_05") 

if __name__ == "__main__":
    obj = GeneticMerge05()
    obj.run()
