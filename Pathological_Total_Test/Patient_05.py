import pandas as pd
from Base_ETL import BaseETL

class Patient05(BaseETL):

    def run(self):
        
        df = pd.DataFrame()
        
        # 키에 관련된 항목
        O_ID = [
            '10268:21128:210080',
            '10268:21128:10002470'
        ]
        
        for x in O_ID :
            sql = '''
                SELECT 
                    원무접수ID AS CHKID,
                    환자번호 AS ID,
                    `[간호기록]기록작성일시` AS DATE,
                    `Value` AS HEIGHT,
                    `Ent:Atr:항목`
                # Raw Data 중 nursing_record 항목에서 추출
                FROM nursing_record
                # O_ID의 Ent:Atr:항목
                WHERE `Ent:Atr:항목` = '{0}'
            '''.format(x)
            
            data = self.df_from_sql(db_name = "gc_raw_test", sql = sql)
            
            df = pd.concat([df, data], axis = 0, sort = False)
            
        df = df.sort_values(['ID','DATE'])
        
        df = df.reset_index(drop = True)
        
        #df.to_excel('D:/Gastric_Cancer/Excel_File/Patient_Height.xlsx')
        
        self.insert(df, db_name = "patient_test", tb_name="patient_05") 

if __name__ == "__main__":
    obj = Patient05()
    obj.run()