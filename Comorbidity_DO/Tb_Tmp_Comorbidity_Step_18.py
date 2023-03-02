from base_etl import BaseETL
import pandas as pd
from functools import reduce

class TbTmpComorbidityStep18(BaseETL):

    def run(
        self,
    ):

        sql = "SELECT * FROM tb_tmp_comorbidity_step_01;"
        df1 = self.df_from_sql(db_name="gc_protocol", sql=sql) 

        #-------------------------------------------------------------

        sql = "SELECT * FROM tb_tmp_comorbidity_step_02_03;"
        df2 = self.df_from_sql(db_name="gc_protocol", sql=sql) 

        #-------------------------------------------------------------

        sql = "SELECT * FROM tb_tmp_comorbidity_step_04;"
        df3 = self.df_from_sql(db_name="gc_protocol", sql=sql) 

        #-------------------------------------------------------------

        sql = "SELECT * FROM tb_tmp_comorbidity_step_06;"
        df4 = self.df_from_sql(db_name="gc_protocol", sql=sql) 

        #-------------------------------------------------------------

        sql = "SELECT * FROM tb_tmp_comorbidity_step_08;"
        df5 = self.df_from_sql(db_name="gc_protocol", sql=sql) 

        #-------------------------------------------------------------

        sql = "SELECT * FROM tb_tmp_comorbidity_step_10_03;"
        df6 = self.df_from_sql(db_name="gc_protocol", sql=sql) 

        #-------------------------------------------------------------

        sql = "SELECT * FROM tb_tmp_comorbidity_step_12;"
        df7 = self.df_from_sql(db_name="gc_protocol", sql=sql) 

        #-------------------------------------------------------------

        sql = "SELECT * FROM tb_tmp_comorbidity_step_14;"
        df8 = self.df_from_sql(db_name="gc_protocol", sql=sql) 

        #-------------------------------------------------------------

        sql = "SELECT * FROM tb_tmp_comorbidity_step_16;"
        df9 = self.df_from_sql(db_name="gc_protocol", sql=sql) 

        #-------------------------------------------------------------

        dfs = [df1,df2,df3,df4,df5,df6,df7,df8,df9]
        data = reduce(lambda left, right: pd.merge(left, right, how='outer' ), dfs)
        data = data.sort_values('ID')
        data1 = data.drop_duplicates()
        data1.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/Comorbidity_Merge_1.xlsx')
        self.insert(data1, db_name="gc_protocol", tb_name="tb_tmp_comorbidity_step_18")

    
if __name__ == "__main__":
    obj = TbTmpComorbidityStep18()
    obj.run()