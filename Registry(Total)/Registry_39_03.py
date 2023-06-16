from Base_ETL import BaseETL
import pandas as pd

class Registry39(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                ID,
                CHKID,
                Op_Date,
                검사시행일_DATE,
                검사시행일_TIME,
                PA
            FROM registry_28
            WHERE EXISTS (
                SELECT
                    ID,
                    Op_Date,
                    검사시행일_DATE
                FROM registry_39_01
                WHERE (
                    registry_28.ID = registry_39_01.ID
                    AND registry_28.Op_Date = registry_39_01.Op_Date
                    AND registry_28.검사시행일_DATE = registry_39_01.검사시행일_DATE
                )
            )
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_39_03")


if __name__ == "__main__":
    obj = Registry39()
    obj.run()