import pandas as pd
from Base_ETL import BaseETL
from pandas import DataFrame
from nltk.tokenize import LineTokenizer
line_tokenizer = LineTokenizer()

class Genetic05(BaseETL):

    def run(self):
        
        sql = '''
            SELECT * FROM genetic_protocol.genetic_01
            WHERE NULLIF(병리진단,'') IS NOT NULL;
        '''
        # "SELECT * FROM genetic_protocol.genetic_01 WHERE NULLIF(병리진단,'') IS NOT NULL;"
        
        df = self.df_from_sql(db_name = 'genetic_protocol', sql = sql)

        data = df.set_index("원무접수ID")
    
        data_li = data.values.tolist()
        index_li = data.index.tolist()
        x = len(data_li)
        
        KI_67 = list(0 for i in range(0, x))
        
        for i in range(0, x):
            if data_li[i] is not str:
                data_li[i] = str(data_li[i])
                
            string = ''.join(data_li[i])
            list_void = line_tokenizer.tokenize(string)
            
            KI_67[i] = []
            KI_67[i].append(index_li[i])
            
            for word in list_void:
                word_low = word.lower()
                
                if 'ki-67' in word_low:
                    KI_67[i].append(word)
                elif 'ki_67' in word_low:
                    KI_67[i].append(word)
                elif 'ki67' in word_low:
                    KI_67[i].append(word)
        
        #print(KI_67)
        
        Data_KI_67 = DataFrame(KI_67)
        Data_KI_67.rename(columns = {0: '원무접수ID', 1: 'Ki-67', 2: 'Ki-67_p'}, inplace = True)
        
        #print(Data_KI_67)
        
        self.insert(Data_KI_67, db_name = 'genetic_protocol', tb_name = 'genetic_05')
        
        # Path/KI_67.sql = KI_67.sql
        f = open('Genetic(2012-2022)/Genetic_05(Ki-67).sql', 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
            
            a = str(line)
            
            sql  = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = 'genetic_protocol', sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Genetic(2012-2022)/Genetic_05(Ki-67).xlsx')
        
        self.insert(df, db_name = 'genetic_protocol', tb_name = 'genetic_05') 

if __name__ == "__main__":
    obj = Genetic05()
    obj.run()
