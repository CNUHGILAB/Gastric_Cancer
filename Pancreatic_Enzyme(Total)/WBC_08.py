from Base_ETL import BaseETL
import pandas as pd

class WBC08(BaseETL):

    def run(self):
        
        sql= '''
            SELECT *
            FROM wbc_06
            WHERE NOT EXISTS (
                SELECT
                    ID,
                    Op_Date,
                    검사시행일,
                    검사코드
                FROM wbc_07
                WHERE (
                    wbc_06.ID = wbc_07.ID
                    AND wbc_06.Op_Date = wbc_07.Op_Date
                    AND wbc_06.검사시행일 = wbc_07.검사시행일
                )
            )
        '''
            
        df = self.df_from_sql(db_name = "pancreatic_enzyme_protocol", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "pancreatic_enzyme_protocol", tb_name = "wbc_08")


if __name__ == "__main__":
    obj = WBC08()
    obj.run()