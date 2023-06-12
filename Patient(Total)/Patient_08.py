from Base_ETL import BaseETL

class Patient08(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                환자번호,
                MAX(`수진(진료)일`) AS `수진(진료)일`
            FROM patient
            GROUP BY 환자번호
        '''
        
        df = self.df_from_sql(db_name = "raw_data_total", sql=sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Patient(Total)/Patient_08.xlsx')
        
        self.insert(df, db_name = "patient_total", tb_name = "patient_08") 


if __name__ == "__main__":
    obj = Patient08()
    obj.run()