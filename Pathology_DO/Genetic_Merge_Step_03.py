import pandas as pd
from base_etl import BaseETL

class GeneticMergeStep03(BaseETL):

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
                ki_67_p
            FROM
                genetic_merge_step_02 st0
                left join genetic_step_06 st1 on st0.원무접수ID = st1.원무접수ID
        '''
        df = self.df_from_sql(db_name="gc_protocol", sql=sql)
        self.insert(df, db_name="gc_protocol", tb_name="genetic_merge_step_03") 

if __name__ == "__main__":
    obj = GeneticMergeStep03()
    obj.run()
