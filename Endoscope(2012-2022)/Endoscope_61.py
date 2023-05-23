import pandas as pd
from Base_ETL import BaseETL

class Endoscope61(BaseETL):

    def run(self):
        
        df = pd.DataFrame()
        
        sql = '''
            SELECT * FROM(
                SELECT
                    환자번호,
                    원무접수ID,
                    검사시행일,
                    검사결과 AS Polypectomy
                FROM endoscope
                WHERE 검사서식세부항목ID = "Q7651G:100350189"
            ) a
            WHERE Polypectomy IS NOT NULL
        '''
        
        df = self.df_from_sql(db_name = "raw_file_2012_2022", sql = sql)
        #print(df)
        
        self.insert(df, db_name = "endoscope_protocol", tb_name = "endoscope_61") 


if __name__ == "__main__":
    obj = Endoscope61()
    obj.run()