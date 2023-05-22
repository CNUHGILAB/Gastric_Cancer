from Nursing_Record_00 import NursingRecord00
from Nursing_Record_01 import NursingRecord01

class NursingRecord_Edit():
    '''
    Data Pipeline for creating Genetic
    '''
    def run(self):
        NursingRecord00().run()
        NursingRecord01().run()


if __name__ == "__main__":
    obj = NursingRecord_Edit()
    obj.run()