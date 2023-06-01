from Base_ETL import BaseETL
import pandas as pd

class Registry24(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                b.ID,
                b.CHKID,
                endo AS PRE_ENDO,
                a.OP_Date,
                Date
            FROM
                registry_03 a
                LEFT JOIN endoscope_protocol.pre_endoscope_05 b ON a.ID = b.ID
            WHERE
                Date(b.`Date`) < a.OP_Date
            /*
            WHERE
                Date(b.`Date`) BETWEEN DATE_SUB(a.OP_Date, INTERVAL 59 DAY)
                AND a.OP_Date
            */
            GROUP BY
                ID, OP_Date
            ORDER BY
                ID, Date
        '''
            
        df = self.df_from_sql(db_name = "registry_test", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_24.xlsx')
        
        self.insert(df, db_name = "registry_test", tb_name = "registry_24")


if __name__ == "__main__":
    obj = Registry24()
    obj.run()