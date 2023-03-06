from Base_ETL import BaseETL

class Patient11(BaseETL) :

    def run(self) :
        
        sql = "SELECT * FROM patient_test.patient_10;"
        
        df = self.df_from_sql(db_name = "patient_test", sql = sql)
        
        #df.to_excel('D:/Gastric_Cancer/Excel_File/Patient.xlsx')
            
        self.insert(df, db_name = "patient_test", tb_name = "patient") 
    
if __name__ == "__main__":
    obj = Patient11()
    obj.run()