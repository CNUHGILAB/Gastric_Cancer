from Base_ETL import BaseETL

class Pathologic_Biopsy22(BaseETL):

    def run(self):
        
        # Biopsy_Step_20(Merge).sql = Biopsy_Merge.sql
        f = open('Biopsy(Total)/Pathologic_Biopsy_22(Biopsy_Merge).sql', 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
                
            a = str(line)
            
            sql  = sql + a  
            
        f.close()
        
        df = self.df_from_sql(db_name = 'biopsy_total', sql = sql)
        
        df = df.sort_values(['환자번호', '검사시행일'])
        
        df = df.reset_index(drop = True)
        
        df = df.drop_duplicates()
        df.to_excel('D:/Gastric_Cancer_xlsx/Biopsy(Total)/Pathologic_Biopsy.xlsx')
        
        self.insert(df, db_name = 'gc_database_total', tb_name = 'pathologic_biopsy')
        self.insert(df, db_name = 'biopsy_total', tb_name = 'pathologic_biopsy_22') 


if __name__ == "__main__":
    obj = Pathologic_Biopsy22()
    obj.run()