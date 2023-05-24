# registry_23 참조 → 제외
from Base_ETL import BaseETL
import pandas as pd

class Registry24(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                b.환자번호 AS ID,
                b.원무접수ID AS Checkin,
                ESD AS PRE_ESD,
                OP_Date,
                검사시행일
            FROM
                registry_03 a
                LEFT JOIN registry_23 b on a.ID = b.환자번호
            WHERE
                Date(b.검사시행일) < a.OP_Date
            /*
            WHERE(
                Date(b.검사시행일) BETWEEN DATE_SUB(a.OP_Date, INTERVAL 59 DAY)
                AND a.OP_Date
            )
            */
            GROUP BY
                OP_Date
            ORDER BY
                ID, 검사시행일
        '''
            
        df = self.df_from_sql(db_name = "registry_test", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_24.xlsx')
        
        self.insert(df, db_name = "registry_test", tb_name = "registry_24")


if __name__ == "__main__":
    obj = Registry24()
    obj.run()