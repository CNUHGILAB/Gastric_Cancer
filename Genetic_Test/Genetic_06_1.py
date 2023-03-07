import pandas as pd
from Base_ETL import BaseETL
from pandas import DataFrame
from nltk.tokenize import LineTokenizer
line_tokenizer = LineTokenizer()

# Column CD31 and D240
class Genetic06_1(BaseETL):

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

        CD31_N_D240 = list(0 for i in range(0, x))
        
        for i in range(0, x):
            string = ''.join(data_li[i])
            list_void = line_tokenizer.tokenize(string)
            
            CD31_N_D240[i] = []
            CD31_N_D240[i].append(index_li[i])
            
            for word in list_void:
                word_low = word.lower()
                
                if 'cd31 and d2-40' in word_low:
                    CD31_N_D240[i].append(word)
                elif 'd2-40 and cd31' in word_low:
                    CD31_N_D240[i].append(word)
                elif 'cd31 & d2-40' in word_low:
                    CD31_N_D240[i].append(word)
                elif 'cd31 & d240' in word_low:
                    CD31_N_D240[i].append(word)
                elif 'd2-40, cd31' in word_low:
                    CD31_N_D240[i].append(word)
        
        print(CD31_N_D240)
        
        Data_CD31_N_D240 = DataFrame(CD31_N_D240)
        Data_CD31_N_D240.rename(columns = {0 : '원무접수ID', 1 : 'CD31_N_D240', 2 : 'CD31_N_D240_1', 3 : 'CD31_N_D240_2'}, inplace = True)
        
        print(Data_CD31_N_D240)
        
        self.insert(Data_CD31_N_D240, db_name = 'gc_protocol_test', tb_name = 'genetic_06_1')
        
        # Path/KI_67.sql = KI_67.sql
        f = open('Genetic_Test/Genetic_06_01(CD31_N_D240).sql', 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
            
            a = str(line)
            
            sql  = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = 'gc_protocol_test', sql = sql)
        
        self.insert(df, db_name = 'gc_protocol_test', tb_name = 'genetic_06_1') 

if __name__ == "__main__":
    obj = Genetic06_1()
    obj.run()
