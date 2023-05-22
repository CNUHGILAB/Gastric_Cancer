from Base_ETL import BaseETL

class Patient11(BaseETL) :

    def run(self) :
        
        sql = "SELECT * FROM patient_protocol.patient_10;"
        
        df = self.df_from_sql(db_name = "patient_protocol", sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Patient(2012-2022)/Patient.xlsx')
        
        self.insert(df, db_name = "gc_database", tb_name = "patient")


if __name__ == "__main__":
    obj = Patient11()
    obj.run()