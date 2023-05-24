import pandas as pd
from Base_ETL import BaseETL

class Comorbidity02_02(BaseETL):

    def run(self):
        
        df = pd.DataFrame()
        
        DM_Duration_ID = [61942777316975166797078582982860531525,
                100287218,
                100298265,
                100544772,
                100414361,
                100290029,
                100544774
        ]
        
        for x in DM_Duration_ID:
            
            f = open("Comorbidity(2012-2022)/Comorbidity_02_02(DM_Duration).sql", 'rt', encoding = 'UTF8')
            
            sql= ''
            
            while True:
                
                line = f.readline()
                
                if not line:
                    break
                
                a = str(line)
                
                sql  = sql + a
                
            sql = sql.format(x)
            
            f.close()
            
            data = self.df_from_sql(db_name = "raw_file_2012_2022", sql = sql)
            
            df = pd.concat([df, data], axis = 0, sort = False) 
            
        df = df.sort_values(['ID', 'DM_Date'])
        df = df.reset_index(drop = True)
        df.to_excel('D:/Gastric_Cancer_xlsx/Comorbidity(2012-2022)/Comorbidity_02_02(DM_Duration).xlsx')
        
        self.insert(df, db_name = "comorbidity_protocol", tb_name = "comorbidity_02_02") #tb_name = "comorbidity_step_02_02"


if __name__ == "__main__":
    obj = Comorbidity02_02()
    obj.run()