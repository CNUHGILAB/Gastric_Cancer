from base_etl import BaseETL
import pandas as pd

class REGStep12_01(BaseETL):

    def run(
        self,
    ):

        sql = '''
            SELECT
                ID,
                Checkin,
                MIN(AD_Date) as From_DT,
                MAX(AD_Date) as To_DT,
                AD,
                COUNT(*) as cnt
            FROM
                (
                    SELECT
                        A.*,
                        @rownum := @rownum + 1 as rownum,
                        DATE_SUB(AD_Date, INTERVAL @rownum DAY) AS AD_Date_1
                    FROM
                        gc_protocol.regstep12_00 A,
                        (
                            SELECT
                                @rownum := 0
                        ) B
                ) C
            GROUP BY
                ID,
                AD_Date_1
        '''

        df = self.df_from_sql(db_name="gc_protocol", sql=sql)
        self.insert(df, db_name="gc_protocol", tb_name="regstep12_01")

    
if __name__ == "__main__":
    obj = REGStep12_01()
    obj.run()