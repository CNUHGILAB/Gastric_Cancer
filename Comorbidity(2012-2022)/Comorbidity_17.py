from Base_ETL import BaseETL
import pandas as pd
from functools import reduce

class Comorbidity17(BaseETL):

    def run(self):

        sql = "SELECT * FROM comorbidity_01;"
        df1 = self.df_from_sql(db_name = "comorbidity_protocol", sql = sql) 

        #-------------------------------------------------------------

        sql = "SELECT * FROM comorbidity_02_04;"
        df2 = self.df_from_sql(db_name = "comorbidity_protocol", sql = sql) 

        #-------------------------------------------------------------

        sql = "SELECT * FROM comorbidity_04_01;"
        df3 = self.df_from_sql(db_name="comorbidity_protocol", sql=sql) 

        #-------------------------------------------------------------

        sql = "SELECT * FROM comorbidity_06;"
        df4 = self.df_from_sql(db_name = "comorbidity_protocol", sql = sql) 

        #-------------------------------------------------------------

        sql = "SELECT * FROM comorbidity_08;"
        df5 = self.df_from_sql(db_name = "comorbidity_protocol", sql = sql) 

        #-------------------------------------------------------------

        sql = "SELECT * FROM comorbidity_10_04;"
        df6 = self.df_from_sql(db_name="comorbidity_protocol", sql=sql) 

        #-------------------------------------------------------------

        sql = "SELECT * FROM comorbidity_11;"
        df7 = self.df_from_sql(db_name = "comorbidity_protocol", sql = sql) 

        #-------------------------------------------------------------

        sql = "SELECT * FROM comorbidity_13;"
        df8 = self.df_from_sql(db_name = "comorbidity_protocol", sql = sql) 

        #-------------------------------------------------------------

        sql = "SELECT * FROM comorbidity_15;"
        df9 = self.df_from_sql(db_name = "comorbidity_protocol", sql = sql) 

        #-------------------------------------------------------------

        dfs = [df1, df2, df3, df4, df5, df6, df7, df8, df9]
        
        data = reduce(lambda left, right: pd.merge(left, right, how = 'outer'), dfs)
        
        data = data.sort_values('ID')
        
        data1 = data.drop_duplicates()
        #data1.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/Comorbidity_Merge_1.xlsx')
        
        self.insert(data1, db_name = "comorbidity_protocol", tb_name = "comorbidity_17")


if __name__ == "__main__":
    obj = Comorbidity17()
    obj.run()