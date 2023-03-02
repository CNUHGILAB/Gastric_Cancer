from base_etl import BaseETL

class TbTmpComorbidityStep19(BaseETL):

    def run(
        self,
    ):

        f = open("Comorbidity/Merge.sql",'rt',encoding='UTF8')
        sql= ''
        while True:
            line = f.readline()
            if not line: break
            a = str(line)
            sql  = sql + a  
        f.close()

        df = self.df_from_sql(db_name="gc_protocol", sql=sql) 
        df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/Comorbidity_Merge_2.xlsx')
        print(df)
        self.insert(df, db_name="gc_protocol", tb_name="tb_tmp_comorbidity_step_19")

    
if __name__ == "__main__":
    obj = TbTmpComorbidityStep19()
    obj.run()