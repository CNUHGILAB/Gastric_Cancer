from base_etl import BaseETL

class REGStep06_00(BaseETL):

    def run(
        self,
    ):

        sql = '''
            SELECT
                cast(환자번호 as char) as 환자번호,
                원무접수ID,
                CEA,
                검사시행일
            FROM
                (
                    SELECT
                        환자번호,
                        원무접수ID,
                        case
                            when 검사코드 = 'B5210'
                            or 검사코드 = 'D1618' then 검사결과
                        end as CEA,
                        STR_TO_DATE(검사시행일, '%%Y-%%m-%%d') as 검사시행일
                    FROM
                        gc_raw.blood_test
                    WHERE
                        환자번호 in (
                            SELECT
                                distinct 환자번호
                            FROM
                                gc_raw.operation_record
                        )
                ) c
            WHERE
                CEA IS NOT NULL
        '''

        df = self.df_from_sql(db_name="gc_protocol", sql=sql) 
        df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/REG_CEA.xlsx')
        print(df)
        self.insert(df, db_name="gc_protocol", tb_name="regstep06_00")

    
if __name__ == "__main__":
    obj = REGStep06_00()
    obj.run()