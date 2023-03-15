import pandas as pd
from base_etl import BaseETL

class NEWEndoscopeStep44(BaseETL):

    def run(
        self,
    ):
        df = pd.DataFrame()
        o_ID= [
                "Q7620G:100028255",
                "Q7620:100028255",
                "Q7612G:100028255",
                "Q7652G:100350197",
                "Q7643G:100350197",
                "Q7651G:100350197",
                "Q7643:100350197",
                "Q7652G:60308682813156769417194428699780084941",
                ]
        for x in o_ID:
            sql = '''
                SELECT
                *
                FROM(
                SELECT 환자번호, 원무접수ID, 검사시행일,
                검사결과 as Complication_No
                FROM endoscope
                WHERE 검사서식세부항목ID = "{0}"
                )a
                WHERE Complication_No is not null
            '''.format(x)
            data = self.df_from_sql(db_name="gc_raw", sql=sql)
            df = pd.concat([df,data],axis = 0, sort=False) 
        df = df.sort_values(['환자번호','검사시행일'])
        df = df.reset_index(drop= True)
        print(df)
        self.insert(df, db_name="gc_protocol", tb_name="newendoscopestep44") 
        

if __name__ == "__main__":
    obj = NEWEndoscopeStep44()
    obj.run()