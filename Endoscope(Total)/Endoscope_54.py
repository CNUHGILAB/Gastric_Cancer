import pandas as pd
from Base_ETL import BaseETL

class Endoscope54(BaseETL):

    def run(self):
        
        df = pd.DataFrame()
        
        o_ID= ["Q7620G:100028413", "Q7620:100028413"]
        
        for x in o_ID:
            
            sql = '''
                SELECT * FROM(
                    SELECT
                        환자번호,
                        원무접수ID,
                        검사시행일,
                        검사결과 AS Bleeding_Nobleeding
                    FROM endoscope
                    WHERE 검사서식세부항목ID = "{0}"
                ) a
                WHERE Bleeding_Nobleeding IS NOT NULL
            '''.format(x)
            
            data = self.df_from_sql(db_name = "raw_data_total", sql = sql)
            df = pd.concat([df, data], axis = 0, sort = False) 
        
        df = df.sort_values(['환자번호', '검사시행일'])
        df = df.reset_index(drop = True)
        #print(df)
        
        self.insert(df, db_name = "endoscope_total", tb_name = "endoscope_54") 


if __name__ == "__main__":
    obj = Endoscope54()
    obj.run()