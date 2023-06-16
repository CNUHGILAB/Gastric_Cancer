from Base_ETL import BaseETL
import pandas as pd

class Registry49(BaseETL):

    def run(self):
        
        sql= '''
            SELECT *
            FROM registry_49_05
            WHERE NOT EXISTS (
                SELECT
                    ID,
                    Op_Date,
                    검사시행일_DATE,
                    검사코드
                FROM registry_49_06
                WHERE (
                    registry_49_05.ID = registry_49_06.ID
                    AND registry_49_05.Op_Date = registry_49_06.Op_Date
                    AND registry_49_05.검사시행일_DATE = registry_49_06.검사시행일_DATE
                )
            )
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_49_07")


if __name__ == "__main__":
    obj = Registry49()
    obj.run()