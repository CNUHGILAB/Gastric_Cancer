from Operation_Record_01 import OpRecord01
from Operation_Record_02 import OpRecord02
from Operation_Record_03 import OpRecord03
from Operation_Record_04 import OpRecord04
from Operation_Record_05 import OpRecord05

class ETLOperationRecord():
    '''
    Data Pipeline for creating Operation Record
    '''
    def run(self):

        OpRecord01().run()       # 진료서식구성원소ID 두 개인 것
        OpRecord02().run()       # 진료서식구성원소ID 두 개 중 하나가 겹치는 것
        OpRecord03().run()       # 진료서식구성원소ID 한 개인 것
        OpRecord04().run()       # operation_record_01
        OpRecord05().run()       # operation_record_02


if __name__ == "__main__":
    obj = ETLOperationRecord()
    obj.run()