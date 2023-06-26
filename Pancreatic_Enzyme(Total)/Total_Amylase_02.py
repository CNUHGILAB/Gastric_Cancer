from Base_ETL import BaseETL
import pandas as pd

class TotalAmylase02(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                ID,
                CHKID,
                Op_Date,
                검사시행일,
                MIN(ABS('08:00:00' - 검사시행시간)) AS `TIME`,
                TA
            FROM total_amylase_01
            GROUP BY ID, CHKID, Op_Date, 검사시행일
            HAVING COUNT(ID) > 1 AND COUNT(CHKID) > 1 AND COUNT(Op_Date) > 1 AND COUNT(검사시행일) > 1
        '''
            
        df = self.df_from_sql(db_name = "pancreatic_enzyme_protocol", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "pancreatic_enzyme_protocol", tb_name = "total_amylase_02")


if __name__ == "__main__":
    obj = TotalAmylase02()
    obj.run()