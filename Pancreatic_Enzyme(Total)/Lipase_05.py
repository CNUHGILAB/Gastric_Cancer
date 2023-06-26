from Base_ETL import BaseETL
import pandas as pd

class Lipase05(BaseETL):

    def run(self):
        
        sql= '''
            SELECT DISTINCT
                ID,
                CHKID,
                Op_Date,
                GROUP_CONCAT(Lipase) AS Lipase_RESULT,
                GROUP_CONCAT(검사시행일_Date) AS DATE
            FROM lipase_04
            GROUP BY ID, CHKID, Op_Date
        '''
            
        df = self.df_from_sql(db_name = "pancreatic_enzyme_protocol", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        #print(df)
        
        self.insert(df, db_name = "pancreatic_enzyme_protocol", tb_name = "lipase_05")


if __name__ == "__main__":
    obj = Lipase05()
    obj.run()