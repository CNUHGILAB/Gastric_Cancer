from Base_ETL import BaseETL
import pandas as pd

class Registry29(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                a.CHKID,
                a.ID,
                OP_ADM,
                OP_DISC,
                Op_Date,
                검사시행일
            FROM registry_27 a
                LEFT JOIN registry_28 b ON (
                    a.CHKID = b.원무접수ID
                    AND a.ID = b.환자번호
                )
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_29")


if __name__ == "__main__":
    obj = Registry29()
    obj.run()