import pandas as pd
from base_etl import BaseETL

class TbTmpComorbidityStep10_01(BaseETL):

    def run(
        self,
    ):
        df = pd.DataFrame()
        o_ID= [100630832, 100022876, 100102732,100095829]
        for x in o_ID:
            f = open("Comorbidity/Heart_disease_MI.txt",'rt',encoding='UTF8')
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
        df = df.sort_values(['ID','MI_Date'])
        df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/Comorbidity_Heart_disease_MI.xlsx')
        self.insert(df, db_name="gc_protocol", tb_name="tb_tmp_comorbidity_step_10_01") 


if __name__ == "__main__":
    obj = TbTmpComorbidityStep10_01()
    obj.run()