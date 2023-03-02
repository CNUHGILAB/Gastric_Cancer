import pandas as pd
from Base_ETL import BaseETL

class DateType1(BaseETL):

    def run(self):
        
        f = open("Result_Test/Data_Type_1.sql", 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
            
            a = str(line)
            
            sql  = sql + a  
            
        f.close()
        
        df = self.df_from_sql(db_name = "result_test", sql = sql)
        df.to_excel('D:/Gastric_Cancer/Excel_File/Data_1.xlsx')
        
        self.insert(df, db_name = "result_test", tb_name = "data_type_1")

if __name__ == "__main__":
    obj = DateType1()
    obj.run()