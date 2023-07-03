import pandas as pd
from Base_ETL import BaseETL

class Genetic08_00(BaseETL):

    def run(self):
        
        sql = '''
            SELECT DISTINCT
                원무접수ID,
                환자번호,
                검사시행일,
                병리진단_CD34
            FROM(
                SELECT *,
                    CASE
                        WHEN INSTR(검사항목, 'C55646') != 0
                        THEN 병리진단
                        ELSE NULL
                    END AS 병리진단_CD34
                FROM genetic_01
            ) a
            WHERE 병리진단_CD34 IS NOT NULL
        '''
        
        df = self.df_from_sql(db_name = 'genetic_total', sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Genetic(Total)/Genetic_08_00.xlsx')
        
        self.insert(df, db_name = 'genetic_total', tb_name = 'genetic_08_00')


if __name__ == "__main__":
    obj = Genetic08_00()
    obj.run()