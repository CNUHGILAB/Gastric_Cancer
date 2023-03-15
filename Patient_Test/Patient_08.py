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
        
        df = self.df_from_sql(db_name = "gc_raw", sql=sql)
        
        self.insert(df, db_name = "patient_protocol", tb_name = "patient_08") 


if __name__ == "__main__":
    obj = Patient08()
    obj.run()