from Base_ETL import BaseETL

class WashCytology01(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                DISTINCT 환자번호 AS ID,
                원무접수ID AS CHKID,
                검사시행일,
                검사결과
            FROM(
                SELECT * FROM biopsy
                WHERE(
                    검사코드 = 'C5622'
                    OR 검사코드 = 'C5625'
                    OR 검사코드 = 'CZ521'
                )
            ) a
        '''
        df = self.df_from_sql(db_name = "raw_file_2012_2022", sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/WashCytology(2012-2022)/WashCytology_01.xlsx')
        
        self.insert(df, db_name = "wash_cytology_protocol", tb_name = "washcytology_01")


if __name__ == "__main__":
    obj = WashCytology01()
    obj.run()