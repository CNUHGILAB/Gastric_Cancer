import pandas as pd
from Base_ETL import BaseETL
from pandas import DataFrame
from nltk.tokenize import LineTokenizer
line_tokenizer = LineTokenizer()

class Genetic09(BaseETL):

    def run(self):
        
        sql = '''
            SELECT * FROM genetic_protocol.genetic_01
            WHERE NULLIF(병리진단, '') IS NOT NULL;
        '''
        # "SELECT * FROM genetic_protocol.genetic_01 WHERE NULLIF(병리진단, '') IS NOT NULL;"
        
        df = self.df_from_sql(db_name = 'genetic_protocol', sql = sql)

        data = df.set_index("원무접수ID")
    
        data_li = data.values.tolist()
        index_li = data.index.tolist()
        x = len(data_li)
        
        PKC_Theta = list(0 for i in range(0, x))
        
        for i in range(0, x):
            if data_li[i] is not str:
                data_li[i] = str(data_li[i])
                
            string = ''.join(data_li[i])
            list_void = line_tokenizer.tokenize(string)
            
            PKC_Theta[i] = []
            PKC_Theta[i].append(index_li[i])
            
            for word in list_void:
                word_low = word.lower()
                
                if 'pkc-theta' in word_low:
                    PKC_Theta[i].append(word)
                elif 'pkc' in word_low:
                    PKC_Theta[i].append(word)
        
        #print(PKC_Theta)
        
        Data_PKC_Theta = DataFrame(PKC_Theta)
        Data_PKC_Theta.rename(columns = {0: '원무접수ID', 1: 'PKC-Theta', 2: 'PKC-Theta_1', 3: 'PKC'}, inplace = True)
        
        #print(Data_PKC_Theta)
        
        self.insert(Data_PKC_Theta, db_name = 'genetic_protocol', tb_name = 'genetic_09')
        
        # Path/KI_67.sql = KI_67.sql
        f = open('Genetic(2012-2022)/Genetic_09(PKC-Theta).sql', 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
            
            a = str(line)
            
            sql  = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = 'genetic_protocol', sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Genetic(2012-2022)/Genetic_09(PKC-Theta).xlsx')
        
        self.insert(df, db_name = 'genetic_protocol', tb_name = 'genetic_09') 


if __name__ == "__main__":
    obj = Genetic09()
    obj.run()
