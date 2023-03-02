import pandas as pd
from Base_ETL import BaseETL

class Patient06(BaseETL):

    def run(self):
        sql= '''
            SELECT
                # a : patient_04
                a.ID,
                a.CHKID,
                a.DATE,
                # patient_04
                WEIGHT,
                # patient_05
                HEIGHT
            FROM
                patient_04 a
                LEFT JOIN patient_05 b ON (
                    a.ID = b.ID
                    AND a.CHKID = b.CHKID
                    AND a.DATE = b.DATE
                )
            WHERE
                NULLIF(HEIGHT, '') IS NOT NULL
            ORDER BY ID, DATE DESC
        '''
        
        df = self.df_from_sql(db_name = "patient_test", sql = sql)
        
        self.insert(df, db_name = "patient_test", tb_name = "patient_06") 
    
if __name__ == "__main__":
    obj = Patient06()
    obj.run()