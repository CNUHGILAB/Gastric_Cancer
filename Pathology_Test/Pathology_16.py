from Base_ETL import BaseETL

class Pathology16(BaseETL):

    def run(self):
        
        f = open('Pathology_Test/Lymph_Node_Metastasis.sql', 'rt', encoding = 'UTF8')
        
        sql = ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
                
            a = str(line)
            
            sql = sql + a

        f.close()
        
        df = self.df_from_sql(db_name = 'gc_protocol_test', sql = sql)
        
        self.insert(df, db_name = 'gc_protocol_test', tb_name = 'pathology_16')

if __name__ == '__main__':
    obj = Pathology16()
    obj.run()