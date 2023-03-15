from base_etl import BaseETL


class PatientStep10(BaseETL):

    def run(
        self,
    ):
        sql= '''
            SELECT
                ID,
                CHKID,
                성별 AS SEX,
                age AS OP_AGE,
                height AS HT,
                weight AS WT,
                BMI,
                `주소(시,도)` AS ADR_1,
                `주소(시,군,구)` AS ADR_2,
                DATEDIFF(
                    STR_TO_DATE(`수진(진료)일`, '%%Y-%%m-%%d'),
                    STR_TO_DATE(첫진단일, '%%Y-%%m-%%d')
                ) as FP,
                입원일 AS OP_ADM,
                퇴원일 AS OP_DISC,
                OP_DATE
            FROM
                patient_step_07 a
                left join patient_step_08 b on (a.ID = b.환자번호)
                left join patient_step_09 c on (a.ID = c.환자번호)
            ORDER BY ID, OP_DATE
        '''  
        df = self.df_from_sql(db_name="gc_protocol", sql=sql)
        self.insert(df, db_name="gc_protocol", tb_name="patient_step_10") 

    
if __name__ == "__main__":
    obj = PatientStep10()
    obj.run()