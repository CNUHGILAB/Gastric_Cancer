from Registry_01 import Registry01
from Registry_02 import Registry02
from Registry_03 import Registry03
from Registry_04 import Registry04
from Registry_05 import Registry05
from Registry_06 import Registry06
from Registry_07 import Registry07
from Registry_08 import Registry08
from Registry_09 import Registry09
from Registry_10 import Registry10
from Registry_11 import Registry11
from Registry_12 import Registry12
from Registry_13 import Registry13
from Registry_14 import Registry14
from Registry_15 import Registry15
from Registry_16 import Registry16
from Registry_17 import Registry17
from Registry_18 import Registry18
from Registry_19 import Registry19
from Registry_20 import Registry20
from Registry_21 import Registry21
from Registry_22 import Registry22
from Registry_23 import Registry23
from Registry_24 import Registry24
from Registry_25 import Registry25
from Registry_26 import Registry26
from Registry_27 import Registry27
from Registry_28 import Registry28
from Registry_29 import Registry29
from Registry_30 import Registry30
from Registry_31 import Registry31
from Registry_32 import Registry32
from Registry_33 import Registry33
from Registry_34 import Registry34
from Registry_35 import Registry35
from Registry_36 import Registry36
from Registry_37 import Registry37
from Registry_38 import Registry38
from Registry_39 import Registry39
from Registry_40 import Registry40
from Registry_Merge_Test_01 import RegistryMerge01
from Registry_Merge_Test_02 import RegistryMerge02
from Registry_Merge_Test_03 import RegistryMerge03
from Registry_Merge_Test_04 import RegistryMerge04
from Registry_Merge_Test_05 import RegistryMerge05
from Registry_Merge_Test_06 import RegistryMerge06
from Registry_Merge_Test_07 import RegistryMerge07
from Registry_Merge_Test_08 import RegistryMerge08
from Registry_Merge_Test_09 import RegistryMerge09
from Registry_Merge_Test_10 import RegistryMerge10
from Registry_Merge_Test_11 import RegistryMerge11
from Registry_Merge_Test_12 import RegistryMerge12
from Registry_Merge_Test_13 import RegistryMerge13
from Registry_Merge_Test_14 import RegistryMerge14
from Registry_Merge_Test_15 import RegistryMerge15
from Registry_Merge_Test_16 import RegistryMerge16
from Registry_Merge_Test_17 import RegistryMerge17
from Registry_Merge_Test_18 import RegistryMerge18
from Registry_Merge_Test_19 import RegistryMerge19
from Registry_Merge_Test_20 import RegistryMerge20



class ETLRegistry():
    """ Data Pipeline for creating Comorbidity score
    """
    def run(
        self,
    ):
        Registry01().run()            #환자정보
        Registry02().run()            #Comorbidity
        #RegistryMerge01().run()       #환자정보 + Comorbidity
        Registry03().run()            #수술 기록지와 수술기록의 원무접수ID가 같은 환자목록
        Registry04().run()            #Alb
        Registry05().run()            #Alb join REGStep03
        #RegistryMerge02().run()       #환자정보 + Comorbidity + Alb
        Registry06().run()            #Hb
        Registry07().run()            #Hb join REGStep03
        #RegistryMerge03().run()       #환자정보 + Comorbidity + Alb + Hb
        Registry08().run()            #CEA
        Registry09().run()            #CEA join REGStep03
        #RegistryMerge04().run()       #환자정보 + Comorbidity + Alb + Hb + CEA
        Registry10().run()            #CA199b   
        Registry11().run()            #CA199 join REGStep03
        #RegistryMerge05().run()       #환자정보 + Comorbidity + Alb + Hb + CEA + CA199
        Registry12().run()            #AFP
        Registry13().run()            #AFP join REGStep03
        #RegistryMerge06().run()       #환자정보 + Comorbidity + Alb + Hb + CEA + CA199 + AFP
        Registry14().run()            #수술_1
        Registry15().run()            #수술_2
        Registry16().run()            #수술_1 + 수술_2
        Registry17().run()            #수술 최종
        Registry18().run()            #병리진단 
        Registry19().run()            #Washcytology
        Registry20().run()            #항암제
        Registry21().run()            #항암제 count 포함 
        Registry22().run()            #ESD    
        #RegistryMerge07().run()       #환자정보 + Comorbidity + ESD + Alb + Hb + CEA + CA199 + AFP
        #RegistryMerge08().run()       #환자정보 + Comorbidity + ESD + Alb + Hb + CEA + CA199 + AFP + 수술
        #RegistryMerge09().run()       #환자정보 + Comorbidity + ESD + Alb + Hb + CEA + CA199 + AFP + 수술 + 병리진단
        #RegistryMerge10().run()  
        Registry23().run()
        #RegistryMerge11().run()
        Registry24().run()
        Registry25().run()
        Registry26().run()
        Registry27().run()
        #RegistryMerge12().run()
        Registry28().run()
        Registry29().run()
        Registry30().run()
        Registry31().run()
        Registry32().run()
        Registry33().run()
        Registry34().run()
        Registry35().run()
        Registry36().run()
        Registry37().run()
        Registry38().run()
        Registry39().run()
        Registry40().run()
        #RegistryMerge13().run()
        #RegistryMerge14().run()
        #RegistryMerge15().run()
        #RegistryMerge16().run()
        #RegistryMerge17().run()
        #RegistryMerge18().run()
        #RegistryMerge19().run()
        #RegistryMerge20().run()


if __name__ == "__main__":
    obj = ETLRegistry()
    obj.run()