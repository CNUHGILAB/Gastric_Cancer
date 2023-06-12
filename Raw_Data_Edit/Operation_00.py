from Base_ETL import BaseETL

class Operation00(BaseETL):

    def run(self):

        sql = '''
            SELECT *
            FROM gc_raw.operation
            UNION DISTINCT
            SELECT *
            FROM raw_file_2012_2022.operation
        '''
        
        df = self.df_from_sql(db_name = "raw_data_edit", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_03.xlsx')
        #print(df)
        
        self.insert(df, db_name = "raw_data_total", tb_name = "operation")
        #self.insert(df, db_name = "raw_data_edit", tb_name = "operation_00")


if __name__ == "__main__":
    obj = Operation00()
    obj.run()