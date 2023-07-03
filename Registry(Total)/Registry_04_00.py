from Base_ETL import BaseETL

class Registry04_00(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                CAST(환자번호 AS CHAR) AS 환자번호,
                원무접수ID,
                Hb,
                검사시행일
            FROM(
                SELECT
                    환자번호,
                    원무접수ID,
                    CASE
                        WHEN 검사코드 = 'B1010E' OR 검사코드 = 'B1010' OR 검사코드 = 'C38160P'
                        THEN 검사결과
                    END AS Hb,
                    STR_TO_DATE(검사시행일, '%%Y-%%m-%%d') AS 검사시행일
                FROM raw_data_total.blood_test
                WHERE(
                    원무접수ID IN (
                        SELECT
                            DISTINCT 원무접수ID
                        FROM raw_data_total.operation_record
                    )
                )
            ) c
            WHERE Hb IS NOT NULL
        '''
        
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_06.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_04_00")


if __name__ == "__main__":
    obj = Registry04_00()
    obj.run()