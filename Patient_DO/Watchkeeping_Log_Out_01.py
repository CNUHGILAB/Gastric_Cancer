from base_etl import BaseETL
import pandas as pd

class WatchkeepingLogOut01(BaseETL):

    def run(
        self,
    ):
        sql1 = "SELECT DATE, `2`AS `Out` FROM watchkeeping_log_out;"
        sql2 = "SELECT DATE, `5`AS `Out` FROM watchkeeping_log_out;"
        df1 = self.df_from_sql(db_name="gc_protocol", sql=sql1)
        df2 = self.df_from_sql(db_name="gc_protocol", sql=sql2) 
        
        
        df = pd.concat((df1,df2))
        df = df.sort_values(['DATE'])
        df = df.dropna(axis=0)
        print(df)
        self.insert(df, db_name="gc_protocol", tb_name="watchkeeping_log_out_01") 

    
if __name__ == "__main__":
    obj = WatchkeepingLogOut01()
    obj.run()