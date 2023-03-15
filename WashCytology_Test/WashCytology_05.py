from Base_ETL import BaseETL

class WashCytology05(BaseETL):

    def run(self):
        
        f = open("Washcytology_Test/WashCytology_05(Washcytology).sql", 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
            
            a = str(line)
            
            sql  = sql + a 
            
        f.close()

        df = self.df_from_sql(db_name = "wash_cytology_protocol", sql = sql) 
        
        self.insert(df, db_name = "gc_database", tb_name = "washcytology")


if __name__ == "__main__":
    obj = WashCytology05()
    obj.run()