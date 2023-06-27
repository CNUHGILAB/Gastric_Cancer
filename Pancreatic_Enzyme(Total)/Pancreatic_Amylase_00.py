from Base_ETL import BaseETL
import pandas as pd

class PancreaticAmylase00(BaseETL):

    def run(self):
        
        sql= '''
            SELECT DISTINCT
                원무접수ID,
                CAST(환자번호 AS CHAR) AS 환자번호,
                PA,
                검사시행일
            FROM(
                SELECT
                    환자번호,
                    원무접수ID,
                    CASE
                        WHEN 검사코드 = 'B2610' AND REGEXP_INSTR(검사결과, '<|>|=|(|)') = 0
                        THEN REPLACE(검사결과, '.0', '')
                        WHEN 검사코드 = 'B2610' AND REGEXP_INSTR(검사결과, '<|>|=|(|)') != 0
                        THEN REPLACE(`검사결과-수치값`, '.0', '')
                    END AS PA,
                    검사시행일
                FROM
                    raw_data_total.blood_test
                WHERE(
                    원무접수ID IN (
                        SELECT
                            DISTINCT 원무접수ID
                        FROM raw_data_total.operation_record
                    )
                )
            ) pa
            WHERE PA IS NOT NULL
        '''
            
        df = self.df_from_sql(db_name = "pancreatic_enzyme_protocol", sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Pancreatic_Enzyme(Total)/Pancreatic_Amylase_00.xlsx')
        
        self.insert(df, db_name = "pancreatic_enzyme_protocol", tb_name = "pancreatic_amylase_00")


if __name__ == "__main__":
    obj = PancreaticAmylase00()
    obj.run()