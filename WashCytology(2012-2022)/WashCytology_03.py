from Base_ETL import BaseETL

class WashCytology03(BaseETL):

    def run(self):
        sql = '''
            SELECT
                a.ID,
                a.CHKID,
                OP_Date,
                검사시행일,
                검사결과
            FROM
                washcytology_01 a
                LEFT JOIN washcytology_02 b ON a.ID = b.ID
            WHERE(
                검사시행일 BETWEEN STR_TO_DATE(OP_Date, '%%Y-%%m-%%d')
                AND DATE_ADD(STR_TO_DATE(OP_Date, '%%Y-%%m-%%d'), INTERVAL + 10 DAY)
            )
        '''
        
        df = self.df_from_sql(db_name = "wash_cytology_protocol", sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/WashCytology(2012-2022)/WashCytology_03.xlsx')
        
        self.insert(df, db_name = "wash_cytology_protocol", tb_name = "washcytology_03")


if __name__ == "__main__":
    obj = WashCytology03()
    obj.run()