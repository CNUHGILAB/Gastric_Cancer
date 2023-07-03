import pandas as pd
from Base_ETL import BaseETL

class Genetic10_00(BaseETL):

    def run(self):
        
        sql = '''
            SELECT DISTINCT
                원무접수ID,
                환자번호,
                검사시행일,
                병리진단_S100
            FROM(
                SELECT *,
                    CASE
                        WHEN INSTR(검사항목, 'C55610') != 0
                        THEN 병리진단
                        ELSE NULL
                    END AS 병리진단_S100
                FROM genetic_01
            ) a
            WHERE 병리진단_S100 IS NOT NULL
        '''
        
        df = self.df_from_sql(db_name = 'genetic_total', sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Genetic(Total)/Genetic_10_00.xlsx')
        
        self.insert(df, db_name = 'genetic_total', tb_name = 'genetic_10_00')


if __name__ == "__main__":
    obj = Genetic10_00()
    obj.run()