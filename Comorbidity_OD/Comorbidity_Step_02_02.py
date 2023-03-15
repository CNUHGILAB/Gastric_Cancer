import pandas as pd
from base_etl import BaseETL

class ComorbidityStep02_02(BaseETL):

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
            f = open("Comorbidity/DM_Duration.sql",'rt',encoding='UTF8') 
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
        df = df.sort_values(['ID','DM_Date'])
        df = df.reset_index(drop= True)
        self.insert(df, db_name="gc_protocol", tb_name="comorbidity_step_02_02") 

if __name__ == "__main__":
    obj = ComorbidityStep02_02()
    obj.run()