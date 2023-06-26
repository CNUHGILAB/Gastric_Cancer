from Base_ETL import BaseETL
import pandas as pd

class Registry40(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                DISTINCT
                    st0.CHKID,
                    st0.ID,
                    CASE
                        WHEN 검사명 IS NOT NULL
                        THEN 'Y'
                        ELSE 'N'
                    END AS `검사시행여부(PCD/PTBD/PTGBD)`
            FROM registry_01 st0
                LEFT JOIN registry_39 st1 ON (
                    st0.CHKID = st1.원무접수ID
                    AND st0.ID = st1.환자번호
            )
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_40")


if __name__ == "__main__":
    obj = Registry40()
    obj.run()