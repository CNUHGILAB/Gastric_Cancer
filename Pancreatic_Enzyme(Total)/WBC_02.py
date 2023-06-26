from Base_ETL import BaseETL
import pandas as pd

class WBC02(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                ID,
                CHKID,
                Op_Date,
                검사시행일,
                검사시행시간,
                WBC,
                검사코드
            FROM wbc_01
            WHERE 검사코드 = 'B1050E'
        '''
            
        df = self.df_from_sql(db_name = "pancreatic_enzyme_protocol", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "pancreatic_enzyme_protocol", tb_name = "wbc_02")


if __name__ == "__main__":
    obj = WBC02()
    obj.run()