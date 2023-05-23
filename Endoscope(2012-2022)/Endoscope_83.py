import pandas as pd
from Base_ETL import BaseETL

class Endoscope83(BaseETL):

    def run(self):
        
        df = pd.DataFrame()
        
        o_ID= ["E7630B:166937746329555011244100912248486105249",
                "Q7652G:49250211627222617084619338728520809433",
                "E7630L:166937746329555011244100912248486105249",
                "Q7620G:300791720872123293343873327707773558312",
                "E7630B:100025890",
                "E7630L:100025890",
                "Q7620G:100028438",
                "Q7620:100028438",
                "Q7652G:100441147",
                "Q7643G:100441147",
                "Q7651G:100441147",
                "Q7643:100441147"
        ]
        
        for x in o_ID:
            
            sql = '''
                SELECT * FROM(
                    SELECT
                        환자번호,
                        원무접수ID,
                        검사시행일,
                        검사결과 AS 조직검사유무
                    FROM endoscope
                    WHERE 검사서식세부항목ID = "{0}"
                ) a
                WHERE 조직검사유무 IS NOT NULL
            '''.format(x)
            
            data = self.df_from_sql(db_name = "raw_file_2012_2022", sql = sql)
            df = pd.concat([df, data], axis = 0, sort = False) 
        
        df = df.sort_values(['환자번호', '검사시행일'])
        df = df.reset_index(drop = True)
        #print(df)
        
        self.insert(df, db_name = "endoscope_protocol", tb_name = "endoscope_83") 


if __name__ == "__main__":
    obj = Endoscope83()
    obj.run()