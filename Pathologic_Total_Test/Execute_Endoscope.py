from Endoscope_Test.ETL_Pre_Endoscope import ETLPreEndoscope
from Endoscope_Test.ETL_Endoscope_Impression import ETLEndoscopeImpression
from Endoscope_Test.ETL_Endoscope import ETLEndoscope

class ExeEndoscope():
    
    def run(self):
        ETLPreEndoscope.run()
        ETLEndoscopeImpression.run()
        ETLEndoscope.run()
        
if __name__ == "__main__":
    obj = ExeEndoscope()
    obj.run()