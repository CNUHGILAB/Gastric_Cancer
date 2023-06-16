from Base_ETL import BaseETL

class Registry50(BaseETL):

    def run(self):
        
        f = open("Registry(Total)/Registry_50.sql",'rt',encoding='UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
            
            a = str(line)
            
            sql  = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_20.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_50")


if __name__ == "__main__":
    obj = Registry50()
    obj.run()