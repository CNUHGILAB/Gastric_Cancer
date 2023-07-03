import pandas as pd
from Base_ETL import BaseETL

class Genetic01(BaseETL):

    def run(self):
        
        sql = '''
            SELECT DISTINCT
                원무접수ID,
                환자번호,
                검사시행일,
                REPLACE(병리진단, 검사항목, '') AS 병리진단,
                REGEXP_REPLACE(검사항목, ' {2,}', ' ') AS 검사항목
            FROM(
                SELECT
                    원무접수ID,
                    환자번호,
                    검사시행일,
                    병리진단,
                    SUBSTR(병리진단, INSTR(병리진단, '검사항목')) AS 검사항목
                FROM biopsy_total.pathologic_biopsy_03
            ) a
        '''
        
        df = self.df_from_sql(db_name = 'raw_data_total', sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Genetic(Total)/Genetic_01.xlsx')
        
        self.insert(df, db_name = 'genetic_total', tb_name = 'genetic_01')


if __name__ == "__main__":
    obj = Genetic01()
    obj.run()