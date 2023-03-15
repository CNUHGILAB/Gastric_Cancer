from base_etl import BaseETL

class REGStep00_05(BaseETL):

    def run(
        self,
    ):
        sql= '''
            SELECT
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
                Alb,
                Hb,
                CEA,
                CA199,
                OP_ADM,
                OP_DISC,
                st0.OP_Date
            FROM
                regstep00_04 st0
                left join regstep07_01 st1 on st0.ID = st1.ID
                and st0.OP_Date = st1.OP_Date
        '''

        df = self.df_from_sql(db_name="gc_protocol", sql=sql) 
        df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/REG_Merge_05.xlsx')
        print(df)
        self.insert(df, db_name="gc_protocol", tb_name="regstep00_05")

    
if __name__ == "__main__":
    obj = REGStep00_05()
    obj.run()