from base_etl import BaseETL


class PatientStep03(BaseETL):

    def run(
        self,
    ):
        sql= '''
            SELECT
                a.환자번호 as ID,
                a.원무접수ID as CHKID,
                height1,
                weight1,
                성별,
                age,
                입원일,
                퇴원일,
                `주소(시,도)`,
                `주소(시,군,구)`,
                OP_DATE
            FROM
                patient_step_02 a
                left join patient_step_01 b on (
                    a.환자번호 = b.환자번호
                    and a.원무접수ID = b.원무접수ID
                )
        '''  
        df = self.df_from_sql(db_name="gc_protocol", sql=sql)
        self.insert(df, db_name="gc_protocol", tb_name="patient_step_03") 

    
if __name__ == "__main__":
    obj = PatientStep03()
    obj.run()