from Base_ETL import BaseETL

class Pathology_Total00(BaseETL):

    def run(self):
        
        sql = '''
            #Biopsy
            SELECT
                st0.원무접수ID,
                st0.환자번호,
                st0.검사시행일,
                Endoscopic,
                Tumor_Location AS TumorLocation,
                Site_Num AS TumorLocation_Num,
                Tumor_Circumference AS TumorCircumference,
                Tumor_Size AS TumorSize,
                Size_Cmt,
                Histologic_Type AS HistologicType,
                #HistologicType_etc,
                Lauren_Type AS LaurenType,
                Differentiation,
                Diff_Num,
                Diff_Maj,
                Diff_P,
                MSI_Test,
                Gross_Type_O AS GrossType_O,
                Gross_Type AS GrossType,
                Gross_Type_Int AS GrossType_Int,
                pProx_Margin AS pProxMargin,
                pDist_Margin AS pDistMargin,
                pSafe_Margin AS pSafeMargin,
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
                gc_database_total.pathologic_biopsy st0
                LEFT JOIN pathology_endoscopic st1 ON (
                    st0.환자번호 = st1.환자번호
                    AND st0.원무접수ID = st1.원무접수ID
                    AND st0.검사시행일 = st1.검사시행일
                )
        '''
        
        df = self.df_from_sql(db_name = 'pathology_total', sql = sql)
        
        self.insert(df, db_name = 'pathology_total', tb_name = 'pathology_total_00')


if __name__ == '__main__':
    obj = Pathology_Total00()
    obj.run()