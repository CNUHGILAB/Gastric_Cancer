from Base_ETL import BaseETL

class NursingRecord01(BaseETL):

    def run(self):

        sql = '''
            SELECT * FROM raw_file_2012_2022.nursing_record_1
            UNION DISTINCT
            SELECT * FROM raw_data_edit.nursing_record_00
        '''
        
        df = self.df_from_sql(db_name = "raw_data_edit", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_03.xlsx')
        #print(df)
        
        self.insert(df, db_name = "raw_file_2012_2022", tb_name = "nursing_record")


if __name__ == "__main__":
    obj = NursingRecord01()
    obj.run()