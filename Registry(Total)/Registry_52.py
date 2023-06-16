from Base_ETL import BaseETL
import pandas as pd

class Registry52(BaseETL):

    def run(self):
        
        sql= '''
            SELECT *
            FROM registry_51
            UNION ALL
            SELECT *
            FROM registry_44
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_52")


if __name__ == "__main__":
    obj = Registry52()
    obj.run()