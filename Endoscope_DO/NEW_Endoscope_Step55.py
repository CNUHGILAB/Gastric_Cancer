import pandas as pd
from base_etl import BaseETL

class NEWEndoscopeStep55(BaseETL):

    def run(
        self,
    ):
        df = pd.DataFrame()
        sql = '''
                SELECT
                *
                FROM(
                SELECT 환자번호, 원무접수ID, 검사시행일,
                검사결과 as Bleeding_Activebleeding
                FROM endoscope
                WHERE 검사서식세부항목ID = "Q7620G:19812815398270302713427811710852329949"
                )a
                WHERE Bleeding_Activebleeding is not null
            '''
        df = self.df_from_sql(db_name="gc_raw", sql=sql)
        print(df)
        self.insert(df, db_name="gc_protocol", tb_name="newendoscopestep55") 
        

if __name__ == "__main__":
    obj = NEWEndoscopeStep55()
    obj.run()