from Base_ETL import BaseETL
import pandas as pd

class PancreaticEnzyme05(BaseETL):

    def run(self):
        
        sql= '''
            SELECT DISTINCT *,
                CASE
                    WHEN `P.Amylase POD1` IS NOT NULL AND `T.Amylase POD1` IS NOT NULL
                    THEN ROUND(`P.Amylase POD1`/`T.Amylase POD1`, 1)
                    ELSE NULL
                END AS `P.Amylase/T.Amylase POD1`,
                CASE
                    WHEN `P.Amylase POD2` IS NOT NULL AND `T.Amylase POD2` IS NOT NULL
                    THEN ROUND(`P.Amylase POD2`/`T.Amylase POD2`, 1)
                    ELSE NULL
                END AS `P.Amylase/T.Amylase POD2`,
                CASE
                    WHEN `P.Amylase POD3` IS NOT NULL AND `T.Amylase POD3` IS NOT NULL
                    THEN ROUND(`P.Amylase POD3`/`T.Amylase POD3`, 1)
                    ELSE NULL
                END AS `P.Amylase/T.Amylase POD3`,
                CASE
                    WHEN `P.Amylase POD4` IS NOT NULL AND `T.Amylase POD4` IS NOT NULL
                    THEN ROUND(`P.Amylase POD4`/`T.Amylase POD4`, 1)
                    ELSE NULL
                END AS `P.Amylase/T.Amylase POD4`
            FROM pancreatic_enzyme_04
        '''
            
        df = self.df_from_sql(db_name = "pancreatic_enzyme_protocol", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "pancreatic_enzyme_protocol", tb_name = "pancreatic_enzyme_05")


if __name__ == "__main__":
    obj = PancreaticEnzyme05()
    obj.run()