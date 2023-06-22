from Base_ETL import BaseETL
import pandas as pd

class Registry63(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                원무접수ID,
                환자번호,
                입원일
            FROM raw_data_total.patient
            WHERE (
                입원일 IS NOT NULL
            )
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_63")


if __name__ == "__main__":
    obj = Registry63()
    obj.run()