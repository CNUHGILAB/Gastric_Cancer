import pandas as pd
from Base_ETL import BaseETL

class Endoscope38(BaseETL):

    def run(self):
        
        df = pd.DataFrame()
        
        sql = '''
            SELECT * FROM(
                SELECT
                    환자번호,
                    원무접수ID,
                    검사시행일,
                    검사결과 AS Stomach_Varix_출혈유무
                FROM endoscope
                WHERE 검사서식세부항목ID = "E7630B:100373447"
            ) a
            WHERE Stomach_Varix_출혈유무 IS NOT NULL
        '''
        
        df = self.df_from_sql(db_name = "gc_raw", sql = sql)
        #print(df)
        
        self.insert(df, db_name = "endoscope_protocol", tb_name = "endoscope_38") 


if __name__ == "__main__":
    obj = Endoscope38()
    obj.run()