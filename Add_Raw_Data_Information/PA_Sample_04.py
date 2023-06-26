from Base_ETL import BaseETL
import pandas as pd

class PA_Sample04(BaseETL):

    def run(self):
        
        sql= '''
            SELECT DISTINCT *
            FROM registry_merge_20
            WHERE (
                Op_Date BETWEEN '2019-01-01' AND '2022-12-31'
            )
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Add_Raw_Data_Information/PA_Sample04.xlsx')
        #print(df)
        
        self.insert(df, db_name = "add_raw_data_information", tb_name = "pa_sample_04")


if __name__ == "__main__":
    obj = PA_Sample04()
    obj.run()