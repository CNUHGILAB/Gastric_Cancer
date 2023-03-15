import pandas as pd
from base_etl import BaseETL

class TbTmpComorbidityStep14(BaseETL):

    def run(
        self,
    ):
        df = pd.DataFrame()
        o_ID= [
            197842084436832927101402520850975255761
            ,100095839
            ,100102730
            ,100250024
        ]
        for x in o_ID:
            f = open("Comorbidity/COPD.txt",'rt',encoding='UTF8')
            sql= ''
            while True:
                line = f.readline()
                if not line: break
                a = str(line)
                sql  = sql + a
            sql = sql.format(x)    
            f.close()
            data = self.df_from_sql(db_name="gc_raw", sql=sql)
            df = pd.concat([df,data],axis = 0, sort=False) 
        df = df.sort_values(['ID','COPD_Date'])
        df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/Comorbidity_COPD_1.xlsx')
        self.insert(df, db_name="gc_protocol", tb_name="tb_tmp_comorbidity_step_14") 


if __name__ == "__main__":
    obj = TbTmpComorbidityStep14()
    obj.run()