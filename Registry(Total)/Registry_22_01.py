from Base_ETL import BaseETL
import pandas as pd

class Registry22_01(BaseETL):

    def run(self):
        
        sql= '''
            SELECT DISTINCT
                CHKID,
                st0.ID,
                OP_ADM,
                OP_DISC,
                OP_DATE,
                CASE
                    WHEN OP_ADM < 수술일자 AND 수술일자 < OP_DISC AND OP_DATE < 수술일자
                    THEN 'Y'
                    ELSE 'N'
                END AS `Exp.Lapa 여부`
            FROM registry_01_04 st0
                LEFT JOIN registry_22_00 st1 ON (
                    st0.ID = st1.환자번호
            )
            /*
            SELECT
                원무접수ID,
                환자번호,
                수술일자
            FROM registry_42
            WHERE (환자번호, 수술일자) NOT IN (
                SELECT
                    ID,
                    OP_Date
                FROM registry_01
            )
            */
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_22_01")


if __name__ == "__main__":
    obj = Registry22_01()
    obj.run()