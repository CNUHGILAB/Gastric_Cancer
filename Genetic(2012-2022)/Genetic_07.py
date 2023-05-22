import pandas as pd
from Base_ETL import BaseETL
from pandas import DataFrame
from nltk.tokenize import LineTokenizer
line_tokenizer = LineTokenizer()

class Genetic07(BaseETL):

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
        
        C_KIT = list(0 for i in range(0, x))
        
        for i in range(0, x):
            string = ''.join(data_li[i])
            list_void = line_tokenizer.tokenize(string)
            
            C_KIT[i] = []
            C_KIT[i].append(index_li[i])
            
            for word in list_void:
                word_low = word.lower()
                
                if 'c-kit' in word_low:
                    C_KIT[i].append(word)
                elif 'cd-117' in word_low:
                    C_KIT[i].append(word)
                elif 'cd117' in word_low:
                    C_KIT[i].append(word)
                    
        #print(C_KIT)
        
        Data_C_KIT = DataFrame(C_KIT)
        Data_C_KIT.rename(columns = {0: '원무접수ID', 1: 'C-Kit', 2: 'C-Kit_1', 3: 'C-Kit_2'}, inplace = True)
        
        #print(Data_C_KIT)
        
        self.insert(Data_C_KIT, db_name = 'genetic_protocol', tb_name = 'genetic_07')
        df.to_excel('D:/Gastric_Cancer_xlsx/Genetic(2012-2022)/Genetic_07(C-kit).xlsx')

        f = open('Genetic(2012-2022)/Genetic_07(C-Kit).sql', 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
            
            a = str(line)
            
            sql  = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = 'genetic_protocol', sql = sql)
        
        self.insert(df, db_name = 'genetic_protocol', tb_name = 'genetic_07') 


if __name__ == "__main__":
    obj = Genetic07()
    obj.run()