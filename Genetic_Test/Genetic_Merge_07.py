import pandas as pd
from base_etl import BaseETL

class GeneticMergeStep07(BaseETL):

    def run(
        self,
    ):
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
                PKC_Theta
            FROM
                genetic_merge_step_06 st0
                left join genetic_step_10 st1 on st0.원무접수ID = st1.원무접수ID
        '''
        df = self.df_from_sql(db_name="gc_protocol", sql=sql)
        self.insert(df, db_name="gc_protocol", tb_name="genetic_merge_step_07") 

if __name__ == "__main__":
    obj = GeneticMergeStep07()
    obj.run()
