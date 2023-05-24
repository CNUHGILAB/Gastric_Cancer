import pandas as pd
from Base_ETL import BaseETL

class PathologyMerge06(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                st0.원무접수ID,
                st0.검사시행일,
                st0.환자번호,
                Tumor_Location,
                #Tumor_Location_2,
                Tumor_Circumference,
                Tumor_Size,
                Size_Cmt,
                Gross_Type_O,
                Gross_Type,
                Gross_Type_int,
                Histologic_Type,
                #Histologic_Type_etc,
                Lauren_Type,
                Differentiation,
                Diff_Num,
                Diff_Maj,
                Diff_P,
                MSI_Test
            FROM
                pathology_merge_05 st0
                LEFT JOIN pathology_11 st1 ON (
                    st0.환자번호 = st1.환자번호
                    AND st0.원무접수ID = st1.원무접수ID
                    AND st0.검사시행일 = st1.검사시행일
                )
        '''
        
        df = self.df_from_sql(db_name = 'pathology_protocol', sql = sql)
        
        self.insert(df, db_name = 'pathology_protocol', tb_name = 'pathology_merge_06')

if __name__ == '__main__':
    obj = PathologyMerge06()
    obj.run()