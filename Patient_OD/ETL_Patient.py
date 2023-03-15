from Patient_Step_01 import PatientStep01
from Patient_Step_02 import PatientStep02
from Patient_Step_03 import PatientStep03
from Patient_Step_04 import PatientStep04
from Patient_Step_05 import PatientStep05
from Patient_Step_06 import PatientStep06
from Patient_Step_07 import PatientStep07
from Patient_Step_08 import PatientStep08
from Patient_Step_09 import PatientStep09
from Patient_Step_10 import PatientStep10
from Patient_Step_11 import PatientStep11

class ETLPatient():
    """ Data Pipeline for creating Patient 
    """
    def run(
        self,
    ):
        PatientStep01().run()                         # 환자번호, 원무접수ID, 성별, 나이, 입원일, 퇴원일, 주소
        PatientStep02().run()                         # gastric cancer surgery day(원무접수ID, 환자번호, 수술일)
        PatientStep03().run()                         # Patient information during gastric cancer surgery
        PatientStep04().run()                         # Weight
        PatientStep05().run()                         # Height
        PatientStep06().run()                         # Merge st04, st05 
        PatientStep07().run()                         # Merge st03, st06 + BMI
        PatientStep08().run()                         # last day of medical examination 
        PatientStep09().run()                         # date of the first diagnosis
        PatientStep10().run()                         # Merge
        PatientStep11().run()                         # Final
        


if __name__ == "__main__":
    obj = ETLPatient()
    obj.run()
    

