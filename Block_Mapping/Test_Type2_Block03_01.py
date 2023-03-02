import pandas as pd
from Base_ETL import BaseETL

class TestType2B3_1(BaseETL):

    def run(self):
        
        f = open("Block_Mapping/Test_Type2_Block03_01.sql", 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
            
            a = str(line)
            
            sql  = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = "result_test", sql = sql)
        
        self.insert(df, db_name = "result_test", tb_name = "test_type2_block_03_01")

if __name__ == "__main__":
    obj = TestType2B3_1()
    obj.run()