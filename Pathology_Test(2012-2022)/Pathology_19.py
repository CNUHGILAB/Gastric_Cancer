from Base_ETL import BaseETL

class Pathology19(BaseETL):

    def run(self):
        
        f = open('Pathology(2012-2022)/Pathology_19(Inspection_Items).sql', 'rt', encoding = 'UTF8')
        
        sql = ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
                
            a = str(line)
            
            sql = sql + a
        
        f.close()
        
        df = self.df_from_sql(db_name = 'pathology_protocol', sql = sql)
        #df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/path_Inspection_items.xlsx')
        
        self.insert(df, db_name = 'pathology_protocol', tb_name = 'pathology_19')


if __name__ == '__main__':
    obj = Pathology19()
    obj.run()