import pandas as pd
from base_etl import BaseETL


class PatientStep07(BaseETL):

    def run(
        self,
    ):
        sql= '''
            SELECT
                a.ID,
                a.CHKID,
                성별,
                age,
                case
                when weight is null then weight1
                else weight
                end as weight,
                case when height is null then height1
                else height
                end as height,
                ROUND( (
                        weight / ( (height * 0.01) * (height * 0.01))
                    ),
                    1
                ) as BMI,
                입원일,
                퇴원일,
                `주소(시,도)`,
                `주소(시,군,구)`,
                OP_DATE,
                `Date`
            FROM
                patient_step_03 a
                left join patient_step_06 b on (a.ID = b.ID) 
            # -- WHERE
            #     -- Date(`Date`) BETWEEN DATE_SUB(OP_DATE, INTERVAL 30 DAY) AND OP_DATE
            GROUP BY a.ID, OP_DATE
            ORDER BY ID, OP_DATE
        '''   
        df = self.df_from_sql(db_name="gc_protocol", sql=sql)
        self.insert(df, db_name="gc_protocol", tb_name="patient_step_07") 

    
if __name__ == "__main__":
    obj = PatientStep07()
    obj.run()