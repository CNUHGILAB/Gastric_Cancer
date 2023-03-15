from Base_ETL import BaseETL

class Patient01(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                환자번호,
                원무접수ID,
                성별,
                REPLACE(수진당시나이, 'yrs', '') AS Age,
                입원일,
                퇴원일,
                `주소(시,도)`,
                `주소(시,군,구)`,
                `신장(cm)` AS Height1,
                `체중(kg)` AS Weight1
            FROM patient
            # 환자번호로 정렬
            ORDER BY 환자번호
        '''  
        df = self.df_from_sql(db_name = "gc_raw", sql = sql)
        
        self.insert(df, db_name = "patient_protocol", tb_name = "patient_01") 


if __name__ == "__main__":
    obj = Patient01()
    obj.run()