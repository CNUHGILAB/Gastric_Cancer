from Base_ETL import BaseETL

class Comorbidity01(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                환자번호 AS ID,
                수술일자 AS OP_Date
            FROM gc_raw_test.operation
            WHERE(
                원무접수ID IN (
                    SELECT
                        DISTINCT 원무접수ID
                    FROM gc_raw_test.operation_record
                )
                AND ICD9CM코드 != '54.11'
            )
            ORDER BY ID ASC
        '''
        
        df = self.df_from_sql(db_name = "gc_raw_test", sql = sql)
        
        self.insert(df, db_name = "gc_protocol_test", tb_name = "comorbidity_01")  # tb_name = "tb_tmp_comorbidity_01"
        
if __name__ == "__main__":
    obj = Comorbidity01()
    obj.run()