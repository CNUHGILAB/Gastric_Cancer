from Patient_01 import Patient01
from Patient_02 import Patient02
from Patient_03 import Patient03
from Patient_04 import Patient04
from Patient_05 import Patient05
from Patient_06 import Patient06
from Patient_07 import Patient07
from Patient_08 import Patient08
from Patient_09 import Patient09
from Patient_10 import Patient10
from Patient_11 import Patient11

class ETLPatient():
    '''
    Data Pipeline for creating Patient
    '''
    def run(self):
        Patient01().run()                         # 환자번호, 원무접수ID, 성별, 나이, 입원일, 퇴원일, 주소
        Patient02().run()                         # 위암 수술 일자(원무접수ID, 환자번호, 수술일)
        Patient03().run()                         # Patient information during gastric cancer surgery
        Patient04().run()                         # 몸무게(Weight)
        Patient05().run()                         # 키(Height)
        Patient06().run()                         # Merge patient_04, patient_05 
        Patient07().run()                         # Merge patient_03, patient_06 + BMI
        Patient08().run()                         # 가장 최근 수진(진료)일 
        Patient09().run()                         # 첫 진단일
        Patient10().run()                         # Merge
        Patient11().run()                         # Final


if __name__ == "__main__":
    obj = ETLPatient()
    obj.run()