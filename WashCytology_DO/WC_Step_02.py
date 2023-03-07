from base_etl import BaseETL

class WCStep02(BaseETL):

    def run(
        self,
    ):
        sql = '''
             SELECT
                DISTINCT 원무접수ID as CHKID,
                환자번호 as ID,
                수술일자 as OP_Date
            FROM
                operation
            WHERE
                원무접수ID in (
                    SELECT
                        DISTINCT 원무접수ID
                    FROM
                        operation_record
                )
                AND `수술 진료과코드` = 'GS'
        '''
        df = self.df_from_sql(db_name="gc_raw", sql=sql)
        print(df)
        self.insert(df, db_name="gc_protocol", tb_name="wcstep02")


if __name__ == "__main__":
    obj = WCStep02()
    obj.run()