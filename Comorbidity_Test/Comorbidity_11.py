import pandas as pd
from Base_ETL import BaseETL

class Comorbidity11(BaseETL):

    def run(self):
        
        df = pd.DataFrame()
        
        o_ID= [100095896,
                100095901,
                100414626,
                100414626,
                100630846,
                100630850,
                100095899,
                100095898,
                100476604,
                100476605,
                100095896
        ]
        
        for x in o_ID:
            
            f = open("Comorbidity_Test/CRF.txt", 'rt', encoding = 'UTF8')
            
            sql= ''
            
            while True:
                
                line = f.readline()
                
                if not line: 
                    break
                
                a = str(line)
                
                sql  = sql + a
                
            sql = sql.format(x)
            
            f.close()
            
            data = self.df_from_sql(db_name = "gc_raw_test", sql = sql)
            
            df = pd.concat([df, data], axis = 0, sort = False)
            
        df = df.sort_values(['ID', 'CRF_Date'])
        #df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/Comorbidity_CRF_1.xlsx')
        
        self.insert(df, db_name = "gc_protocol_test", tb_name = "comorbidity_11") # tb_name = "tb_tmp_comorbidity_11"

if __name__ == "__main__":
    obj = Comorbidity11()
    obj.run()