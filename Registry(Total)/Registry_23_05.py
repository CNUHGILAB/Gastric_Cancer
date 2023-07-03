from Base_ETL import BaseETL
import pandas as pd

class Registry23_05(BaseETL):

    def run(self):
        
        sql= '''
            SELECT DISTINCT
                st0.CHKID,
                st0.ID,
                OP_ADM,
                OP_DISC,
                st0.OP_DATE,
                재수술여부,
                `검사시행여부(PCD/PTBD/PTGBD)`,
                CASE
                    WHEN 사망여부 IS NULL
                    THEN 'N'
                    ELSE 사망여부
                END AS 사망여부
            FROM registry_23_04 st0
                LEFT JOIN registry_17_02 st1 ON (
                    st0.CHKID = st1.CHKID
                    AND st0.ID = st1.ID
                    AND st0.OP_DATE = st1.OP_DATE
            )
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_23_05")


if __name__ == "__main__":
    obj = Registry23_05()
    obj.run()