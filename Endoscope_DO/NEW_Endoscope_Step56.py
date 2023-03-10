import pandas as pd
from base_etl import BaseETL

class NEWEndoscopeStep56(BaseETL):

    def run(
        self,
    ):
        df = pd.DataFrame()
        o_ID= [
                "Q7620G:100468827",
                "Q7612G:100468827",
                "Q7620:100468827",
                "E7630L:100003250",
                "Q7620:100003250",
                "Q7652G:100003250",
                "E7630B:100003250",
                "Q7651G:100003250",
                "E7630:100003250",
                ]
        for x in o_ID:
            sql = '''
                SELECT
                *
                FROM(
                SELECT 환자번호, 원무접수ID, 검사시행일,
                검사결과 as 결과
                FROM endoscope
                WHERE 검사서식세부항목ID = "{0}"
                )a
                WHERE 결과 is not null
            '''.format(x)
            data = self.df_from_sql(db_name="gc_raw", sql=sql)
            df = pd.concat([df,data],axis = 0, sort=False) 
        df = df.sort_values(['환자번호','검사시행일'])
        df = df.reset_index(drop= True)
        print(df)
        self.insert(df, db_name="gc_protocol", tb_name="newendoscopestep56") 
        

if __name__ == "__main__":
    obj = NEWEndoscopeStep56()
    obj.run()