from Base_ETL import BaseETL
import pandas as pd

class OpRecord04(BaseETL):
    
    def run(self):
        
        f = open("Operation_Record(2012-2022)/Operation_Record_04.sql", 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            
            line = f.readline()
            
            if not line:
                break
            
            a = str(line)
            
            sql  = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = "operation_record_protocol", sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Operation_Record(2012-2022)/Operation_Record_04.xlsx')
        
        self.insert(df, db_name = "operation_record_protocol", tb_name = "operation_record_04") 


if __name__ == "__main__":
    obj = OpRecord04()
    obj.run()

