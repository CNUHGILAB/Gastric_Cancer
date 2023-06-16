from Base_ETL import BaseETL

class Pathology(BaseETL):

    def run(self):
        
        sql = '''
            #Genetic
            SELECT
                DISTINCT st0.원무접수ID,
                st0.환자번호,
                st0.검사시행일,
                Endoscopic,
                TumorLocation,
                TumorLocation_Num,
                TumorCircumference,
                TumorSize,
                Size_Cmt,
                HistologicType,
                #HistologicType_etc,
                LaurenType,
                Differentiation,
                Diff_Num,
                Diff_Maj,
                Diff_P,
                HER2,
                `E-Cadherin`,
                `E-Cadherin Comment`,
                p53,
                p53_Comment,
                p53_Percent,
                /*
                `Ki-67`,
                `Ki-67_p` AS `Ki-67_P`,
                CD31_n_D240_1,
                CD31_n_D240_2,
                `C-Kit`,
                CD34,
                `PKC-Theta`,
                `S-100`,
                SMA,
                CK_1,
                CK_2,
                Chromogranin,
                */
                EBV,
                /*
                Giemsa,
                */
                MSI_Test,
                GrossType_O,
                GrossType,
                GrossType_Int,
                pProxMargin,
                pDistMargin,
                pSafeMargin,
                pTNM_ver,
                pT,
                pN,
                pM,
                Staging,
                pTNM_Comment,
                metLN,
                harvLN,
                LVI,
                LVI_2,
                PNI,
                PNI_2,
                Dysplasia,
                Adenoma,
                Gist,
                검사항목
            FROM
                pathology_total_00 st0
                LEFT JOIN gc_database_total.genetic st1 ON (
                    st0.환자번호 = st1.환자번호
                    AND st0.원무접수ID = st1.원무접수ID
                    AND st0.검사시행일 = st1.검사시행일
                )
        '''
        
        df = self.df_from_sql(db_name = 'pathology_total', sql = sql)
        
        self.insert(df, db_name = 'gc_database_total', tb_name = 'pathology')
        self.insert(df, db_name = 'pathology_total', tb_name = 'pathology_total_01')


if __name__ == '__main__':
    obj = Pathology()
    obj.run()