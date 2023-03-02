from Base_ETL import BaseETL

class Pathologic_Biopsy08(BaseETL):

    def run(self):
        
        # Biopsy_Step_08(Histologic_Type_1).sql = Histologic_Type_1.sql
        f = open("Biopsy/Histologic_Type_1.sql", 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
                
            a = str(line)
            
            sql  = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = 'gc_protocol_test', sql = sql)
        
        self.insert(df, db_name = 'gc_protocol_test', tb_name = 'pathologic_biopsy_08') 

if __name__ == "__main__":
    obj = Pathologic_Biopsy08()
    obj.run()