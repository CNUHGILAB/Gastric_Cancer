from Base_ETL import BaseETL
import pandas as pd

class Registry23_06(BaseETL):

    def run(self):
        
        sql= '''
            SELECT DISTINCT
                st0.CHKID,
                st0.ID,
                OP_ADM,
                OP_DISC,
                OP_DATE,
                재수술여부,
                `검사시행여부(PCD/PTBD/PTGBD)`,
                사망여부,
                CASE
                    WHEN ICU입실여부 IS NULL
                    THEN 'N'
                    ELSE ICU입실여부
                END AS ICU입실여부
            FROM registry_23_05 st0
                LEFT JOIN registry_21_01 st1 ON (
                    st0.CHKID = st1.CHKID
                    AND st0.ID = st1.ID
            )
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_23_06")


if __name__ == "__main__":
    obj = Registry23_06()
    obj.run()