from Comorbidity_01 import Comorbidity01
from Comorbidity_02_01 import Comorbidity02_01
from Comorbidity_02_02 import Comorbidity02_02
from Comorbidity_02_03 import Comorbidity02_03
from Comorbidity_02_04 import Comorbidity02_04
from Comorbidity_03_01 import Comorbidity03_01
from Comorbidity_03_02 import Comorbidity03_02
from Comorbidity_04_01 import Comorbidity04_01
from Comorbidity_04_02 import Comorbidity04_02
from Comorbidity_05_01 import Comorbidity05_01
from Comorbidity_05_02 import Comorbidity05_02
from Comorbidity_06 import Comorbidity06
from Comorbidity_07 import Comorbidity07
from Comorbidity_08 import Comorbidity08
from Comorbidity_09 import Comorbidity09
from Comorbidity_10_01 import Comorbidity10_01
from Comorbidity_10_02 import Comorbidity10_02
from Comorbidity_10_03 import Comorbidity10_03
from Comorbidity_10_04 import Comorbidity10_04
from Comorbidity_10_05 import Comorbidity10_05
from Comorbidity_11 import Comorbidity11
from Comorbidity_12 import Comorbidity12
from Comorbidity_13 import Comorbidity13
from Comorbidity_14 import Comorbidity14
from Comorbidity_15 import Comorbidity15
from Comorbidity_16 import Comorbidity16
from Comorbidity_17 import Comorbidity17
from Comorbidity_18 import Comorbidity18

class ETLComorbidity():
    '''
    Data Pipeline for creating Comorbidity
    '''
    def run(self):
        
        Comorbidity01().run()          # 환자기본정보(ID, Op_Date)
        Comorbidity02_01().run()       # DM(Diabetic Mellitus) 당뇨병
        Comorbidity02_02().run()       # DM_Duration 당뇨병 지속기간
        Comorbidity02_03().run()       # DM_Medication 당뇨병 복용 약
        Comorbidity02_04().run()       # DM Merge
        Comorbidity03_01().run()       # 진료과 = 외과(GS)인 경우 외과 의무기록 내용 적용 // 아닌 경우 다수결로 DM 여부 결정
        Comorbidity03_02().run()       # DM_Duration Choise
        Comorbidity04_01().run()       # HTN(Hypertension) 고혈압
        Comorbidity04_02().run()       # HTN_Duration 고혈압 지속기간
        Comorbidity05_01().run()       # 진료과 = 외과(GS)인 경우 외과 의무기록 내용 적용 // 아닌 경우 다수결로 HTN 여부 결정 
        Comorbidity05_02().run()       # HTN_Duration Choise
        Comorbidity06().run()          # Liver Disease 간 질환 & Hep(Hepatitis) 간염 
        Comorbidity07().run()          # 진료과 = 외과(GS)인 경우 외과 의무기록 내용 적용 // 아닌 경우 다수결로 Liver Disease & Hep 여부 결정
        Comorbidity08().run()          # TBC(Tuberculosis) 결핵 
        Comorbidity09().run()          # 진료과 = 외과(GS)인 경우 외과 의무기록 내용 적용 // 아닌 경우 다수결로 TBC 여부 결정
        Comorbidity10_01().run()       # Angina 협심증
        Comorbidity10_02().run()       # MI(Myocardial Infarction) 심근경색
        Comorbidity10_03().run()       # HF(Heart Failur) 심부전 
        Comorbidity10_04().run()       # Heart Disease Merge_1
        Comorbidity10_05().run()       # Heart Disease Merge_2
        Comorbidity11().run()          # CRF(chronic renal failure) 신부전
        Comorbidity12().run()          # 진료과 = 외과(GS)인 경우 외과 의무기록 내용 적용 // 아닌 경우 다수결로 CRF 여부 결정
        Comorbidity13().run()          # COPD(Chronic Obstructive Pulmonary Disease)
        Comorbidity14().run()          # 진료과 = 외과(GS)인 경우 외과 의무기록 내용 적용 // 아닌 경우 다수결로 COPD 여부 결정
        Comorbidity15().run()          # CVA(cerebrovascular accident) 뇌졸증
        Comorbidity16().run()          # 진료과 = 외과(GS)인 경우 외과 의무기록 내용 적용 // 아닌 경우 다수결로 CVA 여부 결정
        Comorbidity17().run()          # Merge_1
        Comorbidity18().run()          # Merge_2(Final)       


if __name__ == "__main__":
    obj = ETLComorbidity()
    obj.run()