from WashCytology_Test.ETL_WashCytology import ETLWashCytology

class ExeWashCytology():
    
    def run(self):
        ETLWashCytology.run()
        
if __name__ == "__main__":
    obj = ExeWashCytology()
    obj.run()