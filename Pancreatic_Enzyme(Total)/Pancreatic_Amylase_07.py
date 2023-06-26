from Base_ETL import BaseETL
import pandas as pd

class PancreaticAmylase07(BaseETL):

    def run(self):
        
        sql= '''
            SELECT *
            FROM pancreatic_amylase_05
            WHERE NOT EXISTS (
                SELECT
                    ID,
                    Op_Date,
                    검사시행일
                FROM pancreatic_amylase_06
                WHERE (
                    pancreatic_amylase_05.ID = pancreatic_amylase_06.ID
                    AND pancreatic_amylase_05.Op_Date = pancreatic_amylase_06.Op_Date
                    AND pancreatic_amylase_05.검사시행일 = pancreatic_amylase_06.검사시행일
                )
            )
        '''
            
        df = self.df_from_sql(db_name = "pancreatic_enzyme_protocol", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "pancreatic_enzyme_protocol", tb_name = "pancreatic_amylase_07")


if __name__ == "__main__":
    obj = PancreaticAmylase07()
    obj.run()