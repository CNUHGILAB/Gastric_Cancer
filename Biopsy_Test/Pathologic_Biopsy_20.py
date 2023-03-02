from Base_ETL import BaseETL

class Pathologic_Biopsy20(BaseETL):

    def run(self):
        
        # Biopsy_Step_20(Merge).sql = Biopsy_Merge.sql
        f = open('Biopsy/Biopsy_Merge.sql', 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
                
            a = str(line)
            
            sql  = sql + a  
            
        f.close()
        
        df = self.df_from_sql(db_name = 'gc_protocol_test', sql = sql)
        
        df = df.sort_values(['환자번호','검사시행일'])
        
        df = df.reset_index(drop = True)
        
        df = df.drop_duplicates()
        
        #df.to_excel('D:/Gastric_Cancer/Excel_File/Biopsy_Merge.xlsx')
        
        self.insert(df, db_name = 'gc_protocol_test', tb_name = 'pathologic_biopsy') 

if __name__ == "__main__":
    obj = Pathologic_Biopsy20()
    obj.run()