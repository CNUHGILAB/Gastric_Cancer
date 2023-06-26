from Base_ETL import BaseETL

class Pathologic_Biopsy03(BaseETL):

    def run(self):
        
        sql = '''
            SELECT *
            FROM pathologic_biopsy_01
            UNION DISTINCT
            SELECT *
            FROM pathologic_biopsy_02
        '''
        
        df = self.df_from_sql(db_name = 'biopsy_total', sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Biopsy(Total)/Pathologic_Biopsy_03.xlsx')
        
        self.insert(df, db_name = 'biopsy_total', tb_name = 'pathologic_biopsy_03') 


if __name__ == "__main__":
    obj = Pathologic_Biopsy03()
    obj.run()