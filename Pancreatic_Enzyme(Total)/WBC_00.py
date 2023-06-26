from Base_ETL import BaseETL
import pandas as pd

class WBC00(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                DISTINCT
                    CAST(환자번호 AS CHAR) AS 환자번호,
                    원무접수ID,
                    검사코드,
                    WBC,
                    검사시행일,
                    검사시행시간
            FROM(
                SELECT
                    환자번호,
                    원무접수ID,
                    검사코드,
                    CASE
                        WHEN (검사코드 = 'B1050' OR 검사코드 = 'B004114E' OR 검사코드 = 'B1050E') AND REGEXP_INSTR(검사결과, '<|>|=|(|)') = 0
                        THEN 검사결과
                        WHEN (검사코드 = 'B1050' OR 검사코드 = 'B004114E' OR 검사코드 = 'B1050E') AND REGEXP_INSTR(검사결과, '<|>|=|(|)') != 0
                        THEN `검사결과-수치값`
                    END AS WBC,
                    STR_TO_DATE(검사시행일, '%%Y-%%m-%%d') AS 검사시행일,
                    DATE_FORMAT(검사시행일, '%%T') AS 검사시행시간
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
            WHERE WBC IS NOT NULL
        '''
            
        df = self.df_from_sql(db_name = "pancreatic_enzyme_protocol", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "pancreatic_enzyme_protocol", tb_name = "wbc_00")


if __name__ == "__main__":
    obj = WBC00()
    obj.run()