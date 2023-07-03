from Base_ETL import BaseETL
import pandas as pd

class Registry22_00(BaseETL):

    def run(self):
        
        sql= '''
            SELECT DISTINCT
                원무접수ID,
                환자번호,
                수술일자
            FROM raw_data_total.operation
            WHERE 수술명 = 'Exploratory laparotomy'
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_22_00")


if __name__ == "__main__":
    obj = Registry22_00()
    obj.run()