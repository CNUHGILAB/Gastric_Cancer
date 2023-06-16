from Base_ETL import BaseETL
import pandas as pd

class Registry34(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                a.ID,
                원무접수ID AS CHKID,
                OP_Date,
                검사코드,
                검사시행일_DATE,
                검사시행일_TIME,
                WBC
            FROM
                registry_03 a
                LEFT JOIN registry_33 b ON a.ID = b.환자번호
            WHERE(
                검사시행일_DATE BETWEEN DATE_ADD(OP_Date, INTERVAL 1 DAY)
                AND DATE_ADD(OP_Date, INTERVAL 30 DAY)
            )
            /*
            GROUP BY
                ID, OP_Date
            */
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_34")


if __name__ == "__main__":
    obj = Registry34()
    obj.run()