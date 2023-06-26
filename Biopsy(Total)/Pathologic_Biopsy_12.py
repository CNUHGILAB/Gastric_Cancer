from Base_ETL import BaseETL

class Pathologic_Biopsy12(BaseETL):

    def run(self):
        
        # Biopsy_Step_10(differentiation).sql = Differentiation.sql
        f = open('Biopsy(Total)/Pathologic_Biopsy_12(Differentiation).sql', 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
                
            a = str(line)
            
            sql  = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = 'biopsy_total', sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Biopsy(Total)/Pathologic_Biopsy_12(Differentiation).xlsx')
        
        self.insert(df, db_name = 'biopsy_total', tb_name = 'pathologic_biopsy_12') 


if __name__ == "__main__":
    obj = Pathologic_Biopsy12()
    obj.run()