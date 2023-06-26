from Base_ETL import BaseETL

class Pathologic_Biopsy01(BaseETL):

    def run(self):
        
        sql = '''
            SELECT DISTINCT
                원무접수ID,
                환자번호,
                검사시행일,
                육안소견,
                MAX(병리진단) AS 병리진단
            FROM pathologic_biopsy_00
            GROUP BY 원무접수ID, 환자번호, 검사시행일
            HAVING COUNT(원무접수ID) > 1 AND COUNT(환자번호) > 1 AND COUNT(검사시행일) > 1
        '''
        
        df = self.df_from_sql(db_name = 'biopsy_total', sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Biopsy(Total)/Pathologic_Biopsy_01.xlsx')
        
        self.insert(df, db_name = 'biopsy_total', tb_name = 'pathologic_biopsy_01') 


if __name__ == "__main__":
    obj = Pathologic_Biopsy01()
    obj.run()