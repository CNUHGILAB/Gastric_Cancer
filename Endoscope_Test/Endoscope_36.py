import pandas as pd
from Base_ETL import BaseETL

class Endoscope36(BaseETL):

    def run(self):
        
        df = pd.DataFrame()
        
        sql = '''
            SELECT * FROM(
                SELECT
                    환자번호,
                    원무접수ID,
                    검사시행일,
                    검사결과 AS Stomach_Ulcer_Stage_H1
                FROM endoscope
                WHERE 검사서식세부항목ID = "E7630B:100484045"
            ) a
            WHERE Stomach_Ulcer_Stage_H1 IS NOT NULL
        '''
            
        df = self.df_from_sql(db_name = "gc_raw", sql = sql)
        #print(df)
        
        self.insert(df, db_name = "gc_protocol", tb_name = "endoscope_36") 
        
if __name__ == "__main__":
    obj = Endoscope36()
    obj.run()