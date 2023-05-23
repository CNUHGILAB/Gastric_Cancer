from Pre_Endoscope_01 import PreEndoscope01
from Pre_Endoscope_02 import PreEndoscope02
from Pre_Endoscope_03 import PreEndoscope03
from Pre_Endoscope_04 import PreEndoscope04
from Pre_Endoscope_05 import PreEndoscope05

class ETLPreEndoscope():
    '''
    Data Pipeline for creating PreEndoscope
    '''
    def run(self):
        PreEndoscope01().run()
        PreEndoscope02().run()
        PreEndoscope03().run()
        PreEndoscope04().run()
        PreEndoscope05().run()


if __name__ == "__main__":
    obj = ETLPreEndoscope()
    obj.run()