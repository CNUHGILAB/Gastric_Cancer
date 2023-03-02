from base_etl import BaseETL

class REGStep03_00(BaseETL):

    def run(
        self,
    ):

        sql = '''
            SELECT
                DISTINCT 원무접수ID as CHKID,
                환자번호 as ID,
                수술일자 as OP_Date
            FROM
                gc_raw.operation
            WHERE
                원무접수ID in (
                    SELECT
                        DISTINCT 원무접수ID
                    FROM
                        gc_raw.operation_record
                )
                AND `수술 진료과코드` = 'GS'
        '''

        df = self.df_from_sql(db_name="gc_protocol", sql=sql) 
        df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/REG_OP_smae_record.xlsx')
        print(df)
        self.insert(df, db_name="gc_protocol", tb_name="regstep03_00")

    
if __name__ == "__main__":
    obj = REGStep03_00()
    obj.run()