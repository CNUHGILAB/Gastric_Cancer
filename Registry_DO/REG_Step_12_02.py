from base_etl import BaseETL
import pandas as pd

class REGStep12_02(BaseETL):

    def run(
        self,
    ):

        sql = "SELECT ID FROM gc_protocol.regstep12_01;"
        df = self.df_from_sql(db_name="gc_protocol", sql=sql) 

        df2 = pd.DataFrame()
        ID_del = df.drop_duplicates(['ID'])

        ID_Data = [x for x in ID_del.loc[:,'ID']]

        for y in ID_Data:
            sql ='''
                SELECT
                    A.*,
                    @rownum := @rownum + 1 as rownum
                FROM
                    (
                        SELECT
                            ID,
                            Checkin,
                            MIN(From_DT) as From_DT,
                            MAX(To_DT) as To_DT,
                            AD,
                            COUNT(*) as Count
                        FROM
                            gc_protocol.regstep12_01 A
                        WHERE
                            ID = '{0}'
                        GROUP BY
                            AD
                    ) A,
                    (
                        SELECT
                            @rownum := 0
                    ) B
            '''.format(y)
            data2 = self.df_from_sql(db_name="gc_protocol", sql=sql)
            df2 = pd.concat([df2,data2],axis = 0, sort=False)
        
        self.insert(df2, db_name="gc_protocol", tb_name="regstep12_02")

    
if __name__ == "__main__":
    obj = REGStep12_02()
    obj.run()