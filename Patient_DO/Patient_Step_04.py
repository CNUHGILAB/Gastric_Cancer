import pandas as pd
from base_etl import BaseETL


class PatientStep04(BaseETL):

    def run(
        self,
    ):
        df = pd.DataFrame()
        o_ID= [
            '10109:21093:210070'
            ,'10109:21093:10002480'
            ,'10109:21093:401'
            ,'10109:21093:402'
            ,'10109:21093:5444'
                ]
        for x in o_ID:
            sql= '''
                SELECT 
                    원무접수ID as CHKID
                    ,환자번호 as ID
                    ,`[간호기록]기록작성일시` as Date
                    ,`Value` as weight
                    ,`Ent:Atr:항목`
                FROM 
                    nursing_record
                WHERE 
                    `Ent:Atr:항목` = '{0}'
            '''.format(x)    
            data = self.df_from_sql(db_name="gc_raw", sql=sql)
            df = pd.concat([df,data],axis = 0, sort=False) 
        df = df.sort_values(['ID','Date'])
        df = df.reset_index(drop= True)
        df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/Patient_weight.xlsx')
        self.insert(df, db_name="gc_protocol", tb_name="patient_step_04") 

    
if __name__ == "__main__":
    obj = PatientStep04()
    obj.run()