from base_etl import BaseETL


class PatientStep02(BaseETL):

    def run(
        self,
    ):
        sql= '''
            SELECT
                DISTINCT 원무접수ID,
                환자번호,
                수술일자 as OP_DATE
            FROM operation
            WHERE 원무접수ID in (
                    SELECT
                        DISTINCT 원무접수ID
                    FROM
                        operation_record
                )
                AND `수술 진료과코드` = 'GS'
            ORDER BY 환자번호
        '''  
        df = self.df_from_sql(db_name="gc_raw", sql=sql)
        self.insert(df, db_name="gc_protocol", tb_name="patient_step_02") 

    
if __name__ == "__main__":
    obj = PatientStep02()
    obj.run()