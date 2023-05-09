import pandas as pd
from Base_ETL import BaseETL

class Data_Else04(BaseETL):

    def run(self):
        
        f = open("Block_Mapping/Data_Else04.sql", 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
            
            a = str(line)
            
            sql  = sql + a  
            
        f.close()
        
        df = self.df_from_sql(db_name = "block_mapping_protocol", sql = sql)
        
        self.insert(df, db_name = "block_mapping_protocol", tb_name = "data_else_04")


if __name__ == "__main__":
    obj = Data_Else04()
    obj.run()