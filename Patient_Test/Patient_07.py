import pandas as pd
from Base_ETL import BaseETL

class PatientStep07(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                # a : patient_03
                a.ID,
                a.CHKID,
                성별,
                AGE,
                # WEIGHT가 NULL 값이면 WEIGHT1 대체
                CASE
                    WHEN WEIGHT IS NULL
                    THEN WEIGHT1
                    ELSE WEIGHT
                END AS WEIGHT,
                # HEIGHT가 NULL 값이면 HEIGHT1 대체
                CASE
                    WHEN HEIGHT IS NULL
                    THEN HEIGHT1
                    ELSE HEIGHT
                END AS HEIGHT,
                # BMI 반올림
                ROUND(
                    (WEIGHT / ((HEIGHT * 0.01) * (HEIGHT * 0.01))), 1
                ) AS BMI,
                입원일,
                퇴원일,
                `주소(시,도)`,
                `주소(시,군,구)`,
                OP_DATE,
                `DATE`
            FROM
                patient_03 a
                LEFT JOIN patient_06 b ON (a.ID = b.ID) 
            # -- WHERE
            #     -- Date(`Date`) BETWEEN DATE_SUB(OP_DATE, INTERVAL 30 DAY) AND OP_DATE
            GROUP BY a.ID, OP_DATE
            ORDER BY ID, OP_DATE
        '''
        
        df = self.df_from_sql(db_name = "patient_test", sql = sql)
        
        self.insert(df, db_name = "patient_test", tb_name = "patient_07") 
    
if __name__ == "__main__":
    obj = PatientStep07()
    obj.run()