import pandas as pd
from Base_ETL import BaseETL

class NursingRecord00(BaseETL):

    def run(self):
        
        f = open("Raw_Data_Edit/Nursing_Record_00.sql", 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
            
            a = str(line)
            
            sql  = sql + a  
            
        f.close()
        
        df = self.df_from_sql(db_name = "raw_file_2012_2022", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Raw_Data_Edit/Nursing_Record_00.xlsx')
        
        self.insert(df, db_name = "raw_data_edit", tb_name = "nursing_record_00")


if __name__ == "__main__":
    obj = NursingRecord00()
    obj.run()