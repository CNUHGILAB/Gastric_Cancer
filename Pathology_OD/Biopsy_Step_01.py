from base_etl import BaseETL

class BiopsyStep01(BaseETL):

    def run(
        self,
    ):
        sql = '''
            SELECT *
            FROM (
                    SELECT
                        DISTINCT 원무접수ID,
                        환자번호,
                        검사시행일,
                        검사코드,
                        판독의,
                        SUBSTRING_INDEX(
                            SUBSTRING_INDEX(검사결과, '병 리 진 단', 1),
                            '육 안 소 견',
                            -1
                        ) as 육안소견,
                        substr(검사결과, instr(검사결과, '병 리 진 단')) as 병리진단
                    FROM (
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
                ) a
            WHERE
                instr(육안소견, 'stomach') != 0 OR instr(병리진단, 'Stomach') != 0 
                
        '''
        df = self.df_from_sql(db_name="gc_raw", sql=sql)
        df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/biopsy_raw.xlsx')
        self.insert(df, db_name="gc_protocol", tb_name="biopsy_step_01") 

if __name__ == "__main__":
    obj = BiopsyStep01()
    obj.run()
    
