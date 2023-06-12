from Base_ETL import BaseETL

class OutPatient00(BaseETL):

    def run(self):

        sql = '''
            SELECT *
            FROM gc_raw.outpatient
            UNION DISTINCT
            SELECT *
            FROM raw_file_2012_2022.outpatient
        '''
        
        df = self.df_from_sql(db_name = "raw_data_edit", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_03.xlsx')
        #print(df)
        
        self.insert(df, db_name = "raw_data_total", tb_name = "outpatient")
        #self.insert(df, db_name = "raw_data_edit", tb_name = "outpatient_00")


if __name__ == "__main__":
    obj = OutPatient00()
    obj.run()