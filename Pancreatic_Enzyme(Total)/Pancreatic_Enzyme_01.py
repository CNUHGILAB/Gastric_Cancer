from Base_ETL import BaseETL
import pandas as pd

class PancreaticEnzyme01(BaseETL):

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
                `Lipase POD4`
            FROM pancreatic_enzyme_00 pe
                LEFT JOIN lipase_06 lipase ON (
                    pe.CHKID = lipase.CHKID
                    AND pe.ID = lipase.ID
                    AND pe.Op_Date = lipase.Op_Date
                )
        '''
            
        df = self.df_from_sql(db_name = "pancreatic_enzyme_protocol", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "pancreatic_enzyme_protocol", tb_name = "pancreatic_enzyme_01")


if __name__ == "__main__":
    obj = PancreaticEnzyme01()
    obj.run()