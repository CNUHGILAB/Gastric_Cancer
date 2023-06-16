from Base_ETL import BaseETL
import pandas as pd

class Registry53(BaseETL):

    def run(self):
        
        sql= '''
            SELECT *
            FROM registry_52
            UNION ALL
            SELECT *
            FROM registry_46
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_53")


if __name__ == "__main__":
    obj = Registry53()
    obj.run()