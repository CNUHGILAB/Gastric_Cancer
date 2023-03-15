import pandas as pd
from base_etl import BaseETL

class PathMergeGenetic(BaseETL):

    def run(
        self,
    ):
        sql = '''
            SELECT
                st0.원무접수ID,
                검사시행일,
                환자번호,
                endoscopic,
                TumorLocation,
                TumorLocation_2,
                TumorCircumference,
                TumorSize,
                Size_Cmt,
                histologic_type,
                histologic_type_etc,
                LaurenType,
                differentiation,
                diff_num,
                diff_maj,
                diff_p,
                HER2,
                E_Cadherin_1,
                E_Cadherin_2,
                p53,
                p53_p,
                Ki_67,
                ki_67_p,
                CD31_N_D2_40_1,
                CD31_N_D2_40_2,
                C_kit,
                CD34,
                PKC_Theta,
                s_100,
                SMA,
                CK_1,
                CK_2,
                Chromogranin,
                EBV,
                Giemsa,
                MSI_Test,
                gross_type_o,
                gross_type,
                gross_type_int,
                pProxMargin,
                pDistMargin,
                pSafeMargin,
                pTNM_VER,
                pT,
                pN,
                pM,
                Staing,
                pTNM_Comment,
                metLN,
                harvLN,
                LVI,
                LVI_2,
                PNI,
                PNI_2,
                dysplasia,
                adenoma,
                gist,
                검사항목
            FROM
                gc_db.`path` st0
                left join gc_db.genetic st1 on st0.원무접수ID = st1.원무접수ID
        '''
        df = self.df_from_sql(db_name="gc_db", sql=sql)
        self.insert(df, db_name="gc_db", tb_name="pathological_test") 
        
        df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/pathological_test.xlsx')

if __name__ == "__main__":
    obj = PathMergeGenetic()
    obj.run()