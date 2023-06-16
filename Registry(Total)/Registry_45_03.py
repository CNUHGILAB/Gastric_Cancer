from Base_ETL import BaseETL
import pandas as pd

class Registry45(BaseETL):

    def run(self):
        
        sql= '''
            SELECT *
            FROM registry_45_01
            WHERE NOT EXISTS (
                SELECT
                    ID,
                    Op_Date,
                    검사시행일_DATE
                FROM registry_45_02
                WHERE (
                    registry_45_01.ID = registry_45_02.ID
                    AND registry_45_01.Op_Date = registry_45_02.Op_Date
                    AND registry_45_01.검사시행일_DATE = registry_45_02.검사시행일_DATE
                )
            )
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_45_03")


if __name__ == "__main__":
    obj = Registry45()
    obj.run()