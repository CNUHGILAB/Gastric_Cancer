import pandas as pd
from Base_ETL import BaseETL

class Comorbidity15(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                환자번호 AS ID,
                의무기록작성일 AS CVA_Date,
                `의무기록 환자진료과코드` AS CVA_MD_1,
                `의무기록 환자진료과` AS CVA_MD_2,
                CASE
                    WHEN 진료서식구성원소ID = '100095806'
                    THEN REPLACE(의무기록내용, '1', '+')
                    WHEN 진료서식구성원소ID = '100095805'
                    THEN REPLACE(의무기록내용, '1', '-')
                END AS CVA
            FROM gc_raw.outpatient
            WHERE(진료서식구성원소ID = '100095806' OR 진료서식구성원소ID = '100095805')
        '''
        
        df = self.df_from_sql(db_name = "comorbidity_protocol", sql = sql) 

        df1 = pd.DataFrame()
        
        o_ID= [100630881, 100739422, 100313500]
        
        for x in o_ID:
            
            f = open("Comorbidity_Test/Comorbidity_15(CVA).txt", 'rt', encoding = 'UTF8')
            
            sql= ''
            
            while True:
                
                line = f.readline()
                
                if not line: 
                    break
                
                a = str(line)
                
                sql  = sql + a
                
            sql = sql.format(x)
            
            f.close()
            
            data = self.df_from_sql(db_name = "gc_raw", sql = sql)
            
            df1 = pd.concat([df1, data], axis = 0, sort = False) 
        
        df2 = pd.concat([df, df1])
        df2 = df2.sort_values(['ID', 'CVA_Date'])
        #df2.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/Comorbidity_CVA_1.xlsx')
        #print(df2)
        
        self.insert(df2, db_name = "comorbidity_protocol", tb_name = "comorbidity_15") # tb_name = "tb_tmp_comorbidity_15"


if __name__ == "__main__":
    obj = Comorbidity15()
    obj.run()