from Base_ETL import BaseETL
import pandas as pd

class PancreaticAmylase02(BaseETL):

    def run(self):
        
        sql= '''
            SELECT DISTINCT
                pa0.원무접수ID,
                pa0.환자번호,
                pa0.검사시행일,
                REPLACE(PA, '.0', '') AS PA,
                비고내용
            FROM pancreatic_amylase_00 pa0
                LEFT JOIN pancreatic_amylase_01 pa1 ON (
                    pa0.원무접수ID = pa1.원무접수ID
                    AND pa0.환자번호 = pa1.환자번호
                    AND pa0.검사시행일 = pa1.검사시행일
                )
        '''
            
        df = self.df_from_sql(db_name = "pancreatic_enzyme_protocol", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "pancreatic_enzyme_protocol", tb_name = "pancreatic_amylase_02")


if __name__ == "__main__":
    obj = PancreaticAmylase02()
    obj.run()