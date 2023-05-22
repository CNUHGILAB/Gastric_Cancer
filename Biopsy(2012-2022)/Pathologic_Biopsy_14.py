from Base_ETL import BaseETL

class Pathologic_Biopsy14(BaseETL):

    def run(self):
        
        # Biopsy_Step_14(PTNM_Staing_1).sql = PTNM_Staging_1.sql
        f = open('Biopsy(2012-2022)/Pathologic_Biopsy_14(PTNM_Staging_1).sql', 'rt', encoding = 'UTF8')
        
        sql= ''
        
        while True:
            line = f.readline()
            
            if not line:
                break
                
            a = str(line)
            
            sql  = sql + a
            
        f.close()
        
        df = self.df_from_sql(db_name = 'biopsy_protocol', sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Biopsy(2012-2022)/Pathologic_Biopsy_14(pTNM Staging1).xlsx')
        
        self.insert(df, db_name = 'biopsy_protocol', tb_name = 'pathologic_biopsy_14') 


if __name__ == "__main__":
    obj = Pathologic_Biopsy14()
    obj.run()