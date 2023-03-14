import pandas as pd
from Base_ETL import BaseETL
from pandas import DataFrame
from nltk.tokenize import LineTokenizer
line_tokenizer = LineTokenizer()

class Genetic14(BaseETL):

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
        
        EBV = list(0 for i in range(0, x))
        
        for i in range(0, x):
            string = ''.join(data_li[i])
            list_void = line_tokenizer.tokenize(string)
            
            EBV[i] = []
            EBV[i].append(index_li[i])
            
            for word in list_void:
                word_low = word.lower()
                
                if 'EBV' in word_low:
                    EBV[i].append(word)
        
        print(EBV)
        
        Data_EBV = DataFrame(EBV)
        Data_EBV.rename(columns = {0:'원무접수ID', 1 : 'EBV', 2:'EBV_1', 3:'EBV_2'}, inplace = True)
        
        print(Data_EBV)
        
        self.insert(Data_EBV, db_name = 'gc_protocol_test', tb_name = 'genetic_14')
        
        # Path/KI_67.sql = KI_67.sql
        f = open('Genetic_Test/Genetic_14(EBV).sql', 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
            
            a = str(line)
            
            sql  = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = 'gc_protocol_test', sql = sql)
        
        self.insert(df, db_name = 'gc_protocol_test', tb_name = 'genetic_14') 

if __name__ == "__main__":
    obj = Genetic14()
    obj.run()
