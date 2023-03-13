from Patient_Test.ETL_Patient import ETLPatient

class ExePatient():
    
    def run(self):
        ETLPatient.run()
        
if __name__ == "__main__":
    obj = ExePatient()
    obj.run()