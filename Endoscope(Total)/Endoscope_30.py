import pandas as pd
from Base_ETL import BaseETL

class Endoscope30(BaseETL):

    def run(self):
        
        df = pd.DataFrame()
        
        o_ID= ["E7630B:100455250", "E7630L:100455250"]
        
        for x in o_ID:
            
            sql = '''
                SELECT * FROM(
                    SELECT
                        환자번호,
                        원무접수ID,
                        검사시행일,
                        검사결과 AS Stomach_Varix_경계 
                    FROM endoscope
                    WHERE 검사서식세부항목ID = "{0}"
                ) a
                WHERE Stomach_Varix_경계 IS NOT NULL
            '''.format(x)
            
            data = self.df_from_sql(db_name = "raw_data_total", sql = sql)
            df = pd.concat([df, data], axis = 0, sort = False) 
        
        df = df.sort_values(['환자번호', '검사시행일'])
        df = df.reset_index(drop = True)
        #print(df)
        
        self.insert(df, db_name = "endoscope_total", tb_name = "endoscope_30") 


if __name__ == "__main__":
    obj = Endoscope30()
    obj.run()