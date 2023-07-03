import pandas as pd
from Base_ETL import BaseETL

class Endoscope33(BaseETL):

    def run(self):
        
        df = pd.DataFrame()
        
        sql = '''
            SELECT * FROM(
                SELECT
                    환자번호,
                    원무접수ID,
                    검사시행일,
                    검사결과 AS Stomach_General_Normal
                FROM endoscope
                WHERE 검사서식세부항목ID = "E7630B:100373533"
            ) a
            WHERE Stomach_General_Normal IS NOT NULL
        '''
        
        df = self.df_from_sql(db_name = "raw_data_total", sql = sql)
        #print(df)
        
        self.insert(df, db_name = "endoscope_total", tb_name = "endoscope_33") 


if __name__ == "__main__":
    obj = Endoscope33()
    obj.run()