from Base_ETL import BaseETL
import pandas as pd

class Registry30(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                CHKID,
                ID,
                CASE
                    WHEN 검사시행일 BETWEEN DATE_ADD(Op_Date, INTERVAL 1 DAY) AND OP_DISC IS NOT NULL
                    THEN 'Y'
                    ELSE 'N'
                END AS `Cx(Ⅲa) Endoscope 검사여부`
            FROM registry_29
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_30")


if __name__ == "__main__":
    obj = Registry30()
    obj.run()