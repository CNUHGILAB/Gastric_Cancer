from re_operation_record_step_01 import reoperationrecordstep01
from re_operation_record_step_02 import reoperationrecordstep02
from re_operation_record_step_03 import reoperationrecordstep03
from re_operation_record_step_04 import reoperationrecordstep04
from re_operation_record_step_05 import reoperationrecordstep05

class ETLComorbidity():
    def run(
        self,
    ):

        reoperationrecordstep01().run()       # 진료서식구성원소ID 두 개인 것
        reoperationrecordstep02().run()       # 진료서식구성원소ID 두 개 중 하나가 겹치는 것
        reoperationrecordstep03().run()       # 진료서식구성원소ID 한 개인 것
        reoperationrecordstep04().run()       # re_operation_record_1
        reoperationrecordstep05().run()       # re_operation_record_2


        

if __name__ == "__main__":
    obj = ETLComorbidity()
    obj.run()