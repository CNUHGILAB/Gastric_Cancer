import pandas as pd
from base_etl import BaseETL


class PatientStep05(BaseETL):

    def run(
        self,
    ):
        df = pd.DataFrame()
        o_ID= [
            '10268:21128:210080',
            '10268:21128:10002470'
                ]
        for x in o_ID:
            sql= '''
                SELECT 
                    원무접수ID as CHKID
                    ,환자번호 as ID
                    ,`[간호기록]기록작성일시` as Date
                    ,`Value` as height
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
        df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/Patient_height.xlsx')
        self.insert(df, db_name="gc_protocol", tb_name="patient_step_05") 

    
if __name__ == "__main__":
    obj = PatientStep05()
    obj.run()