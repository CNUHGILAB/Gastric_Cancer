from Base_ETL import BaseETL
import pandas as pd

class Registry14_00(BaseETL):

    def run(self):
        
        sql= '''
            SELECT DISTINCT
                환자번호,
                원무접수ID,
                검사시행일,
                CASE
                    WHEN 환자번호 IS NOT NULL
                    THEN 'YES'
                END AS ESD
            FROM raw_data_total.endoscope
            WHERE 검사코드 = 'Q7652G'
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_22.xlsx')
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_14_00")


if __name__ == "__main__":
    obj = Registry14_00()
    obj.run()