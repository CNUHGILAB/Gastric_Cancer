from Base_ETL import BaseETL

class Pathology15(BaseETL):

    def run(self):
        
        f = open('Pathology(2012-2022)/Pathology_15(pTNM_Staging_2).sql', 'rt', encoding = 'UTF8')
        
        sql = ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
                
            a = str(line)
            
            sql = sql + a

        f.close()
        
        df = self.df_from_sql(db_name = 'pathology_protocol', sql = sql)
        
        self.insert(df, db_name = 'pathology_protocol', tb_name = 'pathology_15')


if __name__ == '__main__':
    obj = Pathology15()
    obj.run()