from Base_ETL import BaseETL
import pandas as pd

class Registry38(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                DISTINCT
                    CHKID,
                    st0.ID,
                    CASE
                        WHEN 입원일 IS NOT NULL
                        THEN 'Y'
                        ELSE 'N'
                    END AS 재입원여부
            FROM registry_01 st0
                LEFT JOIN registry_37 st1 ON (
                st0.ID = st1.ID
            )
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Registry(Total)/Registry_66.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_38")


if __name__ == "__main__":
    obj = Registry38()
    obj.run()