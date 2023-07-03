from Base_ETL import BaseETL
import pandas as pd

class Registry14_02(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                b.ID,
                b.CHKID,
                endo AS PRE_ENDO,
                a.OP_DATE,
                Date
            FROM
                registry_02 a
                LEFT JOIN endoscope_total.pre_endoscope_05 b ON (
                    a.CHKID = b.CHKID
                    AND a.ID = b.ID
                )
            WHERE
                Date(b.`Date`) < a.OP_DATE
            /*
            WHERE
                Date(b.`Date`) BETWEEN DATE_SUB(a.OP_Date, INTERVAL 59 DAY)
                AND a.OP_Date
            */
            GROUP BY ID, OP_DATE
            ORDER BY ID, Date
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_24.xlsx')
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_14_02")


if __name__ == "__main__":
    obj = Registry14_02()
    obj.run()