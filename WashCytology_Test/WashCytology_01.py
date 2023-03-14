from Base_ETL import BaseETL

class WashCytology01(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                DISTINCT 환자번호 AS ID,
                원무접수ID AS CHKID,
                검사시행일,
                검사결과
            FROM(
                SELECT * FROM biopsy
                WHERE(
                    검사코드 = 'C5622'
                    or 검사코드 = 'C5625'
                    or 검사코드 = 'CZ521'
                )
            ) a
        '''
        df = self.df_from_sql(db_name="gc_raw", sql=sql)
        print(df)
        self.insert(df, db_name="gc_protocol", tb_name="washcytology_01")


if __name__ == "__main__":
    obj = WashCytology01()
    obj.run()