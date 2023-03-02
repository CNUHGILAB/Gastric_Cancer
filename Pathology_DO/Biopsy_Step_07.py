from base_etl import BaseETL

class BiopsyStep07(BaseETL):

    def run(
        self,
    ):
        f = open("Path/Biopsy_Step_07(Gross_Type_2).sql",'rt',encoding='UTF8')
        sql= ''
        while True:
            line = f.readline()
            if not line: break
            a = str(line)
            sql  = sql + a  
        f.close()
        df = self.df_from_sql(db_name="gc_protocol", sql=sql)
        self.insert(df, db_name="gc_protocol", tb_name="biopsy_step_07") 

if __name__ == "__main__":
    obj = BiopsyStep07()
    obj.run()