from Base_ETL import BaseETL

class Registry08(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                CAST(환자번호 AS CHAR) AS 환자번호,
                원무접수ID,
                CEA,
                검사시행일
            FROM(
                SELECT
                    환자번호,
                    원무접수ID,
                    CASE
                        WHEN (검사코드 = 'B5210' OR 검사코드 = 'D1618')
                        THEN 검사결과
                    END AS CEA,
                    STR_TO_DATE(검사시행일, '%%Y-%%m-%%d') as 검사시행일
                FROM raw_file_2012_2022.blood_test
                WHERE(
                    환자번호 IN (
                        SELECT
                            DISTINCT 환자번호
                        FROM raw_file_2012_2022.operation_record
                    )
                )
            ) c
            WHERE
                CEA IS NOT NULL
        '''
        
        df = self.df_from_sql(db_name = "registry_protocol", sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_08.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_protocol", tb_name = "registry_08")


if __name__ == "__main__":
    obj = Registry08()
    obj.run()