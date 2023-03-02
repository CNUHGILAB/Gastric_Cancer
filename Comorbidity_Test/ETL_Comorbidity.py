from Comorbidity_Step_01 import ComorbidityStep01
from Comorbidity_Step_02_01 import ComorbidityStep02_01
from Comorbidity_Step_02_02 import ComorbidityStep02_02
from Tb_Tmp_Comorbidity_Step_02_02 import TbTmpComorbidityStep02_02
from Tb_Tmp_Comorbidity_Step_02_03 import TbTmpComorbidityStep02_03
from Tb_Tmp_Comorbidity_Step_03_00 import TbTmpComorbidityStep03
from Tb_Tmp_Comorbidity_Step_03_01 import TbTmpComorbidityStep03_01
from Tb_Tmp_Comorbidity_Step_04_00 import TbTmpComorbidityStep04
from Tb_Tmp_Comorbidity_Step_04_01 import TbTmpComorbidityStep04_01
from Tb_Tmp_Comorbidity_Step_05_00 import TbTmpComorbidityStep05
from Tb_Tmp_Comorbidity_Step_05_01 import TbTmpComorbidityStep05_01
from Tb_Tmp_Comorbidity_Step_06 import TbTmpComorbidityStep06
from Tb_Tmp_Comorbidity_Step_07 import TbTmpComorbidityStep07
from Tb_Tmp_Comorbidity_Step_08 import TbTmpComorbidityStep08
from Tb_Tmp_Comorbidity_Step_09 import TbTmpComorbidityStep09
from Tb_Tmp_Comorbidity_Step_10_00 import TbTmpComorbidityStep10_00
from Tb_Tmp_Comorbidity_Step_10_01 import TbTmpComorbidityStep10_01
from Tb_Tmp_Comorbidity_Step_10_02 import TbTmpComorbidityStep10_02
from Tb_Tmp_Comorbidity_Step_10_03 import TbTmpComorbidityStep10_03
from Tb_Tmp_Comorbidity_Step_10_04 import TbTmpComorbidityStep10_04
#from Tb_Tmp_Comorbidity_Step_11 import TbTmpComorbidityStep11
from Tb_Tmp_Comorbidity_Step_12 import TbTmpComorbidityStep12
from Tb_Tmp_Comorbidity_Step_13 import TbTmpComorbidityStep13
from Tb_Tmp_Comorbidity_Step_14 import TbTmpComorbidityStep14
from Tb_Tmp_Comorbidity_Step_15 import TbTmpComorbidityStep15
from Tb_Tmp_Comorbidity_Step_16 import TbTmpComorbidityStep16
from Tb_Tmp_Comorbidity_Step_17 import TbTmpComorbidityStep17
from Tb_Tmp_Comorbidity_Step_18 import TbTmpComorbidityStep18
from Tb_Tmp_Comorbidity_Step_19 import TbTmpComorbidityStep19


class ETLComorbidity():
    """ Data Pipeline for creating Comorbidity score
    """
    def run(
        self,
    ):
        ComorbidityStep01().run()          # 환자기본정보(ID,Checkin,OpDate)
        ComorbidityStep02_01().run()       # DM(Diabetic mellitus) 당뇨병
        ComorbidityStep02_02().run()       # DM_Duration 당뇨병 지속기간
        TbTmpComorbidityStep02_02().run()  # DM_Medication 당뇨병 복용 약
        TbTmpComorbidityStep02_03().run()  # DM Merge
        TbTmpComorbidityStep03().run()     # 진료과 = 외과(GS)인 경우 외과 의무기록 내용 적용 // 아닌 경우 다수결로 DM 여부 결정
        TbTmpComorbidityStep03_01().run()  # DM_Duration Choise
        TbTmpComorbidityStep04().run()     # HTN(Hypertension) 고혈압
        TbTmpComorbidityStep04_01().run()  # HTN_Duration 고혈압 지속기간
        TbTmpComorbidityStep05().run()     # 진료과 = 외과(GS)인 경우 외과 의무기록 내용 적용 // 아닌 경우 다수결로 HTN 여부 결정 
        TbTmpComorbidityStep05_01().run()  # HTN_Duration Choise
        TbTmpComorbidityStep06().run()     # Liver disease 간 질환 & Hep(Hepatitis) 간염 
        TbTmpComorbidityStep07().run()     # 진료과 = 외과(GS)인 경우 외과 의무기록 내용 적용 // 아닌 경우 다수결로 Liver disease & Hep 여부 결정
        TbTmpComorbidityStep08().run()     # TBC(Tuberculosis) 결핵 
        TbTmpComorbidityStep09().run()     # 진료과 = 외과(GS)인 경우 외과 의무기록 내용 적용 // 아닌 경우 다수결로 TBC 여부 결정
        TbTmpComorbidityStep10_00().run()  # Angina 협심증
        TbTmpComorbidityStep10_01().run()  # MI(Myocardial Infarction) 심근경색
        TbTmpComorbidityStep10_02().run()  # HF(Heart failur) 심부전 
        TbTmpComorbidityStep10_03().run()  # Heart disease Merge_1
        TbTmpComorbidityStep10_04().run()  # Heart disease Merge_2
        #TbTmpComorbidityStep11().run()  
        TbTmpComorbidityStep12().run()     # CRF(chronic renal failure) 신부전
        TbTmpComorbidityStep13().run()     # 진료과 = 외과(GS)인 경우 외과 의무기록 내용 적용 // 아닌 경우 다수결로 CRF 여부 결정
        TbTmpComorbidityStep14().run()     # COPD(Chronic Obstructive Pulmonary Disease)
        TbTmpComorbidityStep15().run()     # 진료과 = 외과(GS)인 경우 외과 의무기록 내용 적용 // 아닌 경우 다수결로 COPD 여부 결정
        TbTmpComorbidityStep16().run()     # CVA(cerebrovascular accident) 뇌졸증
        TbTmpComorbidityStep17().run()     # 진료과 = 외과(GS)인 경우 외과 의무기록 내용 적용 // 아닌 경우 다수결로 CVA 여부 결정
        TbTmpComorbidityStep18().run()     # Merge_1
        TbTmpComorbidityStep19().run()     # Merge_2(Final)


if __name__ == "__main__":
    obj = ETLComorbidity()
    obj.run()