from Base_ETL import BaseETL

class Pathology30(BaseETL):

    def run(self):
        
        f = open('Pathology(2012-2022)/Pathology_30(CK).sql', 'rt', encoding = 'UTF8')
        
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
        
        self.insert(df, db_name = 'pathology_protocol', tb_name = 'pathology_30')


if __name__ == '__main__':
    obj = Pathology30()
    obj.run()