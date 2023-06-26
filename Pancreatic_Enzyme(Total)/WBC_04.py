from Base_ETL import BaseETL
import pandas as pd

class WBC04(BaseETL):

    def run(self):
        
        sql= '''
            SELECT *
            FROM wbc_02
            WHERE NOT EXISTS (
                SELECT
                    ID,
                    Op_Date,
                    검사시행일
                FROM wbc_03
                WHERE (
                    wbc_02.ID = wbc_03.ID
                    AND wbc_02.Op_Date = wbc_03.Op_Date
                    AND wbc_02.검사시행일 = wbc_03.검사시행일
                )
            )
        '''
            
        df = self.df_from_sql(db_name = "pancreatic_enzyme_protocol", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "pancreatic_enzyme_protocol", tb_name = "wbc_04")


if __name__ == "__main__":
    obj = WBC04()
    obj.run()