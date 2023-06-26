from Base_ETL import BaseETL
import pandas as pd

class Lipase03(BaseETL):

    def run(self):
        
        sql= '''
            SELECT *
            FROM lipase_01
            WHERE NOT EXISTS (
                SELECT
                    ID,
                    Op_Date,
                    검사시행일_DATE
                FROM lipase_02
                WHERE (
                    lipase_01.ID = lipase_02.ID
                    AND lipase_01.Op_Date = lipase_02.Op_Date
                    AND lipase_01.검사시행일_DATE = lipase_02.검사시행일_DATE
                )
            )
        '''
            
        df = self.df_from_sql(db_name = "pancreatic_enzyme_protocol", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "pancreatic_enzyme_protocol", tb_name = "lipase_03")


if __name__ == "__main__":
    obj = Lipase03()
    obj.run()