import pandas as pd
from Base_ETL import BaseETL
from pandas import DataFrame
from nltk.tokenize import LineTokenizer
line_tokenizer = LineTokenizer()

class Genetic02(BaseETL):

    def run(self):
        
        sql = '''
            SELECT * FROM gc_protocol_test.genetic_01
            WHERE NULLIF(병리진단,'') IS NOT NULL;
        '''
        # "SELECT * FROM gc_protocol_test.genetic_01 WHERE NULLIF(병리진단,'') IS NOT NULL;"
        
        df = self.df_from_sql(db_name = 'gc_protocol_test', sql = sql)
        
        # Index로 삼기 원하는 Column의 이름 설정
        data = df.set_index('원무접수ID')

        data_li = data.values.tolist() # 전체 값 리스트(2차원 리스트로 출력)
        index_li = data.index.tolist() # Index → 리스트로 출력
        x = len(data_li) # data_li 문자열의 길이를 Return
        
        # 0으로 이루어진 리스트
        HER = list(0 for i in range(0, x)) # 변수 i를 0에서부터 x까지 반복
        
        for i in range(0, x):
            string = ''.join(data_li[i]) # ''.join() : 리스트에 있는 요소들을 합쳐 하나의 문자열로 바꾸어 반환하는 함수
            list_void = line_tokenizer.tokenize(string)
            
            # 빈 리스트
            HER[i] = []
            HER[i].append(index_li[i])
            
            for word in list_void:
                word_low = word.lower() # .lower() : 문자를 소문자로 바꾸어주는 함수
                
                if 'c-erb-b2' in word_low:
                    HER[i].append(word)
                elif 'c-erb b2' in word_low:
                    HER[i].append(word)
                elif 'c-erbb2' in word_low:
                    HER[i].append(word)

        print(HER)
        
        Data_HER = DataFrame(HER)
        # Data_HER.rename(columns = {0 : '원무접수ID', 1 : 'HER2', 2 : 'HER2_2'}, inplace = True)
        Data_HER.rename(columns = {0 : '원무접수ID', 1 : 'HER2', 2 : 'HER2_2'}, inplace = True)
        print(Data_HER)
        
        self.insert(Data_HER, db_name = 'gc_protocol_test', tb_name = 'genetic_02')
        
        # Genetic_Step_02(HER2).sql = HER2.sql
        f = open('Genetic_Test/HER2.sql', 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
            
            a = str(line)
            
            sql  = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = 'gc_protocol_test', sql = sql)
        
        self.insert(df, db_name = 'gc_protocol_test', tb_name = 'genetic_02') 

if __name__ == "__main__":
    obj = Genetic02()
    obj.run()
