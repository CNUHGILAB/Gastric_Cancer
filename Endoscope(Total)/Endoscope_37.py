import pandas as pd
from Base_ETL import BaseETL

class Endoscope37(BaseETL):

    def run(self):
        
        df = pd.DataFrame()
        
        sql = '''
            SELECT * FROM(
                SELECT
                    환자번호,
                    원무접수ID,
                    검사시행일,
                    검사결과 AS Stomach_Varix_Location
                FROM endoscope
                WHERE 검사서식세부항목ID = "E7630B:100460249"
            ) a
            WHERE Stomach_Varix_Location IS NOT NULL
        '''
        
        df = self.df_from_sql(db_name = "raw_data_total", sql = sql)
        #print(df)
        
        self.insert(df, db_name = "endoscope_total", tb_name = "endoscope_37") 


if __name__ == "__main__":
    obj = Endoscope37()
    obj.run()