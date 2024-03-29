from Base_ETL import BaseETL
import pandas as pd

class Registry43_02(BaseETL):

    def run(self):
        
        sql= '''
            SELECT *
            FROM registry_32
            WHERE NOT EXISTS (
                SELECT
                    ID,
                    Op_Date,
                    검사시행일_DATE
                FROM registry_43_01
                WHERE (
                    registry_32.ID = registry_43_01.ID
                    AND registry_32.Op_Date = registry_43_01.Op_Date
                    AND registry_32.검사시행일_DATE = registry_43_01.검사시행일_DATE
                )
            )
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_43_02")


if __name__ == "__main__":
    obj = Registry43_02()
    obj.run()