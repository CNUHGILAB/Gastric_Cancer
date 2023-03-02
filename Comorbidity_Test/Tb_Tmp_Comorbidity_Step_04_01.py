import pandas as pd
from Base_ETL import BaseETL

class TbTmpComorbidityStep04_01(BaseETL):

    def run(
        self,
    ):
        df = pd.DataFrame()
        o_ID= [
            124081363474318059146898575371909003268
            ,29324010083634917301952653428783869361
            ,100298278
            ,100287234
            ,100416870
            ,100544791
            ,100290045
            ,100544793
            ,100550083
        ]
        for x in o_ID:
            f = open("Comorbidity_Test/HTN_Duration.sql",'rt',encoding='UTF8') 
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
        df = df.sort_values(['ID','HTN_Date'])
        df = df.reset_index(drop= True)
        #df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/Comorbidity_HTN_Duration.xlsx')
        self.insert(df, db_name="gc_protocol_test", tb_name="tb_tmp_comorbidity_04_01") 

if __name__ == "__main__":
    obj = TbTmpComorbidityStep04_01()
    obj.run()