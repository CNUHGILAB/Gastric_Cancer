import pandas as pd
from Base_ETL import BaseETL

class GeneticMerge13(BaseETL):

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
                SMA,
                CK_1,
                CK_2,
                Chromogranin,
                EBV,
                Giemsa
            FROM
                genetic_merge_12 st0
                LEFT JOIN genetic_16 st1 ON st0.원무접수ID = st1.원무접수ID
        '''
        
        df = self.df_from_sql(db_name = "gc_protocol_test", sql = sql)
        #df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/genetic.xlsx')
        self.insert(df, db_name = "gc_db", tb_name = "genetic") 

if __name__ == "__main__":
    obj = GeneticMerge13()
    obj.run()
