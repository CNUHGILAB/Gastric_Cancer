from Base_ETL import BaseETL

class Pathology05(BaseETL):
    
    def Run(self):
        
        f = open('Pathology_Test/Lauren_Type.sql', 'rt', encoding = 'utf8')
        
        sql = ""
        
        while True:
            line = f.readline()
            
            if not line:
                break
                
            a = str(line)
            
            sql = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = 'gc_protocol_test', sql = sql)
        #df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/Path_site.xlsx')
        self.insert(df, db_name = 'gc_protocol_test', tb_name = 'pathology_05')
        
if __name__ == '__main__':
    obj = Pathology05()
    obj.Run()