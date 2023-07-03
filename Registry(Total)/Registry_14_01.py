# registry_23 참조 → 제외
from Base_ETL import BaseETL
import pandas as pd

class Registry14_01(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                b.환자번호 AS ID,
                b.원무접수ID AS CHKID,
                ESD AS PRE_ESD,
                OP_DATE,
                검사시행일
            FROM
                registry_02 a
                LEFT JOIN registry_15 b ON (
                    a.CHKID = b.원무접수ID
                    AND a.ID = b.환자번호
                )
            WHERE
                Date(b.검사시행일) < a.OP_DATE
            /*
            WHERE(
                Date(b.검사시행일) BETWEEN DATE_SUB(a.OP_Date, INTERVAL 59 DAY)
                AND a.OP_Date
            )
            */
            GROUP BY OP_DATE
            ORDER BY ID, 검사시행일
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_23.xlsx')
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_14_01")


if __name__ == "__main__":
    obj = Registry14_01()
    obj.run()