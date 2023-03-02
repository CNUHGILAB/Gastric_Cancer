import pandas as pd
from Base_ETL import BaseETL

class TbTmpComorbidity02_03(BaseETL):

    def run(
        self,
    ):
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
            tb_tmp_comorbidity_02_00 st0
                LEFT OUTER JOIN
            tb_tmp_comorbidity_02_01 st1 ON (st0.ID = st1.ID) and (st0.DM_Date = st1.DM_Date) and (st0.DM_MD_1 = st1.DM_MD_1)
                LEFT OUTER JOIN
            tb_tmp_comorbidity_02_02 st2 ON (st0.ID = st1.ID) and (st0.DM_Date = st2.DM_Date) and (st0.DM_MD_1 = st2.DM_MD_1)
        '''
        df = self.df_from_sql(db_name="gc_protocol_test", sql=sql) 
        #df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/Comorbidity_DM_Merge.xlsx')
        #print(df)
        self.insert(df, db_name="gc_protocol_test", tb_name="tb_tmp_comorbidity_02_03")

if __name__ == "__main__":
    obj = TbTmpComorbidity02_03()
    obj.run()