from Base_ETL import BaseETL
import pandas as pd

class Registry23_02(BaseETL):

    def run(self):
        
        sql= '''
            SELECT DISTINCT
                CHKID,
                ID,
                CASE
                    WHEN INSTR(OP_DATE, ',') != 0
                    THEN REGEXP_SUBSTR(OP_DATE, '[^,]+', 1, 1)
                    WHEN INSTR(OP_DATE, ',') = 0
                    THEN OP_DATE
                    ELSE OP_DATE
                END AS OP_DATE,
                CASE
                    WHEN REGEXP_SUBSTR(OP_DATE, '[^,]+', 1, 2) BETWEEN DATE_ADD(REGEXP_SUBSTR(OP_DATE, '[^,]+', 1, 1), INTERVAL 1 DAY) AND DATE_ADD(REGEXP_SUBSTR(OP_DATE, '[^,]+', 1, 1), INTERVAL 30 DAY)
                    THEN 'Y'
                    WHEN INSTR(OP_DATE, ',') = 0
                    THEN 'N'
                    ELSE 'N'
                END AS 재수술여부
            FROM registry_23_01
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_23_02")


if __name__ == "__main__":
    obj = Registry23_02()
    obj.run()