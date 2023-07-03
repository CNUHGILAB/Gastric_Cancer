import pandas as pd
from Base_ETL import BaseETL

class Endoscope32(BaseETL):

    def run(self):
        
        df = pd.DataFrame()
        
        sql = '''
            SELECT * FROM(
                SELECT
                    환자번호,
                    원무접수ID,
                    검사시행일,
                    검사결과 AS Stomach_Cancer_Description
                FROM endoscope
                WHERE 검사서식세부항목ID = "E7630B:100373553"
            ) a
            WHERE Stomach_Cancer_Description IS NOT NULL
        '''
        
        df = self.df_from_sql(db_name = "raw_data_total", sql = sql)
        #print(df)
        
        self.insert(df, db_name = "endoscope_total", tb_name = "endoscope_32") 


if __name__ == "__main__":
    obj = Endoscope32()
    obj.run()