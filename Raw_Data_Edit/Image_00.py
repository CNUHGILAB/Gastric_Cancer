from Base_ETL import BaseETL

class Image00(BaseETL):

    def run(self):

        sql = '''
            SELECT *
            FROM gc_raw.image
            UNION DISTINCT
            SELECT *
            FROM raw_file_2012_2022.image
        '''
        
        df = self.df_from_sql(db_name = "raw_data_edit", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_03.xlsx')
        #print(df)
        
        self.insert(df, db_name = "raw_data_total", tb_name = "image")
        self.insert(df, db_name = "raw_data_edit", tb_name = "image_00")


if __name__ == "__main__":
    obj = Image00()
    obj.run()