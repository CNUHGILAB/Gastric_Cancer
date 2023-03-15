import pandas as pd
from base_etl import BaseETL

class GeneticStep01(BaseETL):

    def run(
        self,
    ):
        sql = '''
            SELECT
                DISTINCT
                원무접수ID,
                TRIM(
                    TRAILING substr(병리진단, instr(병리진단, '검사항목'))
                    from
                        병리진단
                ) as 병리진단
            FROM
            (
                    SELECT
                        원무접수ID,
                        substr(병리진단, instr(병리진단, 'Immunohistochemical')) as 병리진단
                    FROM
                        (
                            SELECT
                                원무접수ID,
                                substr(검사결과, instr(검사결과, '병 리 진 단')) as 병리진단
                            FROM(
                                    SELECT *
                                    FROM
                                        gc_raw.biopsy
                                    where
                                        검사코드 = 'C5502'
                                        OR 검사코드 = 'C5503'
                                        OR 검사코드 = 'C5506'
                                        OR 검사코드 = 'CB017'
                                        OR 검사코드 = 'C5606'
                                        OR 검사코드 = 'C5602'
                                        OR 검사코드 = 'C5603'
                                        OR 검사코드 = 'C5605'
                                        OR 검사코드 = 'C5607'
                                        OR 검사코드 = 'C5604'
                                        OR 검사코드 = 'C5601'
                                        OR 검사코드 = 'CB049'
                                        OR 검사코드 = 'CB048'
                                        OR 검사코드 = 'C5918'
                                        OR 검사코드 = 'C5919'
                                ) biopsy
                            Where
                                instr(
                                    검사결과,
                                    'Tubular adenocarcinoma, well / moderately / poorly differentiated (          ), with'
                                ) = 0
                                AND NULLIF(검사결과, '') IS NOT NULL
                                AND instr(검사결과, 'endoscopic biopsy') = 0
                                AND (instr(검사결과, 'mucosectomized tissue') = 0 OR (instr(검사결과, 'fragment') = 0 AND instr(검사결과, 'mucosectomized') = 0))
                        ) biopsy
                ) biopsy
        '''
        df = self.df_from_sql(db_name="gc_raw", sql=sql)
        # df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/genetic_step_01.xlsx')
        self.insert(df, db_name="gc_protocol", tb_name="genetic_step_01") 

if __name__ == "__main__":
    obj = GeneticStep01()
    obj.run()