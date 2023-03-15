from Base_ETL import BaseETL

class Pathologic_Biopsy01(BaseETL):

    def run(self):
        
        sql = '''
            SELECT * FROM(
                SELECT
                    DISTINCT 원무접수ID,
                    환자번호,
                    검사시행일,
                    검사코드,
                    판독의,
                    SUBSTRING_INDEX(
                        SUBSTRING_INDEX(검사결과, '병 리 진 단', 1), '육 안 소 견', -1) AS 육안소견,
                    SUBSTR(검사결과, INSTR(검사결과, '병 리 진 단')) AS 병리진단
                FROM(
                    SELECT * FROM gc_raw.biopsy
                    WHERE
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
                WHERE(
                    INSTR(검사결과, 'Tubular adenocarcinoma, well / moderately / poorly differentiated (          ), with') = 0
                    AND NULLIF(검사결과, '') IS NOT NULL
                    AND INSTR(검사결과, 'endoscopic biopsy') = 0
                    AND (INSTR(검사결과, 'mucosectomized tissue') = 0
                        OR (INSTR(검사결과, 'fragment') = 0
                        AND INSTR(검사결과, 'mucosectomized') = 0)
                    )
                )
            ) a
            WHERE(INSTR(육안소견, 'stomach') != 0 OR INSTR(병리진단, 'Stomach') != 0)
        '''
        
        df = self.df_from_sql(db_name = 'gc_raw', sql = sql)
        #df.to_excel('D:/Gastric_Cancer/Excel_File/Biopsy_Raw.xlsx')
        
        self.insert(df, db_name = 'biopsy_protocol', tb_name = 'pathologic_biopsy_01') 


if __name__ == "__main__":
    obj = Pathologic_Biopsy01()
    obj.run()