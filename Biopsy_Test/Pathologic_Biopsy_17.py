from Base_ETL import BaseETL

class Pathologic_Biopsy17(BaseETL):

    def run(self):
        
        # Biopsy_Step_17(LVI_PNI).sql = LVI_PNI.sql
        f = open('Biopsy/LVI_PNI.sql', 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
                
            a = str(line)
            
            sql  = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = 'gc_protocol_test', sql = sql)
        
        self.insert(df, db_name = 'gc_protocol_test', tb_name = 'pathologic_biopsy_17') 

if __name__ == "__main__":
    obj = Pathologic_Biopsy17()
    obj.run()