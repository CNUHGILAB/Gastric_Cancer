from Base_ETL import BaseETL
import pandas as pd

class Registry27(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                CHKID,
                ID,
                OP_ADM,
                OP_DISC,
                Op_Date
            FROM registry_01
            WHERE (CHKID, ID, Op_Date) IN (
                SELECT
                    CHKID,
                    ID,
                    Op_Date
                FROM registry_03
            )
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_27")


if __name__ == "__main__":
    obj = Registry27()
    obj.run()