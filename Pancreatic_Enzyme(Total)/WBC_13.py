from Base_ETL import BaseETL
import pandas as pd

class WBC13(BaseETL):

    def run(self):
        
        sql= '''
            SELECT DISTINCT
                ID,
                CHKID,
                Op_Date,
                GROUP_CONCAT(WBC) AS WBC_RESULT,
                GROUP_CONCAT(검사시행일) AS DATE
            FROM wbc_12
            GROUP BY ID, CHKID, Op_Date
        '''
            
        df = self.df_from_sql(db_name = "pancreatic_enzyme_protocol", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        #print(df)
        
        self.insert(df, db_name = "pancreatic_enzyme_protocol", tb_name = "wbc_13")


if __name__ == "__main__":
    obj = WBC13()
    obj.run()