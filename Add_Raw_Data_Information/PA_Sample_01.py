from Base_ETL import BaseETL
import pandas as pd

class PA_Sample01(BaseETL):

    def run(self):
        
        sql= '''
            SELECT *
            FROM registry_51
            WHERE (
                NULLIF(POD1, '') IS NOT NULL AND NULLIF(POD3, '') IS NULL AND NULLIF(POD5, '') IS NOT NULL
            )
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Add_Raw_Data_Information/PA_Sample01.xlsx')
        #print(df)
        
        self.insert(df, db_name = "add_raw_data_information", tb_name = "pa_sample_01")


if __name__ == "__main__":
    obj = PA_Sample01()
    obj.run()