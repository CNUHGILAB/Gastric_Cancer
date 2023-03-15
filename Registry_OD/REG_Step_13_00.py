from base_etl import BaseETL

class REGStep13_00(BaseETL):

    def run(
        self,
    ):
        sql= '''
            SELECT
                distinct 환자번호,
                원무접수ID,
                검사시행일,
                case
                    when 환자번호 is not null then 'YES'
                end as ESD
            FROM
                gc_raw.test
            where
                검사코드 = 'Q7652G'
        '''

        df = self.df_from_sql(db_name="gc_protocol", sql=sql) 
        df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/REG_ESD.xlsx')
        print(df)
        self.insert(df, db_name="gc_protocol", tb_name="regstep13_00")

    
if __name__ == "__main__":
    obj = REGStep13_00()
    obj.run()