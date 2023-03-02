from base_etl import BaseETL

class BiopsyStep19(BaseETL):

    def run(
        self,
    ):
        f = open("Path/Biopsy_Step_19(Inspection_items).sql",'rt',encoding='UTF8')
        sql= ''
        while True:
            line = f.readline()
            if not line: break
            a = str(line)
            sql  = sql + a  
        f.close()
        df = self.df_from_sql(db_name="gc_protocol", sql=sql)
        # df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/path_Inspection_items.xlsx')
        self.insert(df, db_name="gc_protocol", tb_name="biopsy_step_19") 

if __name__ == "__main__":
    obj = BiopsyStep19()
    obj.run()