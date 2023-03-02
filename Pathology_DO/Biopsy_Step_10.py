from base_etl import BaseETL

class BiopsyStep10(BaseETL):

    def run(
        self,
    ):
        f = open("Path/Biopsy_Step_10(differentiation).sql",'rt',encoding='UTF8')
        sql= ''
        while True:
            line = f.readline()
            if not line: break
            a = str(line)
            sql  = sql + a  
        f.close()
        df = self.df_from_sql(db_name="gc_protocol", sql=sql)
        self.insert(df, db_name="gc_protocol", tb_name="biopsy_step_10") 

if __name__ == "__main__":
    obj = BiopsyStep10()
    obj.run()