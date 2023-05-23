from Base_ETL import BaseETL

class Registry01(BaseETL):

    def run(self):

        sql = "SELECT * FROM gc_database.patient;"

        df = self.df_from_sql(db_name = "gc_database", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_01.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_test", tb_name = "registry_01")


if __name__ == "__main__":
    obj = Registry01()
    obj.run()