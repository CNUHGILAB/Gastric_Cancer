import pandas as pd
from Base_ETL import BaseETL

class Endoscope16(BaseETL):

    def run(self):
        
        df = pd.DataFrame()
        
        sql = '''
            SELECT * FROM(
                SELECT
                    환자번호,
                    원무접수ID,
                    검사시행일,
                    검사결과 AS Stomach_EGC_IIc
                FROM endoscope
                WHERE 검사서식세부항목ID = "E7630B:100373546"
            ) a
            WHERE Stomach_EGC_IIc IS NOT NULL
        '''
        
        df = self.df_from_sql(db_name = "raw_data_total", sql = sql)
        #print(df)
        
        self.insert(df, db_name = "endoscope_total", tb_name = "endoscope_16") 


if __name__ == "__main__":
    obj = Endoscope16()
    obj.run()