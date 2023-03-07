import pandas as pd
from Base_ETL import BaseETL
from pandas import DataFrame
from nltk.tokenize import LineTokenizer
line_tokenizer = LineTokenizer()

# Column CD31
class Genetic06_2(BaseETL):

    def run(self):
        
        sql = '''
            SELECT * FROM gc_protocol_test.genetic_01
            WHERE NULLIF(병리진단,'') IS NOT NULL;
        '''
        # "SELECT * FROM gc_protocol_test.genetic_01 WHERE NULLIF(병리진단,'') IS NOT NULL;"
        
        df = self.df_from_sql(db_name = 'gc_protocol_test', sql = sql)

        data = df.set_index("원무접수ID")
    
        data_li = data.values.tolist()
        index_li = data.index.tolist()
        
        x = len(data_li)

        CD31 = list(0 for i in range(0, x))
        
        for i in range(0, x):
            string = ''.join(data_li[i])
            list_void = line_tokenizer.tokenize(string)
            
            CD31[i] = []
            CD31[i].append(index_li[i])

            for word in list_void:
                word_low = word.lower()

                if 'cd31' in word_low:
                    CD31[i].append(word)
                elif 'cd-31' in word_low:
                    CD31[i].append(word)
        
        print(CD31)
        
        Data_CD31 = DataFrame(CD31)
        Data_CD31.rename(columns = {0 : '원무접수ID', 1 : 'CD31', 2 : 'CD31_1', 3 : 'CD31_2'}, inplace = True)
        
        print(Data_CD31)
        
        self.insert(Data_CD31, db_name = 'gc_protocol_test', tb_name = 'genetic_06_2')
        
        # Path/KI_67.sql = KI_67.sql
        f = open('Genetic_Test/Genetic_06_2(CD31).sql', 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
            
            a = str(line)
            
            sql  = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = 'gc_protocol_test', sql = sql)
        
        self.insert(df, db_name = 'gc_protocol_test', tb_name = 'genetic_06_2') 

if __name__ == "__main__":
    obj = Genetic06_2()
    obj.run()