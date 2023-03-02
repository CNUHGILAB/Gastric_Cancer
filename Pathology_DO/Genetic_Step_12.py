import pandas as pd
from base_etl import BaseETL

class GeneticStep12(BaseETL):

    def run(
        self,
    ):
        f = open("Path/SMA.sql",'rt',encoding='UTF8')
        sql= ''
        while True:
            line = f.readline()
            if not line: break
            a = str(line)
            sql  = sql + a  
        f.close()
        df = self.df_from_sql(db_name="gc_protocol", sql=sql)
        self.insert(df, db_name="gc_protocol", tb_name="genetic_step_12") 

if __name__ == "__main__":
    obj = GeneticStep12()
    obj.run()
