import pandas as pd
from Base_ETL import BaseETL
from pandas import DataFrame
from nltk.tokenize import LineTokenizer
line_tokenizer = LineTokenizer()

class Genetic10(BaseETL):

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
        
        S_100 = list(0 for i in range(0, x))
        
        for i in range(0, x):
            string = ''.join(data_li[i])
            list_void = line_tokenizer.tokenize(string)
            
            S_100[i] = []
            S_100[i].append(index_li[i])
            
            for word in list_void:
                word_low = word.lower()
                
                if 's-100' in word_low:
                    S_100[i].append(word)
                elif 's100' in word_low:
                    S_100[i].append(word)
        
        print(S_100)
        
        Data_S_100 = DataFrame(S_100)
        Data_S_100.rename(columns = {0: '원무접수ID', 1: 'S_100', 2: 'S_100_1', 3: 'S_100_2'}, inplace = True)
        
        print(Data_S_100)
        
        self.insert(Data_S_100, db_name = 'genetic_protocol', tb_name = 'genetic_10')

        f = open('Genetic_Test/Genetic_10(S-100).sql', 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
            
            a = str(line)
            
            sql  = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = 'genetic_protocol', sql = sql)
        
        self.insert(df, db_name = 'genetic_protocol', tb_name = 'genetic_10') 


if __name__ == "__main__":
    obj = Genetic10()
    obj.run()
