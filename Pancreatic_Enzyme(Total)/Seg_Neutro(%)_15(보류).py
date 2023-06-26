import pymysql
import pandas as pd
from sqlalchemy import create_engine

con = pymysql.connect(host = 'localhost', port = 3306, user = 'SC', password = 'cnuh12345!', db = 'registry_total', charset = 'utf8')

cursor = con.cursor()

sql1 = '''
        SELECT
            POD1, POD2, POD3, POD4, POD5, POD6, POD7, POD8, POD9, POD10,
            POD11, POD12, POD13, POD14, POD15, POD16, POD17, POD18, POD19, POD20,
            POD21, POD22, POD23, POD24, POD25, POD26, POD27, POD28, POD29, POD30
        FROM registry_total.registry_48_02
        '''

cursor.execute(sql1)

result1 = cursor.fetchall()

df1 = pd.DataFrame(result1,
                    columns = ['POD1', 'POD2', 'POD3', 'POD4', 'POD5', 'POD6', 'POD7', 'POD8', 'POD9',
                                'POD10', 'POD11', 'POD12', 'POD13', 'POD14', 'POD15', 'POD16', 'POD17',
                                'POD18', 'POD19', 'POD20', 'POD21', 'POD22', 'POD23', 'POD24', 'POD25',
                                'POD26', 'POD27', 'POD28', 'POD29', 'POD30']
)

df1 = df1.astype('float')

df1['MAX'] = df1.max(axis = 1, skipna = True)
df1['MIN'] = df1.min(axis = 1, skipna = True)
df1['MEAN'] = df1.mean(axis = 1, skipna = True)

#print(df1)

sql2 = '''
        SELECT ID, CHKID, Op_Date
        FROM registry_total.registry_48_02
        '''

cursor.execute(sql2)

result2 = cursor.fetchall()

df2 = pd.DataFrame(result2,
                    columns = ['ID', 'CHKID', 'Op_Date']
)

df = pd.concat([df2, df1], axis = 1)

#print(df)

engine = create_engine("mysql+mysqldb://SC:cnuh12345!@127.0.0.1:3306/registry_total", encoding = 'utf-8')
conn = engine.connect()

df.to_sql(name = 'registry_48', con = engine, if_exists = 'replace', index = False)
print("to registry_total")