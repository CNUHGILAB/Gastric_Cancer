import pandas as pd
from Base_ETL import BaseETL
from pandas import DataFrame
from nltk.tokenize import LineTokenizer
line_tokenizer = LineTokenizer()

class Genetic13(BaseETL):

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
        
        Chromogranin = list(0 for i in range(0, x))
        
        for i in range(0, x):
            if data_li[i] is not str:
                data_li[i] = str(data_li[i])
                
            string = ''.join(data_li[i])
            list_void = line_tokenizer.tokenize(string)
            
            Chromogranin[i] = []
            Chromogranin[i].append(index_li[i])
            
            for word in list_void:
                word_low = word.lower()
                
                if 'chromogranin' in word_low:
                    Chromogranin[i].append(word)
        
        #print(Chromogranin)
        
        Data_Chromogranin = DataFrame(Chromogranin)
        Data_Chromogranin.rename(columns = {0: '원무접수ID', 1: 'Chromogranin', 2: 'Chromogranin_1', 3: 'Chromogranin_2'}, inplace = True)
        
        #print(Data_Chromogranin)
        
        self.insert(Data_Chromogranin, db_name = 'genetic_protocol', tb_name = 'genetic_13')

        f = open('Genetic(2012-2022)/Genetic_13(Chromogranin).sql', 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
            
            a = str(line)
            
            sql  = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = 'genetic_protocol', sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Genetic(2012-2022)/Genetic_13(Chromogranin).xlsx')
        
        self.insert(df, db_name = 'genetic_protocol', tb_name = 'genetic_13') 


if __name__ == "__main__":
    obj = Genetic13()
    obj.run()
