from Base_ETL import BaseETL
import pandas as pd

class Registry64(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                DISTINCT
                    st0.ID,
                    Op_Date,
                    입원일
            FROM registry_01 st0
                LEFT JOIN registry_63 st1 ON (
                st0.ID = st1.환자번호
            )
            WHERE (
                OP_ADM != 입원일
            )
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_64")


if __name__ == "__main__":
    obj = Registry64()
    obj.run()