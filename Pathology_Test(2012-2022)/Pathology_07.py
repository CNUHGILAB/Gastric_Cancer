from Base_ETL import BaseETL

class Pathology07(BaseETL):
    
    def Run(self):
        
        f = open('Pathology(2012-2022)/Pathology_07(GrossType_2).sql', 'rt', encoding = 'utf8')
        
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
        
        self.insert(df, db_name = 'pathology_protocol', tb_name = 'pathology_07')


if __name__ == '__main__':
    obj = Pathology07()
    obj.Run()