from numpy import outer
import pandas as pd
import re
from base_etl import BaseETL

class EndoscopeImpressionStep04(BaseETL):
    

    def run(
        self,
    ):
        sql = '''
            SELECT *, CASE WHEN Stomach_EGC_Cancer IS NOT NULL THEN REGEXP_REPLACE(Impression,"[^가-힣]",'') END AS test FROM gc_protocol.endoscope_impression_step03 
        '''
        data = self.df_from_sql(db_name="gc_protocol", sql=sql)
        print(data)
    
        
        data.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/endoscope_egc_location.xlsx')
        # self.insert(data, db_name="gc_protocol", tb_name="endoscope_impression_step04") 

if __name__ == "__main__":
    obj = EndoscopeImpressionStep04()
    obj.run()