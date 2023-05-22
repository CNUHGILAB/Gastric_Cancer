from Base_ETL import BaseETL
import pandas as pd

class Registry23(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                DISTINCT 환자번호,
                원무접수ID,
                검사시행일,
                CASE
                    WHEN 환자번호 IS NOT NULL
                    THEN 'YES'
                END AS ESD
            FROM gc_raw.test
            where
                검사코드 = 'Q7652G'
        '''
            
        df = self.df_from_sql(db_name = "registry_protocol", sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_23.xlsx')
        
        self.insert(df, db_name = "registry_protocol", tb_name = "registry_23")


if __name__ == "__main__":
    obj = Registry23()
    obj.run()