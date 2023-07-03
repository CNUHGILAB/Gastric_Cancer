from Base_ETL import BaseETL

class RegistryMerge21(BaseETL):

    def run(self):
        
        sql= '''
            SELECT DISTINCT
                CAST(st0.ID AS UNSIGNED) AS ID,
                st0.CHKID,
                Sex,
                OP_AGE,
                HT,
                WT,
                BMI,
                ADR_1,
                ADR_2,
                PRE_ESD,
                PRE_ENDO,
                Alb,
                Hb,
                CEA,
                CA199,
                AFP,
                st0.OP_ADM,
                st0.OP_DISC,
                st0.OP_Date,
                재원일수,
                재입원여부,
                ICU입실여부,
                ICU재원일수,
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
                TumorLocation_Lesion,
                TumorCircumference,
                TumorSize,
                Histology,
                LaurenType,
                Diff,
                Diff_Mix,
                GrossType,
                HER2,
                p53,
                p53_Comment,
                EBV,
                MSI_Test,
                pT,
                pN,
                pM,
                Staging,
                metLN,
                harvLN,
                LVI,
                PNI,
                pProxMargin,
                pDistMargin,
                pSafeMargin,
                WashCytology,
                WC_Result,
                #ASA,
                `Cx(Ⅲa) Endoscope 검사여부`,
                사망여부,
                `검사시행여부(PCD/PTBD/PTGBD)`,
                `Exp.Lapa 여부`
            FROM registry_merge_20 st0
                LEFT JOIN registry_22_01 st1 ON (
                    st0.CHKID = st1.CHKID
                    AND st0.ID = st1.ID
                )
        '''
        
        df = self.df_from_sql(db_name = "registry_total", sql = sql) 
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_Test.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_merge_21")

    
if __name__ == "__main__":
    obj = RegistryMerge21()
    obj.run()