from Comorbidity_Test.ETL_Comorbidity import ETLComorbidity

class ExeComorbidity():
    
    def run(self):
        ETLComorbidity.run()
        
if __name__ == "__main__":
    obj = ExeComorbidity()
    obj.run()