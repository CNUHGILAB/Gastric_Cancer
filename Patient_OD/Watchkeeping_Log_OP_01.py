from base_etl import BaseETL
import pandas as pd

class WatchkeepingLogOP01(BaseETL):

    def run(
        self,
    ):
        sql1 = "SELECT DATE, `2`AS OP FROM watchkeeping_log_op;"
        sql2 = "SELECT DATE, `5`AS OP FROM watchkeeping_log_op;"
        df1 = self.df_from_sql(db_name="gc_protocol", sql=sql1)
        df2 = self.df_from_sql(db_name="gc_protocol", sql=sql2) 
        
        
        df = pd.concat((df1,df2))
        df = df.sort_values(['DATE'])
        df = df.dropna(axis=0)
        print(df)
        self.insert(df, db_name="gc_protocol", tb_name="watchkeeping_log_op_01") 

    
if __name__ == "__main__":
    obj = WatchkeepingLogOP01()
    obj.run()