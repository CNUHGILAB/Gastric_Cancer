from Base_ETL import BaseETL

class Pathologic_Biopsy13(BaseETL):

    def run(self):
        
        # Biopsy_Step_13(clear_resection_margin).sql = Clear_Resection_Margin.sql
        f = open('Biopsy/Clear_Resection_Margin.sql', 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
                
            a = str(line)
            
            sql  = sql + a  
            
        f.close()
        
        df = self.df_from_sql(db_name = 'gc_protocol_test', sql = sql)
        
        self.insert(df, db_name = 'gc_protocol_test', tb_name = 'pathologic_biopsy_13') 

if __name__ == "__main__":
    obj = Pathologic_Biopsy13()
    obj.run()