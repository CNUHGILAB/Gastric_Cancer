from Base_ETL import BaseETL
import pandas as pd

class TotalAmylase01(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                ta0.CHKID,
                ta0.ID,
                OP_Date,
                검사시행일,
                검사시행시간,
                TA
            FROM operate_information ta0
                LEFT JOIN total_amylase_00 ta1 ON (
                    ta0.CHKID = ta1.원무접수ID
                    AND ta0.ID = ta1.환자번호
                )
            WHERE(
                검사시행일 BETWEEN DATE_ADD(OP_Date, INTERVAL 1 DAY)
                AND DATE_ADD(OP_Date, INTERVAL 30 DAY)
            )
        '''
            
        df = self.df_from_sql(db_name = "pancreatic_enzyme_protocol", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "pancreatic_enzyme_protocol", tb_name = "total_amylase_01")


if __name__ == "__main__":
    obj = TotalAmylase01()
    obj.run()