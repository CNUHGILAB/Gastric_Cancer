from Base_ETL import BaseETL

class Patient09(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                환자번호,
                ICD10코드,
                MIN(첫진단일) AS 첫진단일
            FROM(
                SELECT
                    원무접수ID,
                    환자번호,
                    ICD10코드,
                    첫진단일
                FROM(
                    SELECT
                        원무접수ID,
                        환자번호,
                        ICD10코드,
                        # 날짜형 변형
                        STR_TO_DATE(
                            CASE
                                WHEN INSTR(BINARY ICD10코드, 'C16') = 1
                                THEN 진단일자
                            END, '%%Y-%%m-%%d'
                        ) AS 첫진단일
                    FROM diagnosis
                ) c
                WHERE 첫진단일 IS NOT NULL
            ) c
            GROUP BY 환자번호
        '''
        
        df = self.df_from_sql(db_name = "gc_raw_test", sql = sql)
        
        self.insert(df, db_name = "patient_test", tb_name = "patient_09") 
    
if __name__ == "__main__":
    obj = Patient09()
    obj.run()