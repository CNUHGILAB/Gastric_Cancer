from Base_ETL import BaseETL

class Macroscopic_Biopsy02(BaseETL):

    def run(self):
        
        f = open("Biopsy/Macroscopic_Biopsy_02(Site).sql", 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
            
            a = str(line)
            
            sql  = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = "gc_protocol_test", sql = sql)
        
        # df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/finding_site.xlsx')
        
        self.insert(df, db_name = "gc_protocol_test", tb_name = "macroscopic_biopsy_02") 

if __name__ == "__main__":
    obj = Macroscopic_Biopsy02()
    obj.run()
    
