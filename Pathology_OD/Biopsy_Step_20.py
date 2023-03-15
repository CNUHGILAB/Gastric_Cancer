from base_etl import BaseETL

class BiopsyStep20(BaseETL):

    def run(
        self,
    ):
        f = open("Path/Biopsy_Step_20(Merge).sql",'rt',encoding='UTF8')
        sql= ''
        while True:
            line = f.readline()
            if not line: break
            a = str(line)
            sql  = sql + a  
        f.close()
        df = self.df_from_sql(db_name="gc_protocol", sql=sql)
        df = df.sort_values(['환자번호','검사시행일'])
        df = df.reset_index(drop= True)
        df = df.drop_duplicates()
        df.to_excel('D:/Gastric_Cancer/Excel_File/biopsy_merge.xlsx')
        self.insert(df, db_name="gc_protocol", tb_name="biopsy_step_20") 
    

if __name__ == "__main__":
    obj = BiopsyStep20()
    obj.run()