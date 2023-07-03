from Base_ETL import BaseETL

class Registry07_00(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                CAST(환자번호 AS CHAR) AS 환자번호,
                원무접수ID,
                AFP,
                검사시행일
            FROM(
                SELECT
                    환자번호,
                    원무접수ID,
                    CASE
                        WHEN 검사코드 = 'B5202' OR 검사코드 = 'D1617'
                        THEN 검사결과
                    END AS AFP,
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
            WHERE AFP IS NOT NULL
        '''
        
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_12.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_07_00")


if __name__ == "__main__":
    obj = Registry07_00()
    obj.run()