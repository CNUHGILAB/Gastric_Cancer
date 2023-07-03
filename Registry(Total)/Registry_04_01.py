from Base_ETL import BaseETL

class Registry04_01(BaseETL):

    def run(self):
        
        sql = '''
            SELECT DISTINCT
                a.CHKID,
                a.ID,
                OP_DATE,
                Hb,
                MAX(검사시행일) AS Test_Date
            FROM registry_02 a
                LEFT JOIN registry_04_00 b ON (
                    a.CHKID = b.원무접수ID
                    AND a.ID = b.환자번호
                )
            WHERE(
                검사시행일 BETWEEN DATE_SUB(OP_DATE, INTERVAL 60 DAY)
                AND DATE_SUB(OP_DATE, INTERVAL 1 DAY)
            )
            GROUP BY CHKID, ID, OP_DATE
        '''
        
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_07.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_04_01")


if __name__ == "__main__":
    obj = Registry04_01()
    obj.run()