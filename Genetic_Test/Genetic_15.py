import pandas as pd
from Base_ETL import BaseETL
from pandas import DataFrame
from nltk.tokenize import LineTokenizer
line_tokenizer = LineTokenizer()

class Genetic15(BaseETL):

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
        
        Giemsa = list(0 for i in range(0, x))
        
        for i in range(0, x):
            string = ''.join(data_li[i])
            list_void = line_tokenizer.tokenize(string)
            
            Giemsa[i] = []
            Giemsa[i].append(index_li[i])
            
            for word in list_void:
                word_low = word.lower()
                
                if 'Giemsa' in word_low:
                    Giemsa[i].append(word)
        
        print(Giemsa)
        
        Data_Giemsa = DataFrame(Giemsa)
        Data_Giemsa.rename(columns = {0: '원무접수ID', 1: 'Giemsa', 2: 'Giemsa_1', 3: 'Giemsa_2'}, inplace = True)
        
        print(Data_Giemsa)
        
        self.insert(Data_Giemsa, db_name = 'genetic_protocol', tb_name = 'genetic_15')

        f = open('Genetic_Test/Genetic_15(Giemsa).sql', 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
            
            a = str(line)
            
            sql  = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = 'genetic_protocol', sql = sql)
        
        self.insert(df, db_name = 'genetic_protocol', tb_name = 'genetic_15') 


if __name__ == "__main__":
    obj = Genetic15()
    obj.run()
