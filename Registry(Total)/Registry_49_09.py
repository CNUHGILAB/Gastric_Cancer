from Base_ETL import BaseETL
import pandas as pd

class Registry49(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                ID,
                CHKID,
                Op_Date,
                검사시행일_DATE,
                `TIME`,
                CRP,
                검사코드
            FROM registry_49_04
            WHERE (ID, Op_Date, 검사시행일_DATE) IN (
                SELECT
                    ID,
                    Op_Date,
                    검사시행일_DATE
                FROM registry_49_08
            )
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_49_09")


if __name__ == "__main__":
    obj = Registry49()
    obj.run()