import pandas as pd
from Base_ETL import BaseETL

class GeneticMerge02(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                st0.원무접수ID,
                HER2,
                E_Cadherin_1,
                E_Cadherin_2,
                p53,
                p53_p
            FROM
                genetic_merge_01 st0
                LEFT JOIN genetic_04 st1 ON st0.원무접수ID = st1.원무접수ID
        '''
        
        df = self.df_from_sql(db_name = "genetic_protocol", sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Genetic(2012-2022)/Genetic_Merge_02.xlsx')
        
        self.insert(df, db_name = "genetic_protocol", tb_name = "genetic_merge_02") 


if __name__ == "__main__":
    obj = GeneticMerge02()
    obj.run()
