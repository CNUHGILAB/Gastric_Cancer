from base_etl import BaseETL
import pandas as pd
from nltk.tokenize import LineTokenizer
line_tokenizer = LineTokenizer()

class WCStep04(BaseETL):

    def run(
        self,
    ):
        sql = '''
             SELECT * FROM wcstep03;
        '''
        df = self.df_from_sql(db_name="gc_protocol", sql=sql)
        
        data = df['검사결과'].values.tolist()
        x = len(data)

        GENERAL_CATEGORIZATION = []

        for i in range(0,x):
            print(i)
            string = ''.join(data[i])
            list_void = line_tokenizer.tokenize(string)
            index_num = 0
            for word in list_void:
                if 'GENERAL CATEGORIZATION' in word:
                    index = list_void.index(word)
                    index_num = index+1 
                else:
                    index = 0
            input = list_void[index_num]
            print(input)
            GENERAL_CATEGORIZATION.append(input)
        
        SPECIMEN_ADEQUACY = []

        for i in range(0,x):
            print(i)
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
            print(input)
            SPECIMEN_ADEQUACY.append(input)
            

        OTHERES = []

        for i in range(0,x):
            print(i)
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
            print(input)
            OTHERES.append(input)
        

        df['GENERAL_CATEGORIZATION'] = pd.DataFrame(GENERAL_CATEGORIZATION)
        df['SPECIMEN_ADEQUACY'] = pd.DataFrame(SPECIMEN_ADEQUACY)
        df['OTHERES'] = pd.DataFrame(OTHERES)
        print(df)
        self.insert(df, db_name="gc_protocol", tb_name="wcstep04")

if __name__ == "__main__":
    obj = WCStep04()
    obj.run()