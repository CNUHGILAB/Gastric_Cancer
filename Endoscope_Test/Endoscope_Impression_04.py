from numpy import outer
import pandas as pd
import re
from Base_ETL import BaseETL

class EndoscopeImpression04(BaseETL):
    
    def run(self):
        
        sql = '''
            SELECT *,
                CASE
                    WHEN Stomach_EGC_Cancer IS NOT NULL
                    THEN REGEXP_REPLACE(Impression, "[^가-힣]", '')
                END AS Test
            FROM gc_protocol_test.endoscope_impression_03 
        '''
        
        data = self.df_from_sql(db_name = "gc_protocol_test", sql = sql)
        #print(data)
    
        #data.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/endoscope_egc_location.xlsx')
        self.insert(data, db_name = "gc_protocol", tb_name = "endoscope_impression_04") 

if __name__ == "__main__":
    obj = EndoscopeImpression04()
    obj.run()