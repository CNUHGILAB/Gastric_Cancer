import pymysql
import pandas as pd
from sqlalchemy import create_engine

class Patient11() :

    def run(self) :
        
        con = pymysql.connect(host = 'localhost', port = 3306, user = 'SC', password = 'cnuh12345!', db = 'patient_total', charset = 'utf8')
        
        cursor = con.cursor()
        
        sql = '''
            SELECT *
            FROM patient_10
        '''
        
        cursor.execute(sql)
        
        result = cursor.fetchall()
        
        df = pd.DataFrame(result,
                        columns = ['ID', 'CHKID', 'Sex', 'OP_Age', 'HT', 'WT',
                                    'ADR_1', 'ADR_2', 'FP', 'OP_ADM', 'OP_DISC', 'OP_Date']
        )
        
        df.astype({'HT':'float'})
        df.astype({'WT':'float'})
        
        #print(df)
        df.to_excel('D:/Gastric_Cancer_xlsx/Patient(Total)/Patient_11.xlsx')
        
        engine = create_engine("mysql+mysqldb://SC:cnuh12345!@127.0.0.1:3306/patient_total", encoding = 'utf-8')
        conn = engine.connect()

        df.to_sql(name = 'patient_11', con = engine, if_exists = 'replace', index = False)
        print("to patient_total")
        
if __name__ == "__main__":
    obj = Patient11()
    obj.run()