from Base_ETL import BaseETL
import pandas as pd

class Registry27(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                CAST(환자번호 AS CHAR) AS 환자번호,
                원무접수ID,
                PA,
                검사시행일_DATE,
                검사시행일_TIME
            FROM(
                SELECT
                    환자번호,
                    원무접수ID,
                    CASE
                        WHEN 검사코드 = 'B2610'
                        THEN 검사결과
                    END AS PA,
                    STR_TO_DATE(검사시행일, '%%Y-%%m-%%d') AS 검사시행일_DATE,
                    DATE_FORMAT(검사시행일, '%%T') AS 검사시행일_TIME
                FROM
                    raw_data_total.blood_test
                WHERE(
                    원무접수ID IN (
                        SELECT
                            DISTINCT 원무접수ID
                        FROM raw_data_total.operation_record
                    )
                )
            ) b
            WHERE
                PA IS NOT NULL
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_27")


if __name__ == "__main__":
    obj = Registry27()
    obj.run()