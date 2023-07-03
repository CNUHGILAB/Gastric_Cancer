from Base_ETL import BaseETL
import pandas as pd

class Registry16_01(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                a.CHKID,
                a.ID,
                OP_ADM,
                OP_DISC,
                OP_DATE,
                검사시행일
            FROM registry_01_04 a
                LEFT JOIN registry_16_00 b ON (
                    a.CHKID = b.원무접수ID
                    AND a.ID = b.환자번호
                )
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_16_01")


if __name__ == "__main__":
    obj = Registry16_01()
    obj.run()