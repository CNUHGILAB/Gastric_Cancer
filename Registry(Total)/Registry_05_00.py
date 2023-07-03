from Base_ETL import BaseETL

class Registry05_00(BaseETL):

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
                        WHEN 검사코드 = 'B5210' OR 검사코드 = 'D1618'
                        THEN 검사결과
                    END AS CEA,
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
            WHERE CEA IS NOT NULL
        '''
        
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_08.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_05_00")


if __name__ == "__main__":
    obj = Registry05_00()
    obj.run()