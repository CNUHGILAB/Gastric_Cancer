from Base_ETL import BaseETL

class Genetic06_02(BaseETL):

    def run(self):
        
        f = open('Genetic(2012-2022)/Genetic_06_02(CD31nD240).sql', 'rt', encoding = 'UTF8')
        
        sql = ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
                
            a = str(line)
            
            sql = sql + a
        
        f.close()
        
        df = self.df_from_sql(db_name = 'genetic_protocol', sql = sql)
        #df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/path_Inspection_items.xlsx')
        
        self.insert(df, db_name = 'genetic_protocol', tb_name = 'genetic_06_02')


if __name__ == '__main__':
    obj = Genetic06_02()
    obj.run()