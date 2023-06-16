from Base_ETL import BaseETL
import pandas as pd

class Registry43(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                ID,
                CHKID,
                Op_Date,
                검사시행일_DATE,
                MIN(ABS('08:00:00' - 검사시행일_TIME)) AS `TIME`,
                Lipase
            FROM registry_32
            GROUP BY ID, CHKID, Op_Date, 검사시행일_DATE
            HAVING COUNT(ID) > 1 AND COUNT(CHKID) > 1 AND COUNT(Op_Date) > 1 AND COUNT(검사시행일_DATE) > 1
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_43_01")


if __name__ == "__main__":
    obj = Registry43()
    obj.run()