from Base_ETL import BaseETL
import pandas as pd

class PA_Test02(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                환자번호,
                원무접수ID,
                검사시행일,
                검사코드,
                검사명
            FROM blood_test
            WHERE 검사코드 = 'B2610'
        '''
            
        df = self.df_from_sql(db_name = "raw_data_total", sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Add_Raw_Data_Information/PA_Test02.xlsx')
        #print(df)
        
        self.insert(df, db_name = "add_raw_data_information", tb_name = "pa_test_02")


if __name__ == "__main__":
    obj = PA_Test02()
    obj.run()