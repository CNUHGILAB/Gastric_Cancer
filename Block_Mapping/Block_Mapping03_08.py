import pandas as pd
from Base_ETL import BaseETL

class BlockMapping03_08(BaseETL):

    def run(self):
        
        f = open("Block_Mapping/Block_Mapping03_08.sql", 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
            
            a = str(line)
            
            sql  = sql + a  
            
        f.close()
        
        df = self.df_from_sql(db_name = "block_mapping_protocol", sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Block_Mapping/Block_Mapping03_08.xlsx')
        
        self.insert(df, db_name = "block_mapping_protocol", tb_name = "block_mapping_03_08")


if __name__ == "__main__":
    obj = BlockMapping03_08()
    obj.run()