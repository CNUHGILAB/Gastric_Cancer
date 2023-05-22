from Base_ETL import BaseETL
import pandas as pd

class Registry24(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                b.환자번호 as ID,
                b.원무접수ID as Checkin,
                ESD as PRE_ESD,
                OP_Date,
                검사시행일
            FROM
                regstep03_00 a
                left join regstep13_00 b on a.ID = b.환자번호
            where
                Date(b.검사시행일) BETWEEN DATE_SUB(a.OP_Date, INTERVAL 59 DAY)
                AND a.OP_Date
            group by
                OP_Date
            order by
                ID,
                검사시행일
        '''
            
        df = self.df_from_sql(db_name = "registry_protocol", sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_24.xlsx')
        
        self.insert(df, db_name = "registry_protocol", tb_name = "registry_24")


if __name__ == "__main__":
    obj = Registry24()
    obj.run()