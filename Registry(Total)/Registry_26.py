from Base_ETL import BaseETL
import pandas as pd

class Registry26(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                b.환자번호 AS ID,
                CONCAT(`EMR ASA class`, `차세대 ASA class`) AS ASA,
                a.OP_Date,
                수술일 AS OP_DATE_1
            FROM
                registry_03 a
                LEFT JOIN registry_25 b ON (a.ID = b.환자번호 AND a.OP_Date = b.수술일)
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_26")


if __name__ == "__main__":
    obj = Registry26()
    obj.run()