from Base_ETL import BaseETL

class Pathologic_Biopsy19(BaseETL):

    def run(self):
        
        # Biopsy_Step_19(Inspection_items).sql = Inspection_Items.sql
        f = open('Biopsy_Test/Pathologic_Biopsy_19(Inspection_Items).sql', 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
                
            a = str(line)
            
            sql  = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = 'gc_protocol_test', sql = sql)
        
        # df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/path_Inspection_items.xlsx')
        
        self.insert(df, db_name = 'gc_protocol_test', tb_name = 'pathologic_biopsy_19') 

if __name__ == "__main__":
    obj = Pathologic_Biopsy19()
    obj.run()