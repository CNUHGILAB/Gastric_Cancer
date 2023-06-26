from Base_ETL import BaseETL

class Pathologic_Biopsy21(BaseETL):

    def run(self):
        
        # Biopsy_Step_19(Inspection_items).sql = Inspection_Items.sql
        f = open('Biopsy(Total)/Pathologic_Biopsy_21(Inspection_Items).sql', 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
                
            a = str(line)
            
            sql  = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = 'biopsy_total', sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Biopsy(Total)/Pathologic_Biopsy_21(Inspection Items).xlsx')
        
        self.insert(df, db_name = 'biopsy_total', tb_name = 'pathologic_biopsy_21') 


if __name__ == "__main__":
    obj = Pathologic_Biopsy21()
    obj.run()