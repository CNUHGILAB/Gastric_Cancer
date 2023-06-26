from Base_ETL import BaseETL

class Pathologic_Biopsy02(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                원무접수ID,
                환자번호,
                DATE_FORMAT(검사시행일, '%%Y-%%m-%%d') AS 검사시행일,
                육안소견,
                병리진단
            FROM pathologic_biopsy_00
            WHERE NOT EXISTS (
                SELECT
                    원무접수ID,
                    환자번호,
                    검사시행일
                FROM pathologic_biopsy_01
                WHERE (
                    pathologic_biopsy_00.원무접수ID = pathologic_biopsy_01.원무접수ID
                    AND pathologic_biopsy_00.환자번호 = pathologic_biopsy_01.환자번호
                    AND pathologic_biopsy_00.검사시행일 = pathologic_biopsy_01.검사시행일
                )
            )
        '''
        
        df = self.df_from_sql(db_name = 'biopsy_total', sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Biopsy(Total)/Pathologic_Biopsy_02.xlsx')
        
        self.insert(df, db_name = 'biopsy_total', tb_name = 'pathologic_biopsy_02') 


if __name__ == "__main__":
    obj = Pathologic_Biopsy02()
    obj.run()