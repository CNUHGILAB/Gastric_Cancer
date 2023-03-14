from Base_ETL import BaseETL
import pandas as pd

class OpRecord05(BaseETL):
    
    def run(self):
        
        f = open("OperationRecord_Test/Operation_Record_05.sql", 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            
            line = f.readline()
            
            if not line:
                break
            
            a = str(line)
            
            sql  = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = "gc_protocol", sql = sql)
        
        self.insert(df, db_name = "gc_db", tb_name = "operation_record") 

if __name__ == "__main__":
    obj = OpRecord05()
    obj.run()

