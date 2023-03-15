import pandas as pd
from Base_ETL import BaseETL
from pandas import DataFrame
from nltk.tokenize import LineTokenizer
line_tokenizer = LineTokenizer()

class Genetic04(BaseETL):

    def run(self):
        
        sql = '''
            SELECT * FROM genetic_protocol.genetic_01
            WHERE NULLIF(병리진단, '') IS NOT NULL;
        '''
        # "SELECT * FROM genetic_protocol.genetic_01 WHERE NULLIF(병리진단,'') IS NOT NULL;"
        
        df = self.df_from_sql(db_name = 'genetic_protocol', sql = sql)

        data = df.set_index("원무접수ID")
    
        data_li = data.values.tolist()
        index_li = data.index.tolist()
        x = len(data_li)
        
        p53 = list(0 for i in range(0, x))
        
        for i in range(0, x):
            string = ''.join(data_li[i])
            list_void = line_tokenizer.tokenize(string)
            
            p53[i] = []
            p53[i].append(index_li[i])
            
            for word in list_void:
                word_low = word.lower()
                
                if 'p53' in word_low:
                    p53[i].append(word)
                elif 'p-53' in word_low:
                    p53[i].append(word)
        
        print(p53)
        
        Data_p53 = DataFrame(p53)
        Data_p53.rename(columns = {0: '원무접수ID', 1: 'p53', 2: 'p53_p'}, inplace = True)
        
        print(Data_p53)
        
        self.insert(Data_p53, db_name = 'genetic_protocol', tb_name = 'genetic_04')
        
        # Path/p53.sql = p53.sql
        f = open('Genetic_Test/Genetic_04(p53).sql', 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
            
            a = str(line)
            
            sql  = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = 'genetic_protocol', sql = sql)
        
        self.insert(df, db_name = 'genetic_protocol', tb_name = 'genetic_04') 


if __name__ == "__main__":
    obj = Genetic04()
    obj.run()
