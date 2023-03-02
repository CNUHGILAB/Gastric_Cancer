import pandas as pd
from Base_ETL import BaseETL

class Comorbidity02_02(BaseETL):

    def run(
        self,
    ):
        df = pd.DataFrame()
        DM_Duration_ID= [61942777316975166797078582982860531525
                ,100287218
                ,100298265
                ,100544772
                ,100414361
                ,100290029
                ,100544774
                ]
        for x in DM_Duration_ID:
            f = open("Comorbidity_Test/DM_Duration.sql",'rt',encoding='UTF8') 
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
        self.insert(df, db_name="gc_protocol_test", tb_name="tb_tmp_comorbidity_02_01") 

if __name__ == "__main__":
    obj = Comorbidity02_02()
    obj.run()