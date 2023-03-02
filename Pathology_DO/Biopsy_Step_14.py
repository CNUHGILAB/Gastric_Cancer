from base_etl import BaseETL

class BiopsyStep14(BaseETL):

    def run(
        self,
    ):
        f = open("Path/Biopsy_Step_14(PTNM_Staing_1).sql",'rt',encoding='UTF8')
        sql= ''
        while True:
            line = f.readline()
            if not line: break
            a = str(line)
            sql  = sql + a  
        f.close()
        df = self.df_from_sql(db_name="gc_protocol", sql=sql)
        self.insert(df, db_name="gc_protocol", tb_name="biopsy_step_14") 

if __name__ == "__main__":
    obj = BiopsyStep14()
    obj.run()