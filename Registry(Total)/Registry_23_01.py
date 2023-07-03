from Base_ETL import BaseETL
import pandas as pd

class Registry23_01(BaseETL):

    def run(self):
        
        sql= '''
            SELECT DISTINCT
                CHKID,
                ID,
                GROUP_CONCAT(OP_DATE) AS OP_DATE,
                GROUP_CONCAT(수술명) AS 수술명
            FROM registry_23_00
            GROUP BY CHKID, ID
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_23_01")


if __name__ == "__main__":
    obj = Registry23_01()
    obj.run()