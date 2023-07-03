import pandas as pd
from Base_ETL import BaseETL

class Genetic06_00(BaseETL):

    def run(self):
        
        sql = '''
            SELECT DISTINCT
                원무접수ID,
                환자번호,
                검사시행일,
                병리진단_CD31,
                병리진단_D240
            FROM(
                SELECT *,
                    CASE
                        WHEN INSTR(검사항목, 'C55622') != 0
                        THEN 병리진단
                        ELSE NULL
                    END AS 병리진단_CD31,
                    CASE
                        WHEN INSTR(검사항목, 'C55677') != 0
                        THEN 병리진단
                        ELSE NULL
                    END AS 병리진단_D240
                FROM genetic_01
            ) a
            WHERE (
                병리진단_CD31 IS NOT NULL OR 병리진단_D240 IS NOT NULL
            )
        '''
        
        df = self.df_from_sql(db_name = 'genetic_total', sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Genetic(Total)/Genetic_06_00.xlsx')
        
        self.insert(df, db_name = 'genetic_total', tb_name = 'genetic_06_00')


if __name__ == "__main__":
    obj = Genetic06_00()
    obj.run()