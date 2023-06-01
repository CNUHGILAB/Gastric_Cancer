from Base_ETL import BaseETL

class Pathology10(BaseETL):
    
    def Run(self):
        
        f = open('Pathology(2012-2022)/Pathology_10(Differentiation).sql', 'rt', encoding = 'utf8')
        
        sql = ""
        
        while True:
            line = f.readline()
            
            if not line:
                break
                
            a = str(line)
            
            sql = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = 'pathology_protocol', sql = sql)
        #df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/Path_site.xlsx')
        
        self.insert(df, db_name = 'pathology_protocol', tb_name = 'pathology_10')


if __name__ == '__main__':
    obj = Pathology10()
    obj.Run()