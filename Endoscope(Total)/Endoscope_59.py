import pandas as pd
from Base_ETL import BaseETL

class Endoscope59(BaseETL):

    def run(self):
        
        df = pd.DataFrame()
        
        o_ID= ["Q7652G:235231778098347868470893194866060249485",
                "Q7652G:81421893142741732125213109496235122624",
                "Q7652G:100705038",
                "Q7652G:100366982"
        ]
        
        for x in o_ID:
            
            sql = '''
                SELECT * FROM(
                    SELECT
                        환자번호,
                        원무접수ID,
                        검사시행일,
                        검사결과 AS EMR
                    FROM endoscope
                    WHERE 검사서식세부항목ID = "{0}"
                ) a
                WHERE EMR IS NOT NULL
            '''.format(x)
            
            data = self.df_from_sql(db_name = "raw_data_total", sql = sql)
            df = pd.concat([df, data], axis = 0, sort = False) 
        
        df = df.sort_values(['환자번호', '검사시행일'])
        df = df.reset_index(drop = True)
        #print(df)
        
        self.insert(df, db_name = "endoscope_total", tb_name = "endoscope_59") 


if __name__ == "__main__":
    obj = Endoscope59()
    obj.run()