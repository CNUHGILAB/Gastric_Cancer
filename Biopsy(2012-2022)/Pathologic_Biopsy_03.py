from Base_ETL import BaseETL

class Pathologic_Biopsy03(BaseETL):

    def run(self):
        
        # Biopsy_Step_03(Site).sql = Site.sql
        f = open('Biopsy(2012-2022)/Pathologic_Biopsy_03(Site).sql', 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
                
            a = str(line)
            
            sql  = sql + a  
            
        f.close()
        
        df = self.df_from_sql(db_name = 'biopsy_protocol', sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Biopsy(2012-2022)/Pathologic_Biopsy_03(Site).xlsx')
        
        self.insert(df, db_name = 'biopsy_protocol', tb_name = 'pathologic_biopsy_03') 


if __name__ == "__main__":
    obj = Pathologic_Biopsy03()
    obj.run()