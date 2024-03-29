import pandas as pd
from Base_ETL import BaseETL
from pandas import DataFrame
from nltk.tokenize import LineTokenizer
line_tokenizer = LineTokenizer()

class Genetic08(BaseETL):

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
        
        CD34 = list(0 for i in range(0, x))
        
        for i in range(0, x):
            if data_li[i] is not str:
                data_li[i] = str(data_li[i])
                
            string = ''.join(data_li[i])
            list_void = line_tokenizer.tokenize(string)
            
            CD34[i] = []
            CD34[i].append(index_li[i])
            
            for word in list_void:
                word_low = word.lower()
                
                if 'cd34' in word_low:
                    CD34[i].append(word)
                elif 'cd-34' in word_low:
                    CD34[i].append(word)
        
        #print(CD34)
        
        Data_CD34 = DataFrame(CD34)
        Data_CD34.rename(columns = {0: '원무접수ID', 1: 'CD34', 2: 'CD34_1', 3: 'CD34_2'}, inplace = True)
        
        #print(Data_CD34)
        
        self.insert(Data_CD34, db_name = 'genetic_protocol', tb_name = 'genetic_08')

        f = open('Genetic(2012-2022)/Genetic_08(CD34).sql', 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
            
            a = str(line)
            
            sql  = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = 'genetic_protocol', sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Genetic(2012-2022)/Genetic_04(CD34).xlsx')
        
        self.insert(df, db_name = 'genetic_protocol', tb_name = 'genetic_08') 


if __name__ == "__main__":
    obj = Genetic08()
    obj.run()
