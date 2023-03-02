from base_etl import BaseETL

class REGStep15_01(BaseETL):

    def run(
        self,
    ):
        sql= '''
            SELECT
                b.환자번호 as ID,
                concat(`EMR ASA class`, `차세대 ASA class`) as ASA,
                a.OP_Date,
                수술일 as OP_DATE_1
            FROM
                regstep03_00 a
                left join regstep15_00  b on (a.ID = b.환자번호 and a.OP_Date = b.수술일)
        '''

        df = self.df_from_sql(db_name="gc_protocol", sql=sql) 
        print(df)
        self.insert(df, db_name="gc_protocol", tb_name="regstep15_01")

    
if __name__ == "__main__":
    obj = REGStep15_01()
    obj.run()