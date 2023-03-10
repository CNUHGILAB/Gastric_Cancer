import pandas as pd
from Base_ETL import BaseETL

class Endoscope39(BaseETL):

    def run(self):
        
        df = pd.DataFrame()
        
        o_ID= ["E7630B:100484062",
                "E7630L:100484062",
                "E7630:100414465",
                "E7630B:192743099382028332256722409400577280232",
                "E7630:156012793563392783899778360527056357536"
        ]
        
        for x in o_ID:
            
            sql = '''
                SELECT * FROM(
                    SELECT
                        환자번호,
                        원무접수ID,
                        검사시행일,
                        검사결과 AS Duodenum
                    FROM endoscope
                    WHERE 검사서식세부항목ID = "{0}"
                ) a
                WHERE Duodenum IS NOT NULL
            '''.format(x)
            
            data = self.df_from_sql(db_name = "gc_raw", sql = sql)
            df = pd.concat([df, data], axis = 0, sort = False) 
            
        df = df.sort_values(['환자번호', '검사시행일'])
        df = df.reset_index(drop = True)
        #print(df)
        
        self.insert(df, db_name = "gc_protocol", tb_name = "endoscope_39") 
        
if __name__ == "__main__":
    obj = Endoscope39()
    obj.run()