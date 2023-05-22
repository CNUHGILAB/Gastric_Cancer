import pandas as pd
from Base_ETL import BaseETL
from pandas import DataFrame
from nltk.tokenize import LineTokenizer
line_tokenizer = LineTokenizer()

# Column CD31 and D240
class Genetic06_3(BaseETL):

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

        D240 = list(0 for i in range(0, x))
        
        for i in range(0, x):
            string = ''.join(data_li[i])
            list_void = line_tokenizer.tokenize(string)
            
            D240[i] = []
            D240[i].append(index_li[i])
            
            for word in list_void:
                word_low = word.lower()
                
                if 'd2-40' in word_low:
                    D240[i].append(word)
                elif 'd240' in word_low:
                    D240[i].append(word)
        
        print(D240)
        
        Data_D240 = DataFrame(D240)
        Data_D240.rename(columns = {0: '원무접수ID', 1: 'D240', 2: 'D240_1', 3: 'D240_2'}, inplace = True)
        
        print(Data_D240)
        
        self.insert(Data_D240, db_name = 'genetic_protocol', tb_name = 'genetic_06_3')
        
        f = open('Genetic_Test/Genecit_06_03(D240).sql', 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
            
            a = str(line)
            
            sql  = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = 'genetic_protocol', sql = sql)
        
        self.insert(df, db_name = 'genetic_protocol', tb_name = 'genetic_06_3') 


if __name__ == "__main__":
    obj = Genetic06_3()
    obj.run()
