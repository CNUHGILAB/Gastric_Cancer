from Base_ETL import BaseETL
import pandas as pd

class Registry20_00(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                원무접수ID,
                환자번호,
                DATE_FORMAT(검사시행일, '%%Y-%%m-%%d') AS 검사시행일,
                CASE
                    WHEN 검사코드 = 'ANG27'
                    THEN 검사명
                    WHEN 검사코드 = 'ANG28'
                    THEN 검사명
                    WHEN 검사코드 = 'ANG29'
                    THEN 검사명
                    ELSE NULL
                END AS 검사명
            FROM raw_data_total.image
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_20_00")


if __name__ == "__main__":
    obj = Registry20_00()
    obj.run()