import pandas as pd
from Base_ETL import BaseETL

class Endoscope55(BaseETL):

    def run(self):
        
        df = pd.DataFrame()
        
        sql = '''
            SELECT * FROM(
                SELECT
                    환자번호,
                    원무접수ID,
                    검사시행일,
                    검사결과 AS Bleeding_Activebleeding
                FROM endoscope
                WHERE 검사서식세부항목ID = "Q7620G:19812815398270302713427811710852329949"
            ) a
            WHERE Bleeding_Activebleeding IS NOT NULL
        '''
        
        df = self.df_from_sql(db_name = "gc_raw", sql = sql)
        #print(df)
        
        self.insert(df, db_name = "gc_protocol", tb_name = "endoscope_55") 
        
if __name__ == "__main__":
    obj = Endoscope55()
    obj.run()