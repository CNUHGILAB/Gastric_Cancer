import pandas as pd
from Base_ETL import BaseETL

class PathologyMerge15(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                st0.원무접수ID,
                st0.검사시행일,
                st0.환자번호,
                Endoscopic,
                Tumor_Location,
                #Tumor_Location_2,
                Tumor_Circumference,
                Tumor_Size,
                Size_Cmt,
                Histologic_Type,
                #Histologic_Type_etc,
                Lauren_Type,
                Differentiation,
                Diff_Num,
                Diff_Maj,
                Diff_P,
                HER2,
                p53,
                p53_Comment,
                p53_Percent,
                MSI_Test,
                Gross_Type_O,
                Gross_Type,
                Gross_Type_int,
                pProx_Margin,
                pDist_Margin,
                pSafe_Margin,
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
                pathology_merge_14 st0
                LEFT JOIN pathology_22_02 st1 ON (
                    st0.환자번호 = st1.환자번호
                    AND st0.원무접수ID = st1.원무접수ID
                    AND st0.검사시행일 = st1.검사시행일
                )
        '''
        
        df = self.df_from_sql(db_name = 'pathology_protocol', sql = sql)
        
        self.insert(df, db_name = 'pathology_protocol', tb_name = 'pathology_merge_15')


if __name__ == '__main__':
    obj = PathologyMerge15()
    obj.run()