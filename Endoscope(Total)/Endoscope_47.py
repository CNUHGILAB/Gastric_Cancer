import pandas as pd
from Base_ETL import BaseETL

class Endoscope47(BaseETL):

    def run(self):
        
        df = pd.DataFrame()
        
        o_ID= ["Q7651G:100027628", "Q7643:100027628", "Q7652G:100027628"]
        
        for x in o_ID:
            
            sql = '''
                SELECT * FROM(
                    SELECT
                        환자번호,
                        원무접수ID,
                        검사시행일,
                        검사결과 AS Other
                    FROM endoscope
                    WHERE 검사서식세부항목ID = "{0}"
                ) a
                WHERE Other IS NOT NULL
            '''.format(x)
            
            data = self.df_from_sql(db_name = "raw_data_total", sql = sql)
            df = pd.concat([df, data], axis = 0, sort = False) 
        
        df = df.sort_values(['환자번호', '검사시행일'])
        df = df.reset_index(drop = True)
        #print(df)
        
        self.insert(df, db_name = "endoscope_total", tb_name = "endoscope_47") 


if __name__ == "__main__":
    obj = Endoscope47()
    obj.run()