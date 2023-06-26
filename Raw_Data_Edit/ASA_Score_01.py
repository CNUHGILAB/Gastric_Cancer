import pandas as pd
import numpy as np
import pymysql
from sqlalchemy import create_engine

df = pd.read_excel('D:/GC Raw File/ASA_Score.xlsx', sheet_name = 0, header = 0)

df['ASA Number'] = np.nan
    
print(df)

engine = create_engine("mysql+mysqldb://SC:cnuh12345!@127.0.0.1:3306/raw_file_2012_2022", encoding = 'utf-8')
conn = engine.connect()

df.to_sql(name = 'asa_score', con = engine, if_exists = 'replace', index = False)
print("to raw_file_2012_2022")