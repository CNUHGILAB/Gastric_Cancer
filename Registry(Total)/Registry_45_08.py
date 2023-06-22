from Base_ETL import BaseETL
import pandas as pd

class Registry45_08(BaseETL):

    def run(self):
        
        sql= '''
            SELECT *
            FROM registry_45_06
            UNION ALL
            SELECT *
            FROM registry_45_07
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_45_08")


if __name__ == "__main__":
    obj = Registry45_08()
    obj.run()