from base_etl import BaseETL

class REGStep00_01(BaseETL):

    def run(
        self,
    ):
        sql= '''
        SELECT
            distinct
            st0.ID,
            st0.CHKID,
            Sex,
            OP_AGE,
            HT,
            WT,
            BMI,
            ADR_1,
            ADR_2,
            FP,
            CMB,
            OP_ADM,
            OP_DISC,
            OP_Date
        FROM
            regstep01 st0
            left join regstep02 st1 on st0.ID = st1.ID
            and st0.OP_Date = st1.OpDate
        '''

        df = self.df_from_sql(db_name="gc_protocol", sql=sql) 
        df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/REG_Merge_01.xlsx')
        print(df)
        self.insert(df, db_name="gc_protocol", tb_name="regstep00_01")

    
if __name__ == "__main__":
    obj = REGStep00_01()
    obj.run()