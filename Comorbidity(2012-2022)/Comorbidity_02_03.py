import pandas as pd
from Base_ETL import BaseETL

class Comorbidity02_03(BaseETL):

    def run(self):
        
        df = pd.DataFrame()
        
        o_ID= [100287228, 100298275, 100630824]
        
        for x in o_ID:
            
            f = open("Comorbidity(2012-2022)/Comorbidity_02_03(DM_Medication).txt", 'rt', encoding = 'UTF8') 
            
            sql= ''
            
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
            
        df = df.sort_values(['ID', 'DM_Date'])
        
        df = df.reset_index(drop = True)
        df.to_excel('D:/Gastric_Cancer_xlsx/Comorbidity(2012-2022)/Comorbidity_02_03(DM_Medication).xlsx')
        
        self.insert(df, db_name = "comorbidity_protocol", tb_name = "comorbidity_02_03") # tb_name = "tb_tmp_comorbidity_02_02"


if __name__ == "__main__":
    obj = Comorbidity02_03()
    obj.run()