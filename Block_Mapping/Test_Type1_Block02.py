import pandas as pd
from Base_ETL import BaseETL

class TestType1B2(BaseETL):

    def run(self):
        
        f = open("Result_Test/Test_Type1_Block02.sql", 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
            
            a = str(line)
            
            sql  = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = "result_test", sql = sql)
        
        self.insert(df, db_name = "result_test", tb_name = "test_type1_block_02")

if __name__ == "__main__":
    obj = TestType1B2()
    obj.run()