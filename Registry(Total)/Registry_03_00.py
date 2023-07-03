from Base_ETL import BaseETL

class Registry03_00(BaseETL):

    def run(self):

        sql = '''
            SELECT DISTINCT
                원무접수ID,
                CAST(환자번호 AS CHAR) AS 환자번호,
                Alb,
                검사시행일
            FROM(
                SELECT
                    환자번호,
                    원무접수ID,
                    CASE
                        WHEN (검사코드 = 'B2510E' OR 검사코드 = 'B2510')
                        THEN 검사결과
                    END AS Alb,
                    STR_TO_DATE(검사시행일, '%%Y-%%m-%%d') AS 검사시행일
                FROM raw_data_total.blood_test
                WHERE(
                    원무접수ID IN (
                        SELECT
                            DISTINCT 원무접수ID
                        FROM raw_data_total.operation_record
                    )
                )
            ) b
            WHERE Alb IS NOT NULL
        '''

        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_04.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_03_00")


if __name__ == "__main__":
    obj = Registry03_00()
    obj.run()