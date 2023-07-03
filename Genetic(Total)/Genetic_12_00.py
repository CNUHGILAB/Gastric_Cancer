import pandas as pd
from Base_ETL import BaseETL

class Genetic12_00(BaseETL):

    def run(self):
        
        sql = '''
            SELECT DISTINCT
                원무접수ID,
                환자번호,
                검사시행일,
                병리진단_CK,
                병리진단_CK56,
                병리진단_CK7,
                병리진단_CK19,
                병리진단_CK20
            FROM(
                SELECT *,
                    CASE
                        WHEN INSTR(검사항목, 'C55624') != 0
                        THEN 병리진단
                        ELSE NULL
                    END AS 병리진단_CK,
                    CASE
                        WHEN INSTR(검사항목, 'C55663') != 0
                        THEN 병리진단
                        ELSE NULL
                    END AS 병리진단_CK56,
                    CASE
                        WHEN INSTR(검사항목, 'C55654') != 0
                        THEN 병리진단
                        ELSE NULL
                    END AS 병리진단_CK7,
                    CASE
                        WHEN INSTR(검사항목, 'C55623') != 0
                        THEN 병리진단
                        ELSE NULL
                    END AS 병리진단_CK19,
                    CASE
                        WHEN INSTR(검사항목, 'C55656') != 0
                        THEN 병리진단
                        ELSE NULL
                    END AS 병리진단_CK20
                FROM genetic_01
            ) a
            WHERE (
                병리진단_CK IS NOT NULL OR 병리진단_CK56 IS NOT NULL OR 병리진단_CK7 IS NOT NULL OR 병리진단_CK19 IS NOT NULL OR 병리진단_CK20 IS NOT NULL
            )
        '''
        
        df = self.df_from_sql(db_name = 'genetic_total', sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Genetic(Total)/Genetic_12_00.xlsx')
        
        self.insert(df, db_name = 'genetic_total', tb_name = 'genetic_12_00')


if __name__ == "__main__":
    obj = Genetic12_00()
    obj.run()