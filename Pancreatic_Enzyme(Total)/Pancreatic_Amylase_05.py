from Base_ETL import BaseETL
import pandas as pd

class PancreaticAmylase05(BaseETL):

    def run(self):
        
        sql= '''
            SELECT DISTINCT
                CHKID,
                ID,
                Op_Date,
                검사시행일,
                검사시행시간,
                PA
            FROM pancreatic_amylase_04
            WHERE(
                검사시행일 BETWEEN DATE_ADD(OP_Date, INTERVAL 1 DAY)
                AND DATE_ADD(OP_Date, INTERVAL 30 DAY)
            )
        '''
            
        df = self.df_from_sql(db_name = "pancreatic_enzyme_protocol", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "pancreatic_enzyme_protocol", tb_name = "pancreatic_amylase_05")


if __name__ == "__main__":
    obj = PancreaticAmylase05()
    obj.run()