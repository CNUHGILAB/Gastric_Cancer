from Base_ETL import BaseETL
import pandas as pd

class Registry26(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                b.환자번호 as ID,
                concat(`EMR ASA class`, `차세대 ASA class`) as ASA,
                a.OP_Date,
                수술일 as OP_DATE_1
            FROM
                regstep03_00 a
                left join regstep15_00  b on (a.ID = b.환자번호 and a.OP_Date = b.수술일)
        '''
            
        df = self.df_from_sql(db_name = "registry_protocol", sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "registry_protocol", tb_name = "registry_26")


if __name__ == "__main__":
    obj = Registry26()
    obj.run()