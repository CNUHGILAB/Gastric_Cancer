import pandas as pd
from Base_ETL import BaseETL

class PathologyMerge07(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                st0.원무접수ID,
                st0.검사시행일,
                st0.환자번호,
                Endoscopic,
                Tumor_Location,
                Tumor_Location_2,
                Tumor_Circumference,
                Tumor_Size,
                Size_Cmt,
                Histologic_Type,
                Histologic_Type_etc,
                Lauren_Type,
                Differentiation,
                Diff_Num,
                Diff_Maj,
                Diff_P,
                MSI_Test,
                Gross_Type_O,
                Gross_Type,
                Gross_Type_int
            FROM
                pathology_merge_06 st0
                LEFT JOIN pathology_12 st1 ON (
                    st0.환자번호 = st1.환자번호
                    AND st0.원무접수ID = st1.원무접수ID
                    AND st0.검사시행일 = st1.검사시행일)
        '''
        
        df = self.df_from_sql(db_name = 'gc_protocol_test', sql = sql)
        
        self.insert(df, db_name = 'gc_protocol_test', tb_name = 'pathology_merge_07')

if __name__ == '__main__':
    obj = PathologyMerge07()
    obj.run()