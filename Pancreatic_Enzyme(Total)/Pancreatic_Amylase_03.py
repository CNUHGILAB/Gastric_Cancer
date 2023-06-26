from Base_ETL import BaseETL
import pandas as pd

class PancreaticAmylase03(BaseETL):

    def run(self):
        
        sql= '''
            SELECT DISTINCT
                pa0.CHKID,
                pa0.ID,
                Op_Date,
                검사시행일,
                PA,
                LOWER(비고내용) AS 비고내용
            FROM operate_information pa0
                LEFT JOIN pancreatic_amylase_02 pa1 ON (
                    pa0.CHKID = pa1.원무접수ID
                    AND pa0.ID = pa1.환자번호
                )
        '''
            
        df = self.df_from_sql(db_name = "pancreatic_enzyme_protocol", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "pancreatic_enzyme_protocol", tb_name = "pancreatic_amylase_03")


if __name__ == "__main__":
    obj = PancreaticAmylase03()
    obj.run()