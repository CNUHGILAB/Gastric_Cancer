from base_etl import BaseETL

class REGStep00_07(BaseETL):

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
                case
                    when PRE_ESD is null then 'No'
                    else PRE_ESD
                end as PRE_ESD,
                Alb,
                Hb,
                CEA,
                CA199,
                AFP,
                OP_ADM,
                OP_DISC,
                st0.OP_Date
            FROM
                regstep00_06 st0
                left join regstep13_01 st1 on st0.ID = st1.ID
                and st0.OP_Date = st1.OP_Date
        '''

        df = self.df_from_sql(db_name="gc_protocol", sql=sql) 
        df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/REG_Merge_07.xlsx')
        print(df)
        self.insert(df, db_name="gc_protocol", tb_name="regstep00_07")

    
if __name__ == "__main__":
    obj = REGStep00_07()
    obj.run()