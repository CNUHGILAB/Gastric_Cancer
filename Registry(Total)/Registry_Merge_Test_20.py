from Base_ETL import BaseETL

class RegistryMerge20(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                DISTINCT CAST(st0.ID AS UNSIGNED) AS ID,
                st0.CHKID,
                Sex,
                OP_AGE,
                HT,
                WT,
                BMI,
                ADR_1,
                ADR_2,
                FP,
                CASE
                    WHEN PRE_ESD IS NULL
                    THEN 'No'
                    ELSE PRE_ESD
                END AS PRE_ESD,
                PRE_ENDO,
                Alb,
                Hb,
                CEA,
                CA199,
                AFP,
                OP_ADM,
                OP_DISC,
                st0.OP_Date,
                재원일수,
                재입원여부,
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
                ASA,
                `검사시행여부(PCD/PTBD/PTGBD)`,
                `P.Amylase POD1`,
                `P.Amylase POD2`,
                `P.Amylase POD3`,
                `P.Amylase POD4`,
                `T.Amylase POD1`,
                `T.Amylase POD2`,
                `T.Amylase POD3`,
                `T.Amylase POD4`,
                `Lipase POD1`,
                `Lipase POD2`,
                `Lipase POD3`,
                `Lipase POD4`,
                `WBC POD1`,
                `WBC POD2`,
                `WBC POD3`,
                `WBC POD4`,
                `Seg.Neutro.P POD1`,
                `Seg.Neutro.P POD2`,
                `Seg.Neutro.P POD3`,
                `Seg.Neutro.P POD4`,
                `CRP POD1`,
                `CRP POD2`,
                `CRP POD3`,
                `CRP POD4`,
                `P.Amylase/T.Amylase POD1`,
                `P.Amylase/T.Amylase POD2`,
                `P.Amylase/T.Amylase POD3`,
                `P.Amylase/T.Amylase POD4`
                /*
                POD1,
                POD2,
                POD3,
                POD4,
                POD5,
                POD6,
                POD7,
                POD8,
                POD9,
                POD10,
                POD11,
                POD12,
                POD13,
                POD14,
                POD15,
                POD16,
                POD17,
                POD18,
                POD19,
                POD20,
                POD21,
                POD22,
                POD23,
                POD24,
                POD25,
                POD26,
                POD27,
                POD28
                POD29,
                POD30,
                `MIN`,
                `MAX`,
                MEAN
                */
            FROM registry_merge_19 st0
                LEFT JOIN pancreatic_enzyme_protocol.pancreatic_enzyme_05 st1 ON (
                    st0.ID = st1.ID
                    AND st0.CHKID = st1.CHKID
                    AND st0.Op_Date = st1.Op_Date
                )
        '''
        
        df = self.df_from_sql(db_name = "registry_total", sql = sql) 
        df.to_excel('D:/Gastric_Cancer_xlsx/Registry(Total)/Registry_Test.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_merge_20")

    
if __name__ == "__main__":
    obj = RegistryMerge20()
    obj.run()