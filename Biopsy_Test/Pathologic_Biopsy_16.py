from Base_ETL import BaseETL

class Pathologic_Biopsy16(BaseETL):

    def run(self):
        
        # Biopsy_Step_16(lymph_node_metastasis).sql = Lymph_Node_Metastasis.sql
        f = open('Biopsy_Test/Pathologic_Biopsy_16(Lymph_Node_Metastasis).sql', 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
                
            a = str(line)
            
            sql  = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = 'gc_protocol_test', sql = sql)
        
        self.insert(df, db_name = 'gc_protocol_test', tb_name = 'pathologic_biopsy_16') 

if __name__ == "__main__":
    obj = Pathologic_Biopsy16()
    obj.run()