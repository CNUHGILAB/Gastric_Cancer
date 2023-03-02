import pandas as pd
from Base_ETL import BaseETL

class DateType4(BaseETL):

    def run(self):
        
        f = open("Result_Test/Data_Type_4.sql", 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
            
            a = str(line)
            
            sql  = sql + a  
            
        f.close()
        
        df = self.df_from_sql(db_name = "result_test", sql = sql)
        df.to_excel('D:/Gastric_Cancer/Excel_File/Data_4.xlsx')
        
        self.insert(df, db_name = "result_test", tb_name = "data_type_4")

if __name__ == "__main__":
    obj = DateType4()
    obj.run()