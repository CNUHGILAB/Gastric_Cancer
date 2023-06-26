from Base_ETL import BaseETL

class Lipase06(BaseETL):

    def run(self):
        
        f = open("Pancreatic_Enzyme(Total)/Lipase_06.sql",'rt',encoding='UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
            
            a = str(line)
            
            sql  = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = "pancreatic_enzyme_protocol", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_20.xlsx')
        #print(df)
        
        self.insert(df, db_name = "pancreatic_enzyme_protocol", tb_name = "lipase_06")


if __name__ == "__main__":
    obj = Lipase06()
    obj.run()