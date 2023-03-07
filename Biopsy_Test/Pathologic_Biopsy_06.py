from Base_ETL import BaseETL

class Pathologic_Biopsy06(BaseETL):

    def run(self):
        
        # Biopsy_Step_06(Gross_Type_1).sql = Gross_Type_1.sql
        f = open('Biopsy_Test/Pathologic_Biopsy_06(Gross_Type_1).sql', 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
                
            a = str(line)
            
            sql  = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = 'gc_protocol_test', sql = sql)
        
        self.insert(df, db_name = 'gc_protocol_test', tb_name = 'pathologic_biopsy_06') 

if __name__ == "__main__":
    obj = Pathologic_Biopsy06()
    obj.run()