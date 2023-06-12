from Base_ETL import BaseETL

class Macroscopic_Biopsy01(BaseETL):

    def run(self):
        sql = '''
            SELECT
                st03.원무접수ID,
                st03.환자번호,
                st03.검사시행일,
                visual.육안소견,
                visual.판독의
            FROM pathologic_biopsy_03 st03
                LEFT JOIN pathologic_biopsy_01 visual ON (
                    st03.원무접수ID = visual.원무접수ID
                    AND st03.환자번호 = visual.환자번호
                    AND st03.검사시행일 = visual.검사시행일
                )
            WHERE Undecided IS NOT NULL
        '''
        df = self.df_from_sql(db_name = "gc_protocol_test", sql = sql)
        
        # df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/biopsy.xlsx')
        
        self.insert(df, db_name = "gc_protocol_test", tb_name = "macroscopic_biopsy_01")

if __name__ == "__main__":
    obj = Macroscopic_Biopsy01()
    obj.run()