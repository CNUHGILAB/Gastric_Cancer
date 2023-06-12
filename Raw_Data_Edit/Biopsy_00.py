from Base_ETL import BaseETL

class Biopsy00(BaseETL):

    def run(self):

        sql = '''
            SELECT *
            FROM gc_raw.biopsy
            UNION DISTINCT
            SELECT *
            FROM raw_file_2012_2022.biopsy
        '''
        
        df = self.df_from_sql(db_name = "raw_data_edit", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_03.xlsx')
        #print(df)
        
        self.insert(df, db_name = "raw_data_total", tb_name = "biopsy")
        self.insert(df, db_name = "raw_data_edit", tb_name = "biopsy_00")


if __name__ == "__main__":
    obj = Biopsy00()
    obj.run()