import pandas as pd
from base_etl import BaseETL

class EndoscopeImpressionStep01(BaseETL):
    

    def run(
        self,
    ):
        sql1 = "SELECT ID, CHKID, DATE, Impression_1 as Impression FROM gc_db.newendoscope WHERE Impression_1 is not null"
        data1 = self.df_from_sql(db_name="gc_db", sql=sql1)
        
        sql2 = "SELECT ID, CHKID, DATE, Impression_2 as Impression FROM gc_db.newendoscope WHERE Impression_2 is not null"
        data2 = self.df_from_sql(db_name="gc_db", sql=sql2)
        
        sql3 = "SELECT ID, CHKID, DATE, Impression_3 as Impression FROM gc_db.newendoscope WHERE Impression_3 is not null"
        data3 = self.df_from_sql(db_name="gc_db", sql=sql3)
        
        sql4 = "SELECT ID, CHKID, DATE, Impression_4 as Impression FROM gc_db.newendoscope WHERE Impression_4 is not null"
        data4 = self.df_from_sql(db_name="gc_db", sql=sql4)
        
        sql5 = "SELECT ID, CHKID, DATE, Impression_5 as Impression FROM gc_db.newendoscope WHERE Impression_5 is not null"
        data5 = self.df_from_sql(db_name="gc_db", sql=sql5)
        
        sql6 = "SELECT ID, CHKID, DATE, Impression_6 as Impression FROM gc_db.newendoscope WHERE Impression_6 is not null"
        data6 = self.df_from_sql(db_name="gc_db", sql=sql6)
        
        datas = pd.concat([data1, data2, data3, data4, data5, data6], axis=0)
        datas = datas.sort_values(['ID','DATE'])
        data = datas.reset_index(drop= True)
        
        print(data)
        self.insert(data, db_name="gc_protocol", tb_name="endoscope_impression_step01") 

if __name__ == "__main__":
    obj = EndoscopeImpressionStep01()
    obj.run()