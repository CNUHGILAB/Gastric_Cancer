from Base_ETL import BaseETL
import pandas as pd

class PancreaticEnzyme02(BaseETL):

    def run(self):
        
        sql= '''
            SELECT DISTINCT
                pe.CHKID,
                pe.ID,
                pe.Op_Date,
                `P.Amylase POD1`,
                `P.Amylase POD2`,
                `P.Amylase POD3`,
                `P.Amylase POD4`,
                `T.Amylase POD1`,
                `T.Amylase POD2`,
                `T.Amylase POD3`,
                `T.Amylase POD4`,
                `Lipase POD1`,
                `Lipase POD2`,
                `Lipase POD3`,
                `Lipase POD4`,
                `WBC POD1`,
                `WBC POD2`,
                `WBC POD3`,
                `WBC POD4`
            FROM pancreatic_enzyme_01 pe
                LEFT JOIN wbc_14 wbc ON (
                    pe.CHKID = wbc.CHKID
                    AND pe.ID = wbc.ID
                    AND pe.Op_Date = wbc.Op_Date
                )
        '''
            
        df = self.df_from_sql(db_name = "pancreatic_enzyme_protocol", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "pancreatic_enzyme_protocol", tb_name = "pancreatic_enzyme_02")


if __name__ == "__main__":
    obj = PancreaticEnzyme02()
    obj.run()