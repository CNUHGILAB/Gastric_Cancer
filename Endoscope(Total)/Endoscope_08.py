import pandas as pd
from Base_ETL import BaseETL

class Endoscope08(BaseETL):

    def run(self):
        
        df = pd.DataFrame()
        
        o_ID= ["E7630B:100484050",
                "E7630L:100484050",
                "E7630:100414463",
                "E7630B:127667749711822919707503491584192835016",
                "E7630L:127667749711822919707503491584192835016",
                "E7630:175617403315093658336313464990500008617"
        ]
        
        for x in o_ID:
            
            sql = '''
                SELECT * FROM(
                    SELECT
                        환자번호,
                        원무접수ID,
                        검사시행일,
                        검사결과 AS Stomach  
                    FROM endoscope
                    WHERE 검사서식세부항목ID = "{0}"
                ) a
                WHERE Stomach IS NOT NULL
            '''.format(x)
            
            data = self.df_from_sql(db_name = "raw_data_total", sql = sql)
            df = pd.concat([df, data], axis = 0, sort = False)
            
        df = df.sort_values(['환자번호', '검사시행일'])
        df = df.reset_index(drop = True)
        #print(df)
        
        self.insert(df, db_name = "endoscope_total", tb_name = "endoscope_08") 


if __name__ == "__main__":
    obj = Endoscope08()
    obj.run()