import pandas as pd
from base_etl import BaseETL


class PatientStep06(BaseETL):

    def run(
        self,
    ):
        sql= '''
            SELECT
                a.ID,
                a.CHKID,
                a.Date,
                weight,
                height
            FROM
                patient_step_04 a
                left join patient_step_05 b on (
                    a.ID = b.ID
                    and a.CHKID = b.CHKID
                    and a.Date = b.Date
                )
            WHERE
                nullif(height, '') is not null
            ORDER BY ID, Date DESC
        '''    
        df = self.df_from_sql(db_name="gc_protocol", sql=sql)
        self.insert(df, db_name="gc_protocol", tb_name="patient_step_06") 

    
if __name__ == "__main__":
    obj = PatientStep06()
    obj.run()