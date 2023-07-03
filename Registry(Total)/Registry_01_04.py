from Base_ETL import BaseETL

class Registry01_04(BaseETL):

    def run(self):

        sql = '''
            SELECT *
            FROM registry_01_00
            UNION ALL
            SELECT *
            FROM registry_01_03
        '''
        
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_01.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_01_04")


if __name__ == "__main__":
    obj = Registry01_04()
    obj.run()