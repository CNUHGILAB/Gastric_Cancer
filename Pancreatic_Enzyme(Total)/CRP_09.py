from Base_ETL import BaseETL
import pandas as pd

class CRP09(BaseETL):

    def run(self):
        
        sql= '''
            SELECT *
            FROM crp_07
            UNION ALL
            SELECT *
            FROM crp_08
        '''
            
        df = self.df_from_sql(db_name = "pancreatic_enzyme_protocol", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "pancreatic_enzyme_protocol", tb_name = "crp_09")


if __name__ == "__main__":
    obj = CRP09()
    obj.run()