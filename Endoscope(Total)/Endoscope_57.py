import pandas as pd
from Base_ETL import BaseETL

class Endoscope57(BaseETL):

    def run(self):
        
        df = pd.DataFrame()
        
        o_ID= ["E7630B:16038988628423345213304345075692396701",
                "Q7652G:99731618360601644754385816523401300318",
                "E7630:88179382691897109671070262762557762534",
                "E7630B:100773568",
                "E7630L:100773568",
                "Q7652G:100683517",
                "Q7643G:100683517",
                "Q7651G:100683517",
                "E7630:100773583"
        ]
        
        for x in o_ID:
            
            sql = '''
                SELECT * FROM(
                    SELECT
                        환자번호,
                        원무접수ID,
                        검사시행일,
                        검사결과 AS 집도의
                    FROM endoscope
                    WHERE 검사서식세부항목ID = "{0}"
                ) a
                WHERE 집도의 IS NOT NULL
            '''.format(x)
            
            data = self.df_from_sql(db_name = "raw_data_total", sql = sql)
            df = pd.concat([df, data], axis = 0, sort = False) 
        
        df = df.sort_values(['환자번호', '검사시행일'])
        df = df.reset_index(drop = True)
        #print(df)
        
        self.insert(df, db_name = "endoscope_total", tb_name = "endoscope_57") 


if __name__ == "__main__":
    obj = Endoscope57()
    obj.run()