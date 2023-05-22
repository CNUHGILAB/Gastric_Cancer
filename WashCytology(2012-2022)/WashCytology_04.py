from Base_ETL import BaseETL
import pandas as pd
from nltk.tokenize import LineTokenizer
import os

line_tokenizer = LineTokenizer()

class WashCytology04(BaseETL):

    def run(self):
        
        sql = '''
             SELECT * FROM washcytology_03;
        '''
        df = self.df_from_sql(db_name = "wash_cytology_protocol", sql = sql)
        
        data = df['검사결과'].values.tolist()
        x = len(data)
        
        GENERAL_CATEGORIZATION = []
        
        for i in range(0, x):
            #print(i)
            
            if data[i] is None:
                continue
            
            string = ''.join(data[i])
            #print(string)
            list_void = line_tokenizer.tokenize(string)
            index_num = 0
            
            for word in list_void:
                if 'GENERAL CATEGORIZATION' in word:
                    index = list_void.index(word)
                    index_num = index+1 
                else:
                    index = 0
                    
            input = list_void[index_num]
            #print(input)
            GENERAL_CATEGORIZATION.append(input)

        SPECIMEN_ADEQUACY = []

        for i in range(0,x):
            #print(i)
            
            if data[i] is None:
                continue
            
            string = ''.join(data[i])
            list_void = line_tokenizer.tokenize(string)
            index_num = 0
            
            for word in list_void:
                if 'SPECIMEN ADEQUACY' in word:
                    index = list_void.index(word)
                    index_num = index+1 
                else:
                    index = 0
                    
            input = list_void[index_num]
            #print(input)
            SPECIMEN_ADEQUACY.append(input)
            
        OTHERS = []

        for i in range(0,x):
            #print(i)
            
            if data[i] is None:
                continue
            
            string = ''.join(data[i])
            list_void = line_tokenizer.tokenize(string)
            index_num = 0
            
            for word in list_void:
                if '◈ 검사항목' in word:
                    index = list_void.index(word)
                    index_num = index -1
                else:
                    index = 0
                    
            input = list_void[index_num]
            
            if "(" in input:
                index_num_1 = index_num
            elif "Others" in input:
                index_num_1 = index_num
            elif "others" in input:
                index_num_1 = index_num   
            else:
                index_num_1 = 0
                
            input = list_void[index_num_1]
            #print(input)
            OTHERS.append(input)
        
        df['GENERAL_CATEGORIZATION'] = pd.DataFrame(GENERAL_CATEGORIZATION)
        df['SPECIMEN_ADEQUACY'] = pd.DataFrame(SPECIMEN_ADEQUACY)
        df['OTHERS'] = pd.DataFrame(OTHERS)
        
        df.to_excel('D:/Gastric_Cancer_xlsx/WashCytology(2012-2022)/WashCytology_04.xlsx')
        
        self.insert(df, db_name = "wash_cytology_protocol", tb_name = "washcytology_04")


if __name__ == "__main__":
    obj = WashCytology04()
    obj.run()