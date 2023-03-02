from base_etl import BaseETL

class REGStep00_11(BaseETL):

    def run(
        self,
    ):
        sql= '''
            SELECT
                cast(st0.ID as unsigned) as ID,
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
                PRE_ENDO,
                Alb,
                Hb,
                CEA,
                CA199,
                AFP,
                OP_ADM,
                OP_DISC,
                st0.OP_Date,
                OP_OPRT,
                OP_TROC,
                OP_RESC,
                OP_RECO,
                OP_BRN,
                OP_INTP,
                OP_ANTC,
                OP_PRM,
                OP_DRM,
                OP_RESC_CO,
                OP_RESC_CO_ST,
                OP_OMEN,
                OP_CURA,
                OP_DRAN_NO,
                OP_DRAN_TP,
                TumorLesion,
                TumorLocation,
                TumorLocation_1,
                TumorCircumference,
                TumorSize,
                Histology,
                LaurenType,
                DIFF,
                DIFF_MIX,
                GrossType,
                HER2,
                p53,
                EBV,
                MSI_Test,
                pT,
                pN,
                pM,
                Staing,
                metLN,
                harvLN,
                LVI,
                PNI,
                pProxMargin,
                pDistMargin,
                pSafeMargin,
                WashCytology,
                WCresult
                
            FROM
                regstep00_10 st0
                left join regstep14_00 st1 on (
                    st0.ID = st1.ID
                    and st0.OP_Date = st1.OP_Date
                )
        '''

        df = self.df_from_sql(db_name="gc_protocol", sql=sql) 
        df = df.sort_values(['ID','OP_Date'])
        df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/REG_Merge_11.xlsx')
        df = df.drop_duplicates()
        print(df)
        self.insert(df, db_name="gc_protocol", tb_name="regstep00_11")

    
if __name__ == "__main__":
    obj = REGStep00_11()
    obj.run()