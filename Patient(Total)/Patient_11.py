from Base_ETL import BaseETL

class Patient11(BaseETL) :

    def run(self) :
        
        sql = "SELECT * FROM patient_total.patient_10;"
        
        df = self.df_from_sql(db_name = "patient_total", sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Patient(Total)/Patient.xlsx')
        df.to_excel('D:/Gastric_Cancer_xlsx/Patient(Total)/Patient_11.xlsx')
        
        self.insert(df, db_name = "gc_database_total", tb_name = "patient")
        self.insert(df, db_name = "patient_total", tb_name = "patient_11")


if __name__ == "__main__":
    obj = Patient11()
    obj.run()