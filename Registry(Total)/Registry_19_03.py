from Base_ETL import BaseETL
import pandas as pd

class Registry19_03(BaseETL):

    def run(self):
        
        sql= '''
            SELECT DISTINCT
                CHKID,
                ID,
                OP_DATE,
                CASE
                    WHEN RE_OP_ADM IS NOT NULL
                    THEN 'Y'
                    ELSE 'N'
                END AS 재입원여부
            FROM registry_19_02
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(Total)/Registry_37.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_19_03")


if __name__ == "__main__":
    obj = Registry19_03()
    obj.run()