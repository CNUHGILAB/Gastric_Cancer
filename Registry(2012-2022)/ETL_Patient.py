from REG_Step_01 import REGStep01
from REG_Step_02 import REGStep02
from REG_Step_00_01 import REGStep00_01
from REG_Step_03_00 import REGStep03_00
from REG_Step_04_00 import REGStep04_00
from REG_Step_04_01 import REGStep04_01
from REG_Step_00_02 import REGStep00_02
from REG_Step_05_00 import REGStep05_00
from REG_Step_05_01 import REGStep05_01
from REG_Step_00_03 import REGStep00_03
from REG_Step_06_00 import REGStep06_00
from REG_Step_06_01 import REGStep06_01
from REG_Step_00_04 import REGStep00_04
from REG_Step_07_00 import REGStep07_00
from REG_Step_07_01 import REGStep07_01
from REG_Step_00_05 import REGStep00_05
from REG_Step_08_00 import REGStep08_00
from REG_Step_08_01 import REGStep08_01
from REG_Step_00_06 import REGStep00_06
from REG_Step_09_00 import REGStep09_00
from REG_Step_09_01 import REGStep09_01
from REG_Step_09_02 import REGStep09_02
from REG_Step_09_03 import REGStep09_03
from REG_Step_10 import REGStep10
from REG_Step_11 import REGStep11
from REG_Step_12_00 import REGStep12_00
from REG_Step_12_01 import REGStep12_01
from REG_Step_13_00 import REGStep13_00
from REG_Step_14_00 import REGStep14_00
from REG_Step_15_00 import REGStep15_00
from REG_Step_15_01 import REGStep15_01
from REG_Step_00_07 import REGStep00_07
from REG_Step_00_08 import REGStep00_08
from REG_Step_00_09 import REGStep00_09
from REG_Step_00_10 import REGStep00_10
from REG_Step_00_11 import REGStep00_11
from REG_Step_00_12 import REGStep00_12

class ETLComorbidity():
    """ Data Pipeline for creating Comorbidity score
    """
    def run(
        self,
    ):
        REGStep01().run()            #환자정보
        REGStep02().run()            #Comorbidity
        REGStep00_01().run()         #환자정보 + Comorbidity
        REGStep03_00().run()         #수술 기록지와 수술기록의 원무접수ID가 같은 환자목록
        REGStep04_00().run()         #Alb
        REGStep04_01().run()         #Alb join REGStep03
        REGStep00_02().run()         #환자정보 + Comorbidity + Alb
        REGStep05_00().run()         #Hb
        REGStep05_01().run()         #Hb join REGStep03
        REGStep00_03().run()         #환자정보 + Comorbidity + Alb + Hb
        REGStep06_00().run()         #CEA
        REGStep06_01().run()         #CEA join REGStep03
        REGStep00_04().run()         #환자정보 + Comorbidity + Alb + Hb + CEA
        REGStep07_00().run()         #CA199b   
        REGStep07_01().run()         #CA199 join REGStep03
        REGStep00_05().run()         #환자정보 + Comorbidity + Alb + Hb + CEA + CA199
        REGStep08_00().run()         #AFP
        REGStep08_01().run()         #AFP join REGStep03
        REGStep00_06().run()         #환자정보 + Comorbidity + Alb + Hb + CEA + CA199 + AFP
        REGStep09_00().run()         #수술_1
        REGStep09_01().run()         #수술_2
        REGStep09_02().run()         #수술_1 + 수술_2
        REGStep09_03().run()         #수술 최종
        REGStep10().run()            #병리진단 
        REGStep11().run()            #Washcytology
        REGStep12_00().run()         #항암제
        REGStep12_01().run()         #항암제 count 포함 
        REGStep13_00().run()         #ESD    
        REGStep00_07().run()         #환자정보 + Comorbidity + ESD + Alb + Hb + CEA + CA199 + AFP
        REGStep00_08().run()         #환자정보 + Comorbidity + ESD + Alb + Hb + CEA + CA199 + AFP + 수술
        REGStep00_09().run()         #환자정보 + Comorbidity + ESD + Alb + Hb + CEA + CA199 + AFP + 수술 + 병리진단
        REGStep00_10().run()  
        REGStep14_00().run()
        REGStep00_11().run()
        REGStep15_00().run()
        REGStep15_01().run()
        REGStep00_12().run()



if __name__ == "__main__":
    obj = ETLComorbidity()
    obj.run()