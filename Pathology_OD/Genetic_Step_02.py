import pandas as pd
from base_etl import BaseETL
from pandas import DataFrame
from nltk.tokenize import LineTokenizer
line_tokenizer = LineTokenizer()

class GeneticStep02(BaseETL):

    def run(
        self,
    ):
        sql = "SELECT * FROM gc_protocol.genetic_step_01 WHERE nullif(병리진단,'') is not null;"
        df = self.df_from_sql(db_name="gc_protocol", sql=sql)

        data = df.set_index("원무접수ID")
    

        data_li = data.values.tolist()
        index_li = data.index.tolist()
        x = len(data_li)
        
        HER = list(0 for i in range(0,x))
        
        for i in range(0,x):
            string = ''.join(data_li[i])
            list_void = line_tokenizer.tokenize(string)
            HER[i] = []
            HER[i].append(index_li[i])
            for word in list_void:
                word_low = word.lower()
                if 'c-erb-b2' in word_low:
                    HER[i].append(word)

        print(HER)
        Data_HER = DataFrame(HER)
        Data_HER.rename(columns={0:'원무접수ID',1:'HER2',2:'HER2_2'},inplace=True)
        print(Data_HER)
        self.insert(Data_HER, db_name="gc_protocol", tb_name="genetic_step_02") 
        
        f = open("Path/Genetic_Step_02(HER2).sql",'rt',encoding='UTF8')
        sql= ''
        while True:
            line = f.readline()
            if not line: break
            a = str(line)
            sql  = sql + a  
        f.close()
        df = self.df_from_sql(db_name="gc_protocol", sql=sql)
        self.insert(df, db_name="gc_protocol", tb_name="genetic_step_02") 

if __name__ == "__main__":
    obj = GeneticStep02()
    obj.run()
