from Base_ETL import BaseETL

class Pathologic_Biopsy11(BaseETL):

    def run(self):
        
        # Biopsy_Step_09(Histologic_Type_2).sql = 2.sql
        # 2.sql = Histologic_Type_2.sql
        f = open('Biopsy(Total)/Pathologic_Biopsy_11(Histologic_Type_2).sql', 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
                
            a = str(line)
            
            sql  = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = 'biopsy_total', sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Biopsy(Total)/Pathologic_Biopsy_11(Histologic Type2).xlsx')
        
        self.insert(df, db_name = 'biopsy_total', tb_name = 'pathologic_biopsy_11') 


if __name__ == "__main__":
    obj = Pathologic_Biopsy11()
    obj.run()