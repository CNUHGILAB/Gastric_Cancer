import pandas as pd
from Base_ETL import BaseETL

class Endoscope19(BaseETL):

    def run(self):
        
        df = pd.DataFrame()
        
        o_ID= ["E7630L:100399082", "E7630B:100399082"]
        
        for x in o_ID:
            
            sql = '''
                SELECT * FROM(
                    SELECT
                        환자번호,
                        원무접수ID,
                        검사시행일,
                        검사결과 AS Stomach_Polyp_Location
                    FROM endoscope
                    WHERE 검사서식세부항목ID = "{0}"
                ) a
                WHERE Stomach_Polyp_Location IS NOT NULL
            '''.format(x)
            
            data = self.df_from_sql(db_name = "raw_file_2012_2022", sql = sql)
            df = pd.concat([df, data], axis = 0, sort = False)
        
        df = df.sort_values(['환자번호', '검사시행일'])
        df = df.reset_index(drop = True)
        #print(df)
        
        self.insert(df, db_name = "endoscope_protocol", tb_name = "endoscope_19") 


if __name__ == "__main__":
    obj = Endoscope19()
    obj.run()