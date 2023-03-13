from Endoscope_Impression_01 import EndoscopeImpression01
from Endoscope_Impression_02 import EndoscopeImpression02
from Endoscope_Impression_03 import EndoscopeImpression03
from Endoscope_Impression_04 import EndoscopeImpression04

class ETLEndoscopeImpression():
    """ Data Pipeline for creating Patient 
    """
    def run(self):
        EndoscopeImpression01().run()
        EndoscopeImpression02().run()
        EndoscopeImpression03().run()
        EndoscopeImpression04().run()

if __name__ == "__main__":
    obj = ETLEndoscopeImpression()
    obj.run()