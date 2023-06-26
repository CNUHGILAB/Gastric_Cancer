import pymysql
import pandas as pd
from sqlalchemy import create_engine

class PancreaticAmylase01():
        
        def run(self):
                
                df = pd.read_excel('D:/GC Raw File/PA_Comment.xlsx')

                engine = create_engine("mysql+mysqldb://SC:cnuh12345!@127.0.0.1:3306/pancreatic_enzyme_protocol", encoding = 'utf-8')
                conn = engine.connect()

                df.to_sql(name = 'pancreatic_amylase_01', con = engine, if_exists = 'replace', index = False)
                print("to pancreatic_enzyme_protocol")
                
                
if __name__ == "__main__":
        obj = PancreaticAmylase01()
        obj.run()