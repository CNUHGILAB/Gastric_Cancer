from Base_ETL import BaseETL

class WashCytology05(BaseETL):

    def run(self):
        
        f = open("Washcytology(Total)/WashCytology_05.sql", 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
            
            a = str(line)
            
            sql  = sql + a 
            
        f.close()

        df = self.df_from_sql(db_name = "wash_cytology_total", sql = sql) 
        df.to_excel('D:/Gastric_Cancer_xlsx/WashCytology(Total)/WashCytology.xlsx')
        df.to_excel('D:/Gastric_Cancer_xlsx/WashCytology(Total)/WashCytology_05.xlsx')
        
        self.insert(df, db_name = "gc_database_total", tb_name = "washcytology")
        self.insert(df, db_name = "wash_cytology_total", tb_name = "washcytology_05")


if __name__ == "__main__":
    obj = WashCytology05()
    obj.run()