import pandas as pd
from base_etl import BaseETL
from pandas import DataFrame
from nltk.tokenize import LineTokenizer
line_tokenizer = LineTokenizer()


class GeneticStep03(BaseETL):

    def run(
        self,
    ):
        sql = "SELECT * FROM gc_protocol.genetic_step_01 WHERE nullif(병리진단,'') is not null;"
        df = self.df_from_sql(db_name="gc_protocol", sql=sql)

        data = df.set_index("원무접수ID")
    

        data_li = data.values.tolist()
        index_li = data.index.tolist()
        x = len(data_li)
        
        E_Cadherin = list(0 for i in range(0,x))
        
        for i in range(0,x):
            string = ''.join(data_li[i])
            list_void = line_tokenizer.tokenize(string)
            E_Cadherin[i] = []
            E_Cadherin[i].append(index_li[i])
            for word in list_void:
                word_low = word.lower()
                if 'e-cadherin' in word_low:
                    E_Cadherin[i].append(word)
        
        print(E_Cadherin)
        Data_E_Cadherin = DataFrame(E_Cadherin)
        Data_E_Cadherin.rename(columns={0:'원무접수ID',1:'E_Cadherin',2:'E_Cadherin_2',3:'E_Cadherin_3', 4:'E_Cadherin_4'},inplace=True)
        print(Data_E_Cadherin)
        self.insert(Data_E_Cadherin, db_name="gc_protocol", tb_name="genetic_step_03")
        
        
        f = open("Path/Genetic_Step_03(E_Cadherin).sql",'rt',encoding='UTF8')
        sql= ''
        while True:
            line = f.readline()
            if not line: break
            a = str(line)
            sql  = sql + a  
        f.close()
        df = self.df_from_sql(db_name="gc_protocol", sql=sql)
        self.insert(df, db_name="gc_protocol", tb_name="genetic_step_03") 

if __name__ == "__main__":
    obj = GeneticStep03()
    obj.run()
