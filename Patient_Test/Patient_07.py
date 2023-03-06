import pandas as pd
from Base_ETL import BaseETL

class Patient07(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                # a : patient_03
                a.ID,
                a.CHKID,
                성별,
                Age,
                # Weight가 NULL 값이면 Weight1 대체
                CASE
                    WHEN Weight IS NULL
                    THEN Weight1
                    ELSE Weight
                END AS Weight,
                # Height가 NULL 값이면 Height1 대체
                CASE
                    WHEN Height IS NULL
                    THEN Height1
                    ELSE Height
                END AS Height,
                # BMI 반올림
                ROUND(
                    (Weight / ((Height * 0.01) * (Height * 0.01))), 1
                ) AS BMI,
                입원일,
                퇴원일,
                `주소(시,도)`,
                `주소(시,군,구)`,
                OP_Date,
                `Date`
            FROM
                patient_03 a
                LEFT JOIN patient_06 b ON (a.ID = b.ID) 
            # -- WHERE
            #     -- Date(`Date`) BETWEEN DATE_SUB(OP_Date, INTERVAL 30 DAY) AND OP_Date
            GROUP BY a.ID, OP_Date
            ORDER BY ID, OP_Date
        '''
        
        df = self.df_from_sql(db_name = "patient_test", sql = sql)
        
        self.insert(df, db_name = "patient_test", tb_name = "patient_07") 
    
if __name__ == "__main__":
    obj = Patient07()
    obj.run()