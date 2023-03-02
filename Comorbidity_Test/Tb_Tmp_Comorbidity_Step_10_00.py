import pandas as pd
from Base_ETL import BaseETL

class TbTmpComorbidityStep10_00(BaseETL):

    def run(
        self,
    ):
        df = pd.DataFrame()
        o_ID= [100095828 
            ,100102733
            ,100630839
        ]
        for x in o_ID:
            f = open("Comorbidity_Test/Heart_disease_Angina.txt",'rt',encoding='UTF8')
            sql= ''
            while True:
                line = f.readline()
                if not line: break
                a = str(line)
                sql  = sql + a
            sql = sql.format(x)    
            f.close()
            data = self.df_from_sql(db_name="gc_raw_test", sql=sql)
            df = pd.concat([df,data],axis = 0, sort=False)
            
        df = df.sort_values(['ID','Angina_Date'])
        #df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/Comorbidity_Heart_disease_Angina.xlsx')
        self.insert(df, db_name="gc_protocol_test", tb_name="tb_tmp_comorbidity_10_00") 

if __name__ == "__main__":
    obj = TbTmpComorbidityStep10_00()
    obj.run()