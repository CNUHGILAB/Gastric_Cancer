import pandas as pd
from Base_ETL import BaseETL

class Patient06(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                # a : patient_04
                a.ID,
                a.CHKID,
                a.Date,
                # patient_04
                Weight,
                # patient_05
                Height
            FROM
                patient_04 a
                LEFT JOIN patient_05 b ON (
                    a.ID = b.ID
                    AND a.CHKID = b.CHKID
                    AND a.Date = b.Date
                )
            WHERE NULLIF(Height, '') IS NOT NULL
            ORDER BY ID, Date DESC
        '''
        
        df = self.df_from_sql(db_name = "patient_protocol", sql = sql)
        
        self.insert(df, db_name = "patient_protocol", tb_name = "patient_06") 


if __name__ == "__main__":
    obj = Patient06()
    obj.run()