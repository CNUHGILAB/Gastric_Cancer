from Base_ETL import BaseETL

# Comorbidity_Merge
class Comorbidity18(BaseETL):

    def run(self):

        f = open("Comorbidity_Test/Comorbidity_18(Merge).sql", 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            
            line = f.readline()
            
            if not line: 
                break
            
            a = str(line)
            
            sql  = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = "comorbidity_protocol", sql = sql)
        #df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/Comorbidity_Merge_2.xlsx')
        #print(df)
        
        self.insert(df, db_name = "comorbidity_protocol", tb_name = "comorbidity_18") # tb_name = "tb_tmp_comorbidity_step_19"


if __name__ == "__main__":
    obj = Comorbidity18()
    obj.run()