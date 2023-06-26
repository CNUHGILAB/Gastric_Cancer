from Base_ETL import BaseETL
import pandas as pd

class TotalAmylase04(BaseETL):

    def run(self):
        
        sql= '''
            SELECT *
            FROM total_amylase_02
            UNION ALL
            SELECT *
            FROM total_amylase_03
        '''
            
        df = self.df_from_sql(db_name = "pancreatic_enzyme_protocol", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        #print(df)
        
        self.insert(df, db_name = "pancreatic_enzyme_protocol", tb_name = "total_amylase_04")


if __name__ == "__main__":
    obj = TotalAmylase04()
    obj.run()