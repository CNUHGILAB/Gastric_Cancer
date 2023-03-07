from base_etl import BaseETL

class WCStep03(BaseETL):

    def run(
        self,
    ):
        sql = '''
             SELECT
                a.ID,
                a.CHKID,
                OP_Date,
                검사시행일,
                검사결과
            FROM
                wcstep01 a
                left join wcstep02 b on a.ID = b.ID
            WHERE
                (
                    검사시행일 BETWEEN STR_TO_DATE(OP_Date, '%%Y-%%m-%%d')
                    AND DATE_ADD(
                        STR_TO_DATE(OP_Date, '%%Y-%%m-%%d'),
                        INTERVAL + 10 DAY
                    )
                )
        '''
        df = self.df_from_sql(db_name="gc_protocol", sql=sql)
        print(df)
        self.insert(df, db_name="gc_protocol", tb_name="wcstep03")


if __name__ == "__main__":
    obj = WCStep03()
    obj.run()