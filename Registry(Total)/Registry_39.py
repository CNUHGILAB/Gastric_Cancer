from Base_ETL import BaseETL
import pandas as pd

class Registry39(BaseETL):

    def run(self):
        
        sql= '''
            SELECT ID, CHKID, Op_Date, 검사시행일_DATE, PA
            FROM registry_39_01
            UNION ALL
            SELECT ID, CHKID, Op_Date, 검사시행일_DATE, PA
            FROM registry_39_02
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_39")


if __name__ == "__main__":
    obj = Registry39()
    obj.run()