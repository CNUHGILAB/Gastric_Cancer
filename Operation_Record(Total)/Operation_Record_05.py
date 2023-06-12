from Base_ETL import BaseETL
import pandas as pd

class OpRecord05(BaseETL):
    
    def run(self):
        
        f = open("Operation_Record(Total)/Operation_Record_05.sql", 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            
            line = f.readline()
            
            if not line:
                break
            
            a = str(line)
            
            sql  = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = "operation_record_total", sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Operation_Record(Total)/Operation_Record.xlsx')
        df.to_excel('D:/Gastric_Cancer_xlsx/Operation_Record(Total)/Operation_Record_05.xlsx')
        
        self.insert(df, db_name = "gc_database_total", tb_name = "operation_record")
        self.insert(df, db_name = "operation_record_total", tb_name = "operation_record_05")


if __name__ == "__main__":
    obj = OpRecord05()
    obj.run()

