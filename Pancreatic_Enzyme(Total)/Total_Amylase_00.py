from Base_ETL import BaseETL
import pandas as pd

class TotalAmylase00(BaseETL):

    def run(self):
        
        sql= '''
            SELECT DISTINCT
                CAST(환자번호 AS CHAR) AS 환자번호,
                원무접수ID,
                TA,
                검사시행일,
                검사시행시간
            FROM(
                SELECT
                    환자번호,
                    원무접수ID,
                    CASE
                        WHEN 검사코드 = 'B2610E' AND REGEXP_INSTR(검사결과, '<|>|=|(|)') = 0
                        THEN REPLACE(검사결과, '.0', '')
                        WHEN 검사코드 = 'B2610E' AND REGEXP_INSTR(검사결과, '<|>|=|(|)') != 0
                        THEN REPLACE(`검사결과-수치값`, '.0', '')
                    END AS TA,
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
            WHERE TA IS NOT NULL
        '''
            
        df = self.df_from_sql(db_name = "pancreatic_enzyme_protocol", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "pancreatic_enzyme_protocol", tb_name = "total_amylase_00")


if __name__ == "__main__":
    obj = TotalAmylase00()
    obj.run()