import pandas as pd
from base_etl import BaseETL

class NEWEndoscopeStep02(BaseETL):

    def run(
        self,
    ):
        df = pd.DataFrame()
        o_ID= [
                "E7630B:100460234",
                "E7630B:100460240",
                "E7630L:100460234"
                ]
        for x in o_ID:
            sql = '''
                SELECT
                *
                FROM(
                SELECT 환자번호, 원무접수ID, 검사시행일,
                검사결과 as Esophagus_Esophagitis_LA분류 
                FROM endoscope
                WHERE 검사서식세부항목ID = "{0}"
                )a
                WHERE Esophagus_Esophagitis_LA분류 is not null
            '''.format(x)
            data = self.df_from_sql(db_name="gc_raw", sql=sql)
            df = pd.concat([df,data],axis = 0, sort=False) 
        df = df.sort_values(['환자번호','검사시행일'])
        df = df.reset_index(drop= True)
        print(df)
        self.insert(df, db_name="gc_protocol", tb_name="newendoscopestep02") 
        

if __name__ == "__main__":
    obj = NEWEndoscopeStep02()
    obj.run()