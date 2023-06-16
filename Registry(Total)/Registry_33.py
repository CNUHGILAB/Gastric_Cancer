from Base_ETL import BaseETL
import pandas as pd

class Registry33(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                DISTINCT
                    CAST(환자번호 AS CHAR) AS 환자번호,
                    원무접수ID,
                    검사코드,
                    WBC,
                    검사시행일_DATE,
                    검사시행일_TIME
            FROM(
                SELECT
                    환자번호,
                    원무접수ID,
                    검사코드,
                    CASE
                        WHEN 검사코드 = 'B1050' OR 검사코드 = 'B004114E' OR 검사코드 = 'B1050E'
                        THEN 검사결과
                    END AS WBC,
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
                WBC IS NOT NULL
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_33")


if __name__ == "__main__":
    obj = Registry33()
    obj.run()