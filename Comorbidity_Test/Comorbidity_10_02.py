import pandas as pd
from Base_ETL import BaseETL

class Comorbidity10_02(BaseETL):

    def run(self):
        
        df = pd.DataFrame()
        
        o_ID= [100630832, 100022876, 100102732, 100095829]
        
        for x in o_ID:
            
            f = open("Comorbidity_Test/Comorbidity_10_02(Heart_Disease_MI).txt", 'rt', encoding = 'UTF8')
            
            sql= ''
            
            while True:
                
                line = f.readline()
                
                if not line: 
                    break
                
                a = str(line)
                
                sql  = sql + a
                
            sql = sql.format(x)
            
            f.close()
            
            data = self.df_from_sql(db_name = "gc_raw_test", sql = sql)
            
            df = pd.concat([df, data], axis = 0, sort = False)
            
        df = df.sort_values(['ID', 'MI_Date'])
        #df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/Comorbidity_Heart_disease_MI.xlsx')
        
        self.insert(df, db_name = "gc_protocol_test", tb_name = "comorbidity_10_02") # tb_name = "tb_tmp_comorbidity_10_01"

if __name__ == "__main__":
    obj = Comorbidity10_02()
    obj.run()