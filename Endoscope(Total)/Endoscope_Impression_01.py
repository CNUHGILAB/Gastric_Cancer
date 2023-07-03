import pandas as pd
from Base_ETL import BaseETL

class EndoscopeImpression01(BaseETL):
    
    def run(self):
        
        sql1 = "SELECT `ID`, CHKID, DATE, Impression_1 AS Impression FROM gc_database_total.endoscope WHERE Impression_1 IS NOT NULL"
        data1 = self.df_from_sql(db_name = "gc_database_total", sql = sql1)
        
        sql2 = "SELECT `ID`, CHKID, DATE, Impression_2 AS Impression FROM gc_database_total.endoscope WHERE Impression_2 IS NOT NULL"
        data2 = self.df_from_sql(db_name = "gc_database_total", sql = sql2)
        
        sql3 = "SELECT `ID`, CHKID, DATE, Impression_3 AS Impression FROM gc_database_total.endoscope WHERE Impression_3 IS NOT NULL"
        data3 = self.df_from_sql(db_name = "gc_database_total", sql = sql3)
        
        sql4 = "SELECT `ID`, CHKID, DATE, Impression_4 AS Impression FROM gc_database_total.endoscope WHERE Impression_4 IS NOT NULL"
        data4 = self.df_from_sql(db_name = "gc_database_total", sql = sql4)
        
        sql5 = "SELECT `ID`, CHKID, DATE, Impression_5 AS Impression FROM gc_database_total.endoscope WHERE Impression_5 IS NOT NULL"
        data5 = self.df_from_sql(db_name = "gc_database_total", sql = sql5)
        
        sql6 = "SELECT `ID`, CHKID, DATE, Impression_6 AS Impression FROM gc_database_total.endoscope WHERE Impression_6 IS NOT NULL"
        data6 = self.df_from_sql(db_name = "gc_database_total", sql = sql6)
        
        datas = pd.concat([data1, data2, data3, data4, data5, data6], axis = 0)
        datas = datas.sort_values(['ID', 'DATE'])
        data = datas.reset_index(drop = True)
        
        #print(data)
        self.insert(data, db_name = "endoscope_total", tb_name = "endoscope_impression_01") 


if __name__ == "__main__":
    obj = EndoscopeImpression01()
    obj.run()