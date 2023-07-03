from Base_ETL import BaseETL
import pandas as pd

class Registry17_01(BaseETL):

    def run(self):
        
        sql= '''
            SELECT DISTINCT
                a.CHKID,
                a.ID,
                OP_DATE,
                사망일시
            FROM registry_01_04 a
                LEFT JOIN registry_17_00 b ON (
                    a.CHKID = b.원무접수ID
                    AND a.ID = b.환자번호
                )
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_17_01")


if __name__ == "__main__":
    obj = Registry17_01()
    obj.run()