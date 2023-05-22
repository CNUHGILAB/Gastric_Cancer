import pandas as pd
from Base_ETL import BaseETL

class NursingRecordEdit00(BaseETL):

    def run(self):
        
        f = open("Registry_Step/Nursing_Record_Edit00.sql", 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
            
            a = str(line)
            
            sql  = sql + a  
            
        f.close()
        
        df = self.df_from_sql(db_name = "registry_step", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Block_Mapping/Block_Mapping00.xlsx')
        
        self.insert(df, db_name = "registry_step", tb_name = "nursing_record_edit_00")


if __name__ == "__main__":
    obj = NursingRecordEdit00()
    obj.run()