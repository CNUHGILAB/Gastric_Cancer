from Base_ETL import BaseETL
import pandas as pd

class PancreaticEnzyme00(BaseETL):

    def run(self):
        
        sql= '''
            SELECT DISTINCT
                pa.CHKID,
                pa.ID,
                pa.Op_Date,
                `P.Amylase POD1`,
                `P.Amylase POD2`,
                `P.Amylase POD3`,
                `P.Amylase POD4`,
                `T.Amylase POD1`,
                `T.Amylase POD2`,
                `T.Amylase POD3`,
                `T.Amylase POD4`
            FROM pancreatic_amylase_10 pa
                LEFT JOIN total_amylase_06 ta ON (
                    pa.CHKID = ta.CHKID
                    AND pa.ID = ta.ID
                    AND pa.Op_Date = ta.Op_Date
                )
        '''
            
        df = self.df_from_sql(db_name = "pancreatic_enzyme_protocol", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "pancreatic_enzyme_protocol", tb_name = "pancreatic_enzyme_00")


if __name__ == "__main__":
    obj = PancreaticEnzyme00()
    obj.run()