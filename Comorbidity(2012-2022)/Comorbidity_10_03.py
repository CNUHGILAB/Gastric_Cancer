import pandas as pd
from Base_ETL import BaseETL

class Comorbidity10_03(BaseETL):

    def run(self):
        
        df = pd.DataFrame()
        
        # CHF(congestive heart failure) 울형성 심부전
        o_ID = [100095831]
        
        for x in o_ID:
            
            f = open("Comorbidity_Test/Comorbidity_10_03(Heart_Disease_HF).txt", 'rt', encoding = 'UTF8')
            
            sql= ''
            
            while True:
                
                line = f.readline()
                
                if not line: 
                    break
                
                a = str(line)
                
                sql  = sql + a
                
            sql = sql.format(x)
            
            f.close()
            
            data = self.df_from_sql(db_name = "gc_raw", sql = sql)
            
            df = pd.concat([df, data], axis = 0, sort = False)
            
        df = df.sort_values(['ID', 'HF_Date'])
        #df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/Comorbidity_Heart_disease_HF.xlsx')
        
        self.insert(df, db_name = "comorbidity_protocol", tb_name = "comorbidity_10_03") # tb_name = "tb_tmp_comorbidity_10_02"


if __name__ == "__main__":
    obj = Comorbidity10_03()
    obj.run()