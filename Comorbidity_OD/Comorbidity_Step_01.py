from base_etl import BaseETL

class ComorbidityStep01(BaseETL):

    def run(
        self,
    ):
        sql = '''
            SELECT
                환자번호 as ID,
                수술일자 as OpDate
            FROM
                gc_raw.operation
            WHERE
                원무접수ID in
                (
                    SELECT
                        distinct
                        원무접수ID
                    FROM
                        gc_raw.operation_record
                )
                and ICD9CM코드 != '54.11'
            order by ID asc
        '''
        df = self.df_from_sql(db_name="gc_raw", sql=sql)
        self.insert(df, db_name="gc_protocol", tb_name="comorbidity_step_01") 

if __name__ == "__main__":
    obj = ComorbidityStep01()
    obj.run()