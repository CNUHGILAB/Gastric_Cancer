from Base_ETL import BaseETL
import pandas as pd

class PancreaticAmylase08(BaseETL):

    def run(self):
        
        sql= '''
            SELECT ID, CHKID, Op_Date, 검사시행일, PA
            FROM pancreatic_amylase_06
            UNION ALL
            SELECT ID, CHKID, Op_Date, 검사시행일, PA
            FROM pancreatic_amylase_07
        '''
            
        df = self.df_from_sql(db_name = "pancreatic_enzyme_protocol", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "pancreatic_enzyme_protocol", tb_name = "pancreatic_amylase_08")


if __name__ == "__main__":
    obj = PancreaticAmylase08()
    obj.run()