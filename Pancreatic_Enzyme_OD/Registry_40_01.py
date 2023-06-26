from Base_ETL import BaseETL
import pandas as pd

class Registry40_01(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                DISTINCT
                    ID,
                    CHKID,
                    Op_Date,
                    GROUP_CONCAT(PA) AS PA_RESULT,
                    GROUP_CONCAT(검사시행일_Date) AS DATE
            FROM registry_39
            GROUP BY ID, CHKID, Op_Date
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_40_01")


if __name__ == "__main__":
    obj = Registry40_01()
    obj.run()