from Base_ETL import BaseETL

class Registry13(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                DISTINCT
                    a.ID,
                    OP_Date,
                    AFP,
                    MAX(검사시행일) AS Test_Date
            FROM
                registry_03 a
                LEFT JOIN registry_12 b ON a.ID = b.환자번호
            WHERE(
                검사시행일 BETWEEN DATE_SUB(OP_Date, INTERVAL 60 DAY)
                AND DATE_SUB(OP_Date, INTERVAL 1 DAY)
            )
            GROUP BY
                ID, OP_Date
        '''
        
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_13.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_13")


if __name__ == "__main__":
    obj = Registry13()
    obj.run()