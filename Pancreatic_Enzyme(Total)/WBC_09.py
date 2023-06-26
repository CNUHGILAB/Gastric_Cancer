from Base_ETL import BaseETL
import pandas as pd

class WBC09(BaseETL):

    def run(self):
        
        sql= '''
            SELECT *
            FROM wbc_07
            UNION ALL
            SELECT *
            FROM wbc_08
        '''
            
        df = self.df_from_sql(db_name = "pancreatic_enzyme_protocol", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "pancreatic_enzyme_protocol", tb_name = "wbc_09")


if __name__ == "__main__":
    obj = WBC09()
    obj.run()