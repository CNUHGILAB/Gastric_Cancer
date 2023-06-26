from Base_ETL import BaseETL
import pandas as pd

class Registry33(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                CHKID,
                ID,
                CASE
                    WHEN 사망일시 BETWEEN DATE_ADD(Op_Date, INTERVAL 1 DAY) AND DATE_ADD(Op_Date, INTERVAL 30 DAY) IS NOT NULL
                    THEN 'Y'
                    ELSE 'N'
                END AS 사망여부
            FROM registry_32
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_33")


if __name__ == "__main__":
    obj = Registry33()
    obj.run()