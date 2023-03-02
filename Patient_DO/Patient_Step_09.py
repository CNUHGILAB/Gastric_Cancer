from base_etl import BaseETL


class PatientStep09(BaseETL):

    def run(
        self,
    ):
        sql= '''
            SELECT
                환자번호,
                ICD10코드,
                min(첫진단일) as 첫진단일
            FROM (
                    SELECT
                        원무접수ID,
                        환자번호,
                        ICD10코드,
                        첫진단일
                    FROM (
                            SELECT
                                원무접수ID,
                                환자번호,
                                ICD10코드,
                                STR_TO_DATE (
                                    case
                                        when instr(ICD10코드, 'C16') = 1 then 진단일자
                                    end,
                                    '%%Y-%%m-%%d'
                                ) as 첫진단일
                            FROM
                                diagnosis
                        ) c
                    WHERE
                        첫진단일 is not null
                ) c
            group by 환자번호
        '''  
        df = self.df_from_sql(db_name="gc_raw", sql=sql)
        self.insert(df, db_name="gc_protocol", tb_name="patient_step_09") 

    
if __name__ == "__main__":
    obj = PatientStep09()
    obj.run()