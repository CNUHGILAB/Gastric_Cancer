from Base_ETL import BaseETL
import pandas as pd

class Registry19_02(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                CHKID,
                ID,
                OP_DATE,
                OP_ADM,
                OP_DISC,
                GROUP_CONCAT(입원일) AS RE_OP_ADM,
                GROUP_CONCAT(퇴원일) AS RE_OP_DISC
            FROM registry_19_01
            GROUP BY ID, CHKID, OP_DATE, OP_ADM, OP_DISC
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_19_02")


if __name__ == "__main__":
    obj = Registry19_02()
    obj.run()