import pandas as pd
from base_etl import BaseETL

class GeneticMergeStep04(BaseETL):

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
                CD31_N_D2_40_2
            FROM
                genetic_merge_step_03 st0
                left join genetic_step_07 st1 on st0.원무접수ID = st1.원무접수ID
        '''
        df = self.df_from_sql(db_name="gc_protocol", sql=sql)
        self.insert(df, db_name="gc_protocol", tb_name="genetic_merge_step_04") 

if __name__ == "__main__":
    obj = GeneticMergeStep04()
    obj.run()