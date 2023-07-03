from Base_ETL import BaseETL
import pandas as pd

class Registry15_01(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                b.환자번호 AS ID,
                `ASA Score` AS ASA,
                a.OP_DATE,
                수술일 AS OP_DATE_1
            FROM
                registry_02 a
                LEFT JOIN registry_15_00 b ON (
                    a.ID = b.환자번호
                    AND a.OP_Date = b.수술일
                )
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_15_01")


if __name__ == "__main__":
    obj = Registry15_01()
    obj.run()