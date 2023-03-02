from base_etl import BaseETL


class PatientStep08(BaseETL):

    def run(
        self,
    ):
        sql= '''
            SELECT
                환자번호,
                max(`수진(진료)일`) as `수진(진료)일`
            FROM patient
            group by 환자번호
        '''  
        df = self.df_from_sql(db_name="gc_raw", sql=sql)
        self.insert(df, db_name="gc_protocol", tb_name="patient_step_08") 

    
if __name__ == "__main__":
    obj = PatientStep08()
    obj.run()