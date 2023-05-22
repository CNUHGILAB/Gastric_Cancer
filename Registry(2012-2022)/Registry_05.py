from Base_ETL import BaseETL

class Registry05(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                a.ID,
                OP_Date,
                Alb,
                MAX(검사시행일) AS Test_Date
            FROM
                registry_93 a
                LEFT JOIN registry_04 b ON a.ID = b.환자번호
            WHERE(
                검사시행일 BETWEEN DATE_SUB(OP_Date, INTERVAL 29 DAY)
                AND OP_Date
            )
            GROUP BY(
                ID, OP_Date
            )
        '''
        
        df = self.df_from_sql(db_name = "registry_protocol", sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_05.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_protocol", tb_name = "registry_05")


if __name__ == "__main__":
    obj = Registry05()
    obj.run()