from Base_ETL import BaseETL

class Registry02(BaseETL):

    def run(self):

        f = open("Registry(2012-2022)/Registry_02(Comorbidity).sql", 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
            
            a = str(line)
            
            sql  = sql + a  
            
        f.close()

        df = self.df_from_sql(db_name = "registry_test", sql = sql) 
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_02(Comorbidity).xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_test", tb_name = "registry_02")


if __name__ == "__main__":
    obj = Registry02()
    obj.run()