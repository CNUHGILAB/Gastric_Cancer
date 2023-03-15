from base_etl import BaseETL


class PatientStep11(BaseETL):

    def run(
        self,
    ):
        sql= "SELECT * FROM gc_protocol.patient_step_10;"
        df = self.df_from_sql(db_name="gc_protocol", sql=sql)
        df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/Patient.xlsx')
        self.insert(df, db_name="gc_db", tb_name="patient") 

    
if __name__ == "__main__":
    obj = PatientStep11()
    obj.run()