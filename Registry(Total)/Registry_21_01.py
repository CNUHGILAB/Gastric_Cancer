from Base_ETL import BaseETL
import pandas as pd

class Registry21_01(BaseETL):

    def run(self):
        
        sql= '''
            SELECT DISTINCT
                st0.CHKID,
                st0.ID,
                CASE
                    WHEN `재원일수(ICU)` IS NOT NULL
                    THEN 'Y'
                    ELSE 'N'
                END AS ICU입실여부,
                CASE
                    WHEN `재원일수(ICU)` IS NOT NULL
                    THEN `재원일수(ICU)`
                    ELSE NULL
                END AS ICU재원일수
            FROM registry_01_04 st0
                LEFT JOIN registry_21_00 st1 ON (
                    st0.CHKID = st1.원무접수ID
                    AND st0.ID = st1.환자번호
            )
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_21_01")


if __name__ == "__main__":
    obj = Registry21_01()
    obj.run()