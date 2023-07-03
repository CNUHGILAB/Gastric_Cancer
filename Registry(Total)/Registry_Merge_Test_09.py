from Base_ETL import BaseETL

class RegistryMerge09(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
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
                Alb,
                Hb,
                CEA,
                CA199,
                AFP,
                OP_ADM,
                OP_DISC,
                st0.OP_DATE,
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
                pSafeMargin
            FROM
                registry_merge_07 st0
                LEFT JOIN registry_11 st1 ON (
                    st0.ID = st1.ID
                    AND st0.OP_DATE <= st1.Test_Date
                )
            GROUP BY ID, Op_Date
            HAVING COUNT(st0.OP_DATE <= st1.Test_Date) > 1
        '''
        
        df = self.df_from_sql(db_name = "registry_total", sql = sql) 
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_Merge_01.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_merge_09")

    
if __name__ == "__main__":
    obj = RegistryMerge09()
    obj.run()