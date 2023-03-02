import pandas as pd
import re
from base_etl import BaseETL

class EndoscopeStep05(BaseETL):

    def run(
        self,
    ):
        sql = '''
            SELECT 
                ID,
                CHKID,
                `Date`,
                검사결과,
                GROUP_CONCAT(DISTINCT endo SEPARATOR ",") as endo
            FROM 
                endoscopestep04
            GROUP BY 
                ID, Date
        '''
        data = self.df_from_sql(db_name="gc_protocol", sql=sql)
        # data.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/endoscope_AGC.xlsx')
        self.insert(data, db_name="gc_protocol", tb_name="endoscopestep05") 

if __name__ == "__main__":
    obj = EndoscopeStep05()
    obj.run()