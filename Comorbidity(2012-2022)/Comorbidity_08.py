import pandas as pd
from Base_ETL import BaseETL

class Comorbidity08(BaseETL):

    def run(self):
        
        df = pd.DataFrame()
    
        o_ID= [100494461, 100040685, 100037107]
        
        for x in o_ID:
            
            f = open("Comorbidity(2012-2022)/Comorbidity_08(TBC).txt", 'rt', encoding = 'UTF8')
            
            sql = ''
            
            while True:
                
                line = f.readline()
                
                if not line: 
                    break
                
                a = str(line)
                
                sql  = sql + a
                
            sql = sql.format(x)  
            
            f.close()
            
            data = self.df_from_sql(db_name = "raw_file_2012_2022", sql = sql)
            
            df = pd.concat([df, data], axis = 0, sort = False)
            
        df = df.sort_values(['ID', 'TBC_Date'])
        #df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/Comorbidity_TBC_1.xlsx')
        
        self.insert(df, db_name = "comorbidity_protocol", tb_name = "comorbidity_08") #tb_name = tb_tmp_comorbidity_step_08


if __name__ == "__main__":
    obj = Comorbidity08()
    obj.run()