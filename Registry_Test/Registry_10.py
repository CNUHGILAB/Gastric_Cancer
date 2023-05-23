from Base_ETL import BaseETL

class Registry10(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                CAST(환자번호 AS CHAR) AS 환자번호,
                원무접수ID,
                CA199,
                검사시행일
            FROM(
                SELECT
                    환자번호,
                    원무접수ID,
                    CASE
                        WHEN (검사코드 = 'C4230' OR 검사코드 = 'D1670')
                        THEN 검사결과
                    END AS CA199,
                    STR_TO_DATE(검사시행일, '%%Y-%%m-%%d') AS 검사시행일
                FROM
                    raw_file_2012_2022.blood_test
                WHERE(
                    환자번호 IN (
                        SELECT
                            DISTINCT 환자번호
                        FROM raw_file_2012_2022.operation_record
                    )
                )
            ) c
            WHERE
                CA199 IS NOT NULL
        '''
        
        df = self.df_from_sql(db_name = "registry_test", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_10.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_test", tb_name = "registry_10")


if __name__ == "__main__":
    obj = Registry10()
    obj.run()