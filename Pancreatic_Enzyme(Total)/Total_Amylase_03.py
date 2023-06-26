from Base_ETL import BaseETL
import pandas as pd

class TotalAmylase03(BaseETL):

    def run(self):
        
        sql= '''
            SELECT *
            FROM total_amylase_01
            WHERE NOT EXISTS (
                SELECT
                    ID,
                    Op_Date,
                    검사시행일
                FROM total_amylase_02
                WHERE (
                    total_amylase_01.ID = total_amylase_02.ID
                    AND total_amylase_01.Op_Date = total_amylase_02.Op_Date
                    AND total_amylase_01.검사시행일 = total_amylase_02.검사시행일
                )
            )
        '''
            
        df = self.df_from_sql(db_name = "pancreatic_enzyme_protocol", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "pancreatic_enzyme_protocol", tb_name = "total_amylase_03")


if __name__ == "__main__":
    obj = TotalAmylase03()
    obj.run()