import pandas as pd
from Base_ETL import BaseETL

class Patient04(BaseETL):

    def run(self):
        
        df = pd.DataFrame()
        
        # 몸무게에 관련된 항목
        O_ID = ['10109:21093:210070',
                '10109:21093:10002480',
                '10109:21093:401',
                '10109:21093:402',
                '10109:21093:5444'
        ]
        
        for x in O_ID :
            
            sql = '''
                SELECT 
                    원무접수ID AS CHKID,
                    환자번호 AS ID,
                    `[간호기록]기록작성일시` AS Date,
                    `Value` AS Weight,
                    `Ent:Atr:항목`
                # Raw Data 중 nursing_record 항목에서 추출
                FROM nursing_record
                # O_ID의 Ent:Atr:항목
                WHERE `Ent:Atr:항목` = '{0}'
            '''.format(x)
            
            data = self.df_from_sql(db_name = "raw_data_total", sql = sql)
            
            df = pd.concat([df, data], axis = 0, sort = False) 
            
        df = df.sort_values(['ID', 'Date'])
        
        df = df.reset_index(drop = True)
        df.to_excel('D:/Gastric_Cancer_xlsx/Patient(Total)/Patient_04(Weight).xlsx')
        
        self.insert(df, db_name = "patient_total", tb_name = "patient_04") 


if __name__ == "__main__":
    obj = Patient04()
    obj.run()