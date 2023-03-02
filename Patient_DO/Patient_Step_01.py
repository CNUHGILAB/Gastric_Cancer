from base_etl import BaseETL


class PatientStep01(BaseETL):

    def run(
        self,
    ):
        sql= '''
            SELECT 환자번호, 원무접수ID, 성별,
            replace (수진당시나이, 'yrs', '') as age,
                입원일,
                퇴원일,
                `주소(시,도)`,
                `주소(시,군,구)`,
                `신장(cm)` as height1,
                `체중(kg)` as weight1
            FROM patient
            ORDER BY 환자번호
        '''  
        df = self.df_from_sql(db_name="gc_raw", sql=sql)
        self.insert(df, db_name="gc_protocol", tb_name="patient_step_01") 

    
if __name__ == "__main__":
    obj = PatientStep01()
    obj.run()