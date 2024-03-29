from Base_ETL import BaseETL

class Pathology_Patient(BaseETL):
    
    def Run(self):
        
        sql = '''
            SELECT * FROM(
                SELECT
                    DISTINCT 원무접수ID,
                    환자번호,
                    검사시행일,
                    검사코드,
                    판독의,
                    SUBSTRING_INDEX(
                        SUBSTRING_INDEX(
                            검사결과, '병 리 진 단', 1
                        ), '육 안 소 견', -1
                    ) AS 육안소견,
                    SUBSTR(검사결과, INSTR(검사결과, '병 리 진 단')) AS 병리진단
                FROM(
                    SELECT * FROM raw_data_total.biopsy
                    WHERE(
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
                    )
                ) biopsy
                WHERE(
                    INSTR(검사결과, 'Tubular adenocarcinoma, well / moderately / poorly differentiated (          ), with') = 0
                    AND NULLIF(검사결과, '') IS NOT NULL
                    AND INSTR(검사결과, 'endoscopic biopsy') = 0
                    AND (INSTR(검사결과, 'mucosectomized tissue') = 0
                        OR (INSTR(검사결과, 'fragment') = 0
                            AND INSTR(검사결과, 'mucosectomized') = 0
                        )
                    )
                )
            ) a
            WHERE(
                REGEXP_INSTR(BINARY 병리진단, '[0-9][.] [S|s]tomach') != 0
                    OR REGEXP_INSTR(BINARY 병리진단, '[0-9][.][S|s]tomach') != 0
                    OR ((REGEXP_INSTR(BINARY 병리진단, '[0-9][.] [S|s]tomach') = 0
                        OR REGEXP_INSTR(BINARY 병리진단, '[0-9][.][S|s]tomach') = 0)
                        AND REGEXP_INSTR(BINARY 병리진단, 'and [S|s]tomach') != 0)
                    OR REGEXP_INSTR(BINARY REGEXP_SUBSTR(병리진단, '[^\n]+', 1, 2), '^[S|s]tomach') != 0
                    OR REGEXP_INSTR(BINARY REGEXP_SUBSTR(병리진단, '[^\n]+', 1, 4), '^[S|s]tomach') != 0
            )
        '''
        
        df = self.df_from_sql(db_name = 'raw_data_total', sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Pathology_Patient.xlsx')
        
        self.insert(df, db_name = 'pathology_total', tb_name = 'pathology_patient')


if __name__ == '__main__':
    obj = Pathology_Patient()
    obj.Run()