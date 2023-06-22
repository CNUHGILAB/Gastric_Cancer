from Base_ETL import BaseETL
import pandas as pd

class Registry50_01(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                DISTINCT
                    ID,
                    CHKID,
                    Op_Date,
                    GROUP_CONCAT(CRP) AS CRP_RESULT,
                    GROUP_CONCAT(검사시행일_Date) AS DATE
            FROM registry_49
            GROUP BY ID, CHKID, Op_Date
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_50_01")


if __name__ == "__main__":
    obj = Registry50_01()
    obj.run()