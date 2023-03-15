from base_etl import BaseETL

class REGStep14_00(BaseETL):

    def run(
        self,
    ):
        sql= '''
            SELECT
                b.ID,
                b.CHKID,
                endo as PRE_ENDO,
                a.OP_Date,
                Date
            FROM
                regstep03_00 a
                left join endoscopestep05 b on a.ID = b.ID
            where
                Date(b.`Date`) BETWEEN DATE_SUB(a.OP_Date, INTERVAL 59 DAY)
                AND a.OP_Date
            group by
                ID, OP_Date 
            order by
                ID,
                Date
        '''

        df = self.df_from_sql(db_name="gc_protocol", sql=sql) 
        print(df)
        self.insert(df, db_name="gc_protocol", tb_name="regstep14_00")

    
if __name__ == "__main__":
    obj = REGStep14_00()
    obj.run()