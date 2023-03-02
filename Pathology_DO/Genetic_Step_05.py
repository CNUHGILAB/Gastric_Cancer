import pandas as pd
from base_etl import BaseETL

class GeneticStep05(BaseETL):

    def run(
        self,
    ):
        f = open("Path/p53.sql",'rt',encoding='UTF8')
        sql= ''
        while True:
            line = f.readline()
            if not line: break
            a = str(line)
            sql  = sql + a  
        f.close()
        df = self.df_from_sql(db_name="gc_protocol", sql=sql)
        self.insert(df, db_name="gc_protocol", tb_name="genetic_step_05") 

if __name__ == "__main__":
    obj = GeneticStep05()
    obj.run()
