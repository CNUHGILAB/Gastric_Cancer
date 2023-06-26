from Base_ETL import BaseETL

class Pathologic_Biopsy10(BaseETL):

    def run(self):
        
        # Biopsy_Step_08(Histologic_Type_1).sql = Histologic_Type_1.sql
        f = open("Biopsy(Total)/Pathologic_Biopsy_10(Histologic_Type_1).sql", 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
                
            a = str(line)
            
            sql  = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = 'biopsy_total', sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Biopsy(Total)/Pathologic_Biopsy_10(Histologic Type1).xlsx')
        
        self.insert(df, db_name = 'biopsy_total', tb_name = 'pathologic_biopsy_10') 


if __name__ == "__main__":
    obj = Pathologic_Biopsy10()
    obj.run()