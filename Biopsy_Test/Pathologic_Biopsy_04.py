from Base_ETL import BaseETL

class Pathologic_Biopsy04(BaseETL):

    def run(self):
        
        # Biopsy_Step_04(Size).sql = Size.sql
        f = open('Biopsy/Size.sql', 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
                
            a = str(line)
            
            sql  = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = 'gc_protocol_test', sql = sql)
        
        #print(df)
        
        self.insert(df, db_name = 'gc_protocol_test', tb_name = 'pathologic_biopsy_04') 

if __name__ == "__main__":
    obj = Pathologic_Biopsy04()
    obj.run()