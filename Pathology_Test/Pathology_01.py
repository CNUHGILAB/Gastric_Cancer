from Base_ETL import BaseETL

class Pathology01(BaseETL):
    
    def Run(self):
        
        sql = '''
            SELECT
                원무접수ID,
                환자번호,
                검사시행일,
                SUBSTRING_INDEX(
                    SUBSTRING_INDEX(
                        검사결과, '병 리 진 단', 1
                    ), '육 안 소 견', -1
                ) AS 육안소견,
                SUBSTR(검사결과, INSTR(검사결과, '병 리 진 단')) AS 병리진단
            FROM(
                SELECT * FROM gc_raw.biopsy
                WHERE (검사코드 = 'CB017' OR 검사코드 = 'CB049' OR 검사코드 = 'CB048')
            ) biopsy
            WHERE INSTR(검사결과, 'Tubular adenocarcinoma, well / moderately / poorly differentiated (          ), with') = 0
        '''
        
        df = self.df_from_sql(db_name = 'gc_raw', sql = sql)
        self.insert(df, db_name = 'gc_protocol_test', tb_name = 'pathology_01')
        
if __name__ == '__main__':
    obj = Pathology01()
    obj.Run()