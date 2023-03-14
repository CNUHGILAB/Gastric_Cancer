from Biopsy_Test.ETL_Biopsy import ETLBiopsy

class ExeBiopsy():
    
    def run(self):
        ETLBiopsy.run()
        
if __name__ == "__main__":
    obj = ExeBiopsy()
    obj.run()