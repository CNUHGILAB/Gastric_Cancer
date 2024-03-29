from Base_ETL import BaseETL
import pandas as pd

class Registry19_00(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                원무접수ID,
                환자번호,
                입원일,
                퇴원일
            FROM raw_data_total.patient
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_19_00")


if __name__ == "__main__":
    obj = Registry19_00()
    obj.run()