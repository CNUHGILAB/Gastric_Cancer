from base_etl import BaseETL

class REGStep08_01(BaseETL):

    def run(
        self,
    ):

        sql = '''
            SELECT
                a.ID,
                OP_Date,
                AFP,
                max(검사시행일) as test_Date
            FROM
                regstep03_00 a
                left join regstep08_00 b on a.ID = b.환자번호
            WHERE
                검사시행일 BETWEEN DATE_SUB(OP_Date, INTERVAL 29 DAY)
                AND OP_Date
            group by
                ID,
                OP_Date
        '''

        df = self.df_from_sql(db_name="gc_protocol", sql=sql) 
        df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/REG_AFP_join.xlsx')
        print(df)
        self.insert(df, db_name="gc_protocol", tb_name="regstep08_01")

    
if __name__ == "__main__":
    obj = REGStep08_01()
    obj.run()