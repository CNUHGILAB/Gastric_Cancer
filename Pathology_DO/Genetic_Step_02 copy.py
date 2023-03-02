import pandas as pd
from pandas import DataFrame
from base_etl import BaseETL
from nltk.tokenize import LineTokenizer
from functools import reduce
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

        print(x)

        for j in range(1,15):
            exec(f"A{j} = list(0 for i in range(0,x))")
        

        for i in range(0,x):
            string = ''.join(data_li[i])
            list_void = line_tokenizer.tokenize(string)
            for j in range(1,15):
                exec(f"A{j}[i] = []")
                exec(f"A{j}[i].append(index_li[i])")
            for word in list_void:
                word_low = word.lower()
                if 'c-erb-b2' in word_low:
                    eval("A1[i].append(word)")
                if 'e-cadherin' in word_low:
                    eval('A2[i].append(word)')
                if 'p53' in word_low:
                    eval('A3[i].append(word)')
                if 'ki 67' in word_low:
                    eval('A4[i].append(word)')
                if 'ki-67' in word_low:
                    eval('A4[i].append(word)')
                if 'cd31 and d2-40' in word_low:
                    eval('A5[i].append(word)')
                if 'c-kit' in word_low:
                    eval('A6[i].append(word)')
                if 'cd34' in word_low:
                    eval('A7[i].append(word)')
                if 'pkc-theta' in word_low:
                    eval('A8[i].append(word)')
                if 's-100 protein' in word_low:
                    eval('A9[i].append(word)')
                if 'a-sma' in word_low:
                    eval('A10[i].append(word)')
                if 'smooth muscle actin' in word_low:
                    eval('A10[i].append(word)')
                if 'ck' in word_low:
                    eval('A11[i].append(word)')
                if 'chromogranin' in word_low:
                    eval('A12[i].append(word)')
                if 'ebv' in word_low:
                    eval('A13[i].append(word)')
                if 'giemsa' in word_low:
                    eval('A14[i].append(word)')
        
        for j in range(1,15):
            exec(f"dataA{j}=DataFrame(A{j})")
        

        print(eval("dataA1"))
        print(eval("dataA2"))
        print(eval("dataA3"))
        print(eval("dataA4"))
        print(eval("dataA5"))
        print(eval("dataA6"))
        print(eval("dataA7"))
        print(eval("dataA8"))
        print(eval("dataA9"))
        print(eval("dataA10"))
        print(eval("dataA11"))
        print(eval("dataA12"))
        print(eval("dataA13"))
        print(eval("dataA14"))
        eval("dataA1.rename(columns={0:'원무접수ID',1:'HER2',2:'HER2_2'},inplace=True)")
        eval("dataA2.rename(columns={0:'원무접수ID',1:'E_Cadherin',2:'E_Cadherin_2',3:'E_Cadherin_3', 4:'E_Cadherin_4'},inplace=True)")
        eval("dataA3.rename(columns={0:'원무접수ID',1:'p53',2:'p53_2'},inplace=True)")
        eval("dataA4.rename(columns={0:'원무접수ID',1:'Ki_67',2:'Ki_67_2',3:'Ki_67_3'},inplace=True)")
        eval("dataA5.rename(columns={0:'원무접수ID',1:'CD31_N_D2_40'},inplace=True)")
        eval("dataA6.rename(columns={0:'원무접수ID',1:'C_kit',2:'C_kit_2'},inplace=True)")
        eval("dataA7.rename(columns={0:'원무접수ID',1:'CD34',2:'CD34_2'},inplace=True)")
        eval("dataA8.rename(columns={0:'원무접수ID',1:'PKC_theta',2:'PKC_theta_2'},inplace=True)")
        eval("dataA9.rename(columns={0:'원무접수ID',1:'s_100',2:'s_100_2',3:'s_100_3'},inplace=True)")
        eval("dataA10.rename(columns={0:'원무접수ID',1:'SMA',2:'SMA_2'},inplace=True)")
        eval("dataA11.rename(columns={0:'원무접수ID',1:'CK',2:'CK_2',3:'CK_3'},inplace=True)")
        eval("dataA12.rename(columns={0:'원무접수ID',1:'Chromogranin',2:'Chromogranin_2'},inplace=True)")
        eval("dataA13.rename(columns={0:'원무접수ID',1:'EBV',2:'EBV_2',3:'EBV_3'},inplace=True)")
        eval("dataA14.rename(columns={0:'원무접수ID',1:'Giemsa',2:'Giemsa_2'},inplace=True)")

        dfs=[eval("dataA1"), eval("dataA2"), eval("dataA3"), eval("dataA4"), eval("dataA5"), eval("dataA6"), eval("dataA7"), eval("dataA8"), eval("dataA9"), eval("dataA10"), 
            eval("dataA11"), eval("dataA12"), eval("dataA13"), eval("dataA14")]
        data = reduce(lambda left, right: pd.merge(left, right, on='원무접수ID'), dfs)
        data1 = data.drop_duplicates()
        
        print(data1)
        data1.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/genetic_step_02.xlsx')
        self.insert(data1, db_name="gc_protocol", tb_name="genetic_step_02")


if __name__ == "__main__":
    obj = GeneticStep02()
    obj.run()