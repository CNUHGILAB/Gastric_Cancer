from Base_ETL import BaseETL
import pandas as pd

class CRP05(BaseETL):

    def run(self):
        
        sql= '''
            SELECT *
            FROM crp_03
            UNION ALL
            SELECT *
            FROM crp_04
        '''
            
        df = self.df_from_sql(db_name = "pancreatic_enzyme_protocol", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "pancreatic_enzyme_protocol", tb_name = "crp_05")


if __name__ == "__main__":
    obj = CRP05()
    obj.run()