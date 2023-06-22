from Base_ETL import BaseETL

class Registry52(BaseETL):

    def run(self):
        
        f = open("Registry(Total)/Registry_52.sql",'rt',encoding='UTF8')
        
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
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_52")


if __name__ == "__main__":
    obj = Registry52()
    obj.run()