from Base_ETL import BaseETL

class Registry18(BaseETL):

    def run(self):
        
        f = open("Registry_Test/Registry_18(Biopsy).sql", 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
            
            a = str(line)
            
            sql  = sql + a  
            
        f.close()
        
        df = self.df_from_sql(db_name = "registry_test", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_18.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_test", tb_name = "registry_18")


if __name__ == "__main__":
    obj = Registry18()
    obj.run()