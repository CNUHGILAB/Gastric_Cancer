from Base_ETL import BaseETL
import pandas as pd

class Registry37(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                ID,
                Op_Date,
                입원일
            FROM registry_36
            WHERE (
                입원일 BETWEEN DATE_ADD(Op_Date, INTERVAL 1 DAY)
                    AND DATE_ADD(Op_Date, INTERVAL 30 DAY)
            )
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_37")


if __name__ == "__main__":
    obj = Registry37()
    obj.run()