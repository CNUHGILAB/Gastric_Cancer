import pandas as pd
import re
from Base_ETL import BaseETL

class PreEndoscope05(BaseETL):

    def run(self):
        sql = '''
            SELECT 
                ID,
                CHKID,
                `Date`,
                검사결과,
                GROUP_CONCAT(DISTINCT Endo SEPARATOR ",") AS Endo
            FROM pre_endoscope_04
            GROUP BY ID, Date
        '''
        
        data = self.df_from_sql(db_name = "endoscope_protocol", sql = sql)
        # data.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/endoscope_AGC.xlsx')
        
        self.insert(data, db_name = "endoscope_protocol", tb_name = "pre_endoscope_05") 


if __name__ == "__main__":
    obj = PreEndoscope05()
    obj.run()