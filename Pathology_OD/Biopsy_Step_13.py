from base_etl import BaseETL

class BiopsyStep13(BaseETL):

    def run(
        self,
    ):
        
        f = open("Path/Biopsy_Step_13(clear_resection_margin).sql",'rt',encoding='UTF8')
        sql= ''
        while True:
            line = f.readline()
            if not line: break
            a = str(line)
            sql  = sql + a  
        f.close()
        df = self.df_from_sql(db_name="gc_protocol", sql=sql)
        self.insert(df, db_name="gc_protocol", tb_name="biopsy_step_13") 

if __name__ == "__main__":
    obj = BiopsyStep13()
    obj.run()