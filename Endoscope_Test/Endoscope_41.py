import pandas as pd
from Base_ETL import BaseETL

class Endoscope41(BaseETL):

    def run(self):
        
        df = pd.DataFrame()
        
        sql = '''
            SELECT * FROM(
                SELECT
                    환자번호,
                    원무접수ID,
                    검사시행일,
                    검사결과 AS Duodenum_Ulcer_Bx
                FROM endoscope
                WHERE 검사서식세부항목ID = "E7630B:100624205"
            ) a
            WHERE Duodenum_Ulcer_Bx IS NOT NULL
        '''
        
        df = self.df_from_sql(db_name = "gc_raw", sql = sql)
        #print(df)
        
        self.insert(df, db_name = "gc_protocol", tb_name = "endoscope_41") 
        
if __name__ == "__main__":
    obj = Endoscope41()
    obj.run()