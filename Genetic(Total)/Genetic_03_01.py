from Base_ETL import BaseETL

class Genetic03_01(BaseETL):

    def run(self):
        
        f = open('Genetic(Total)/Genetic_03_01(E-Cadherin).sql', 'rt', encoding = 'UTF8')
        
        sql = ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
                
            a = str(line)
            
            sql = sql + a
        
        f.close()
        
        df = self.df_from_sql(db_name = 'genetic_total', sql = sql)
        #df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/path_Inspection_items.xlsx')
        
        self.insert(df, db_name = 'genetic_total', tb_name = 'genetic_03_01')


if __name__ == '__main__':
    obj = Genetic03_01()
    obj.run()