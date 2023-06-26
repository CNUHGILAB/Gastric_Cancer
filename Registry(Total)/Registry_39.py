from Base_ETL import BaseETL
import pandas as pd

class Registry39(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                원무접수ID,
                환자번호,
                검사명
            FROM raw_data_total.image
            WHERE (
                검사코드 = 'ANG27'
                OR 검사코드 = 'ANG28'
                OR 검사코드 = 'ANG29'
            )
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_39")


if __name__ == "__main__":
    obj = Registry39()
    obj.run()