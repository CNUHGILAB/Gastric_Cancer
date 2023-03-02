import pandas as pd
from Base_ETL import BaseETL

class TestType1A2_4(BaseETL):

    def run(self):
        
        f = open("Result_Test/Test_Type1_A2_4.sql", 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
            
            a = str(line)
            
            sql  = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = "result_test", sql = sql)
        
        #df.to_excel('D:/Gastric_Cancer/Gastric_Cancer_xlsx/TEST1.xlsx')
        
        self.insert(df, db_name = "result_test", tb_name = "test_type1_a2_4")

if __name__ == "__main__":
    obj = TestType1A2_4()
    obj.run()