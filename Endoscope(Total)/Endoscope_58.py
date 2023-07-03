import pandas as pd
from Base_ETL import BaseETL

class Endoscope58(BaseETL):

    def run(self):
        
        df = pd.DataFrame()
        
        o_ID= ["Q7652G:100350186",
                "Q7643G:100350186",
                "Q7651G:100350186",
                "Q7652G:34139483978089392193655708101937349873"
        ]
        
        for x in o_ID:
            
            sql = '''
                SELECT * FROM(
                    SELECT
                        환자번호,
                        원무접수ID,
                        검사시행일,
                        검사결과 AS 시술전진단명
                    FROM endoscope
                    WHERE 검사서식세부항목ID = "{0}"
                ) a
                WHERE 시술전진단명 IS NOT NULL
            '''.format(x)
            
            data = self.df_from_sql(db_name = "raw_data_total", sql = sql)
            df = pd.concat([df, data], axis = 0, sort = False) 
        
        df = df.sort_values(['환자번호', '검사시행일'])
        df = df.reset_index(drop = True)
        #print(df)
        
        self.insert(df, db_name = "endoscope_total", tb_name = "endoscope_58") 


if __name__ == "__main__":
    obj = Endoscope58()
    obj.run()