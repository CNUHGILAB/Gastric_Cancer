import pandas as pd
from Base_ETL import BaseETL

class TbTmpComorbidity02_02(BaseETL):

    def run(
        self,
    ):
        df = pd.DataFrame()
        o_ID= [100287228,100298275,100630824]
        for x in o_ID:
            f = open("Comorbidity_Test/DM_Medication.txt",'rt',encoding='UTF8') 
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
        df = df.sort_values(['ID','DM_Date'])
        df = df.reset_index(drop= True)
        #df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/Comorbidity_DM_Medication.xlsx')
        self.insert(df, db_name="gc_protocol_test", tb_name="tb_tmp_comorbidity_02_02") 

if __name__ == "__main__":
    obj = TbTmpComorbidity02_02()
    obj.run()