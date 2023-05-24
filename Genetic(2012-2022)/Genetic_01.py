import pandas as pd
from Base_ETL import BaseETL

class Genetic01(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                DISTINCT
                원무접수ID,
                환자번호,
                검사시행일,
                TRIM(
                    TRAILING SUBSTR(병리진단, INSTR(병리진단, '검사항목'))
                    FROM 병리진단
                ) AS 병리진단
            FROM(
                SELECT
                    원무접수ID,
                    환자번호,
                    검사시행일,
                    SUBSTR(병리진단, INSTR(병리진단, 'Immunohistochemical')) AS 병리진단
                FROM(
                    SELECT
                        원무접수ID,
                        환자번호,
                        검사시행일,
                        SUBSTR(검사결과, INSTR(검사결과, '병 리 진 단')) AS 병리진단
                    FROM(
                        SELECT * FROM raw_file_2012_2022.biopsy
                        WHERE(
                            검사코드 = 'C5502'
                            OR 검사코드 = 'C5503'
                            OR 검사코드 = 'C5506'
                            OR 검사코드 = 'C5601'
                            OR 검사코드 = 'C5602'
                            OR 검사코드 = 'C5603'
                            OR 검사코드 = 'C5604'
                            OR 검사코드 = 'C5605'
                            OR 검사코드 = 'C5606'
                            OR 검사코드 = 'C5607'
                            OR 검사코드 = 'C5918'
                            OR 검사코드 = 'C5919'
                            OR 검사코드 = 'CB017'
                            OR 검사코드 = 'CB048'
                            OR 검사코드 = 'CB049'
                        )
                    ) biopsy
                    WHERE(
                        INSTR(검사결과, 'Tubular adenocarcinoma, well / moderately / poorly differentiated (          ), with') = 0
                            AND NULLIF(검사결과, '') IS NOT NULL
                            AND INSTR(검사결과, 'endoscopic biopsy') = 0
                            AND (INSTR(검사결과, 'mucosectomized tissue') = 0 OR (INSTR(검사결과, 'fragment') = 0 AND INSTR(검사결과, 'mucosectomized') = 0)
                        )
                    )
                ) biopsy
            ) biopsy
        '''
        
        df = self.df_from_sql(db_name = 'raw_file_2012_2022', sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Genetic(2012-2022)/Genetic_01.xlsx')
        
        self.insert(df, db_name = 'genetic_protocol', tb_name = 'genetic_01')


if __name__ == "__main__":
    obj = Genetic01()
    obj.run()