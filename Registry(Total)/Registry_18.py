from Base_ETL import BaseETL
import pandas as pd

class Registry18(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                CHKID,
                ID,
                DATEDIFF(OP_DISC, OP_ADM) AS 재원일수,
                OP_DATE
            FROM registry_01_04
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_18")


if __name__ == "__main__":
    obj = Registry18()
    obj.run()