from Base_ETL import BaseETL
import pandas as pd

class Registry25(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                b.ID,
                b.CHKID,
                endo as PRE_ENDO,
                a.OP_Date,
                Date
            FROM
                regstep03_00 a
                left join endoscopestep05 b on a.ID = b.ID
            where
                Date(b.`Date`) BETWEEN DATE_SUB(a.OP_Date, INTERVAL 59 DAY)
                AND a.OP_Date
            group by
                ID, OP_Date 
            order by
                ID,
                Date
        '''
            
        df = self.df_from_sql(db_name = "registry_protocol", sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_25.xlsx')
        
        self.insert(df, db_name = "registry_protocol", tb_name = "registry_25")


if __name__ == "__main__":
    obj = Registry25()
    obj.run()