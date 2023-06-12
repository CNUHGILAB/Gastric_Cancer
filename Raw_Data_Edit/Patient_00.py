from Base_ETL import BaseETL

class Patient00(BaseETL):

    def run(self):

        sql = '''
            SELECT *
            FROM gc_raw.patient
            UNION DISTINCT
            SELECT *
            FROM raw_file_2012_2022.patient
        '''
        
        df = self.df_from_sql(db_name = "raw_data_edit", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_03.xlsx')
        #print(df)
        
        self.insert(df, db_name = "raw_data_total", tb_name = "patient")
        #self.insert(df, db_name = "raw_data_edit", tb_name = "patient_00")


if __name__ == "__main__":
    obj = Patient00()
    obj.run()