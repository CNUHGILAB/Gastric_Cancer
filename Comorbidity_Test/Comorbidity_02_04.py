import pandas as pd
from Base_ETL import BaseETL

# Comorbidity_DM_Merge
class Comorbidity02_04(BaseETL):

    def run(self):
        
        sql = '''
            SELECT 
                st0.ID,
                st0.DM_Date,
                st0.DM_MD_1,
                st0.DM_MD_2,
                st0.DM,
                st1.DM_Duration,
                st2.DM_Medication
            FROM
                comorbidity_02_01 st0
                LEFT OUTER JOIN comorbidity_02_02 st1 ON (
                    st0.ID = st1.ID
                    AND st0.DM_Date = st1.DM_Date
                    AND st0.DM_MD_1 = st1.DM_MD_1
                )
                LEFT OUTER JOIN comorbidity_02_03 st2 ON (
                    st0.ID = st1.ID
                    AND st0.DM_Date = st2.DM_Date 
                    AND st0.DM_MD_1 = st2.DM_MD_1
                )
        '''
        
        df = self.df_from_sql(db_name = "comorbidity_protocol", sql = sql) 
        #df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/Comorbidity_DM_Merge.xlsx')
        #print(df)
        
        self.insert(df, db_name = "comorbidity_protocol", tb_name = "comorbidity_02_04") # tb_name = "tb_tmp_comorbidity_02_03"


if __name__ == "__main__":
    obj = Comorbidity02_04()
    obj.run()