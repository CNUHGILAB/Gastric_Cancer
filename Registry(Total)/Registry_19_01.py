from Base_ETL import BaseETL
import pandas as pd

class Registry19_01(BaseETL):

    def run(self):
        
        sql= '''
            SELECT DISTINCT
                CHKID,
                st0.ID,
                OP_DATE,
                OP_ADM,
                OP_DISC,
                CASE
                    WHEN ID = 환자번호 AND CHKID != 원무접수ID AND 입원일 BETWEEN OP_DISC AND DATE_ADD(OP_DISC, INTERVAL 30 DAY)
                    THEN 입원일
                    ELSE NULL
                END AS 입원일,
                /*
                CASE
                    WHEN ID = 환자번호 AND OP_ADM != 입원일 AND 입원일 > OP_ADM AND OP_DISC != 퇴원일 AND 퇴원일 > OP_DISC
                        AND 입원일 BETWEEN DATE_ADD(Op_Date, INTERVAL 1 DAY) AND DATE_ADD(Op_Date, INTERVAL 30 DAY)
                    THEN 입원일
                    ELSE NULL
                END AS 입원일,
                */
                퇴원일
            FROM registry_01_04 st0
                LEFT JOIN registry_19_00 st1 ON (
                st0.ID = st1.환자번호
            )
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_19_01")


if __name__ == "__main__":
    obj = Registry19_01()
    obj.run()