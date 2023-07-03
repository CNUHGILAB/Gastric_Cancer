from Base_ETL import BaseETL
import pandas as pd

class Registry23_04(BaseETL):

    def run(self):
        
        sql= '''
            SELECT DISTINCT
                st0.CHKID,
                st0.ID,
                OP_ADM,
                OP_DISC,
                st0.OP_DATE,
                재수술여부,
                CASE
                    WHEN `검사시행여부(PCD/PTBD/PTGBD)` IS NULL
                    THEN 'N'
                    ELSE `검사시행여부(PCD/PTBD/PTGBD)`
                END AS `검사시행여부(PCD/PTBD/PTGBD)`
            FROM registry_23_02 st0
                LEFT JOIN registry_23_03 st1 ON (
                    st0.CHKID = st1.CHKID
                    AND st0.ID = st1.ID
                    AND st0.OP_DATE = st1.OP_DATE
            )
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_23_04")


if __name__ == "__main__":
    obj = Registry23_04()
    obj.run()