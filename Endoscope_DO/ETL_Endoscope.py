from Endoscope_Step01 import EndoscopeStep01
from NEW_Endoscope_Step01 import NEWEndoscopeStep01
from NEW_Endoscope_Step02 import NEWEndoscopeStep02
from NEW_Endoscope_Step03 import NEWEndoscopeStep03
from NEW_Endoscope_Step04 import NEWEndoscopeStep04
from NEW_Endoscope_Step05 import NEWEndoscopeStep05
from NEW_Endoscope_Step06 import NEWEndoscopeStep06
from NEW_Endoscope_Step07 import NEWEndoscopeStep07
from NEW_Endoscope_Step08 import NEWEndoscopeStep08
from NEW_Endoscope_Step09 import NEWEndoscopeStep09
from NEW_Endoscope_Step10 import NEWEndoscopeStep10
from NEW_Endoscope_Step11 import NEWEndoscopeStep11
from NEW_Endoscope_Step12 import NEWEndoscopeStep12
from NEW_Endoscope_Step13 import NEWEndoscopeStep13
from NEW_Endoscope_Step14 import NEWEndoscopeStep14
from NEW_Endoscope_Step15 import NEWEndoscopeStep15
from NEW_Endoscope_Step16 import NEWEndoscopeStep16
from NEW_Endoscope_Step17 import NEWEndoscopeStep17
from NEW_Endoscope_Step18 import NEWEndoscopeStep18
from NEW_Endoscope_Step19 import NEWEndoscopeStep19
from NEW_Endoscope_Step20 import NEWEndoscopeStep20
from NEW_Endoscope_Step21 import NEWEndoscopeStep21
from NEW_Endoscope_Step22 import NEWEndoscopeStep22
from NEW_Endoscope_Step23 import NEWEndoscopeStep23
from NEW_Endoscope_Step24 import NEWEndoscopeStep24
from NEW_Endoscope_Step25 import NEWEndoscopeStep25
from NEW_Endoscope_Step26 import NEWEndoscopeStep26
from NEW_Endoscope_Step27 import NEWEndoscopeStep27
from NEW_Endoscope_Step28 import NEWEndoscopeStep28
from NEW_Endoscope_Step29 import NEWEndoscopeStep29
from NEW_Endoscope_Step30 import NEWEndoscopeStep30
from NEW_Endoscope_Step31 import NEWEndoscopeStep31
from NEW_Endoscope_Step32 import NEWEndoscopeStep32
from NEW_Endoscope_Step33 import NEWEndoscopeStep33
from NEW_Endoscope_Step34 import NEWEndoscopeStep34
from NEW_Endoscope_Step35 import NEWEndoscopeStep35
from NEW_Endoscope_Step36 import NEWEndoscopeStep36
from NEW_Endoscope_Step37 import NEWEndoscopeStep37
from NEW_Endoscope_Step38 import NEWEndoscopeStep38
from NEW_Endoscope_Step39 import NEWEndoscopeStep39
from NEW_Endoscope_Step40 import NEWEndoscopeStep40
from NEW_Endoscope_Step41 import NEWEndoscopeStep41
from NEW_Endoscope_Step42 import NEWEndoscopeStep42
from NEW_Endoscope_Step43 import NEWEndoscopeStep43
from NEW_Endoscope_Step44 import NEWEndoscopeStep44
from NEW_Endoscope_Step45 import NEWEndoscopeStep45
from NEW_Endoscope_Step46 import NEWEndoscopeStep46
from NEW_Endoscope_Step47 import NEWEndoscopeStep47
from NEW_Endoscope_Step48 import NEWEndoscopeStep48
from NEW_Endoscope_Step49 import NEWEndoscopeStep49
from NEW_Endoscope_Step50 import NEWEndoscopeStep50
from NEW_Endoscope_Step51 import NEWEndoscopeStep51
from NEW_Endoscope_Step52 import NEWEndoscopeStep52
from NEW_Endoscope_Step53 import NEWEndoscopeStep53
from NEW_Endoscope_Step54 import NEWEndoscopeStep54
from NEW_Endoscope_Step55 import NEWEndoscopeStep55
from NEW_Endoscope_Step56 import NEWEndoscopeStep56
from NEW_Endoscope_Step57 import NEWEndoscopeStep57
from NEW_Endoscope_Step58 import NEWEndoscopeStep58
from NEW_Endoscope_Step59 import NEWEndoscopeStep59
from NEW_Endoscope_Step60 import NEWEndoscopeStep60
from NEW_Endoscope_Step61 import NEWEndoscopeStep61
from NEW_Endoscope_Step62 import NEWEndoscopeStep62
from NEW_Endoscope_Step63 import NEWEndoscopeStep63
from NEW_Endoscope_Step64 import NEWEndoscopeStep64
from NEW_Endoscope_Step65 import NEWEndoscopeStep65
from NEW_Endoscope_Step66 import NEWEndoscopeStep66
from NEW_Endoscope_Step67 import NEWEndoscopeStep67
from NEW_Endoscope_Step68 import NEWEndoscopeStep68
from NEW_Endoscope_Step69 import NEWEndoscopeStep69
from NEW_Endoscope_Step70 import NEWEndoscopeStep70
from NEW_Endoscope_Step71 import NEWEndoscopeStep71
from NEW_Endoscope_Step72 import NEWEndoscopeStep72
from NEW_Endoscope_Step73 import NEWEndoscopeStep73
from NEW_Endoscope_Step74 import NEWEndoscopeStep74
from NEW_Endoscope_Step75 import NEWEndoscopeStep75
from NEW_Endoscope_Step76 import NEWEndoscopeStep76
from NEW_Endoscope_Step77 import NEWEndoscopeStep77
from NEW_Endoscope_Step78 import NEWEndoscopeStep78
from NEW_Endoscope_Step79 import NEWEndoscopeStep79
from NEW_Endoscope_Step80 import NEWEndoscopeStep80
from NEW_Endoscope_Step81 import NEWEndoscopeStep81
from NEW_Endoscope_Step82 import NEWEndoscopeStep82
from NEW_Endoscope_Step83 import NEWEndoscopeStep83
from NEW_Endoscope_Step84 import NEWEndoscopeStep84
from NEW_Endoscope_Step98 import NEWEndoscopeStep98
from NEW_Endoscope_Step99 import NEWEndoscopeStep99


class ETLComorbidity():
    """ Data Pipeline for creating Comorbidity score
    """
    def run(
        self,
    ):
        EndoscopeStep01().run()
        NEWEndoscopeStep01().run()                # Esophagus
        NEWEndoscopeStep02().run()                # Esophagus_Esophagitis_LA분류
        NEWEndoscopeStep03().run()                # Esophagus_Varix_Color
        NEWEndoscopeStep04().run()                # Esophagus_Varix_Form
        NEWEndoscopeStep05().run()                # Esophagus_Varix_Location
        NEWEndoscopeStep06().run()                # Esophagus_Varix_RCS
        NEWEndoscopeStep07().run()                # Esophagus_Varix_출혈유무
        NEWEndoscopeStep08().run()                # Stomach
        NEWEndoscopeStep09().run()                # Stomach_Location
        NEWEndoscopeStep10().run()                # Stomach_Size_1
        NEWEndoscopeStep11().run()                # Stomach_AGC
        NEWEndoscopeStep12().run()                # Stomach_AGC_2형
        NEWEndoscopeStep13().run()                # Stomach_AGC_3형
        NEWEndoscopeStep14().run()                # Stomach_EGC
        NEWEndoscopeStep15().run()                # Stomach_EGC_I
        NEWEndoscopeStep16().run()                # Stomach_EGC_IIc
        NEWEndoscopeStep17().run()                # Stomach_EGC_III
        NEWEndoscopeStep18().run()                # Stomach_General
        NEWEndoscopeStep19().run()                # Stomach_Polyp_Location
        NEWEndoscopeStep20().run()                # Stomach_Polyp_Size_1
        NEWEndoscopeStep21().run()                # Stomach_Polyp_Yamadatype
        NEWEndoscopeStep22().run()                # Stomach_Ulcer_Size_1
        NEWEndoscopeStep23().run()                # Stomach_Ulcer_BGU
        NEWEndoscopeStep24().run()                # Stomach_Ulcer_Bx
        NEWEndoscopeStep25().run()                # Stomach_Ulcer_Location
        NEWEndoscopeStep26().run()                # Stomach_Ulcer_Stage
        NEWEndoscopeStep27().run()                # Stomach_Varix_Color
        NEWEndoscopeStep28().run()                # Stomach_Varix_Form
        NEWEndoscopeStep29().run()                # Stomach_Varix_RCS
        NEWEndoscopeStep30().run()                # Stomach_Varix_경계
        NEWEndoscopeStep31().run()                # Stomach_Cancer_Bx
        NEWEndoscopeStep32().run()                # Stomach_Cancer_Description
        NEWEndoscopeStep33().run()                # Stomach_General_Normal
        NEWEndoscopeStep34().run()                # Stomach_Polyp_Bx
        NEWEndoscopeStep35().run()                # Stomach_Ulcer_Stage_A2
        NEWEndoscopeStep36().run()                # Stomach_Ulcer_Stage_H1
        NEWEndoscopeStep37().run()                # Stomach_Varix_Location
        NEWEndoscopeStep38().run()                # Stomach_Varix_출혈유무
        NEWEndoscopeStep39().run()                # Duodenum
        NEWEndoscopeStep40().run()                # Duodenum_General
        NEWEndoscopeStep41().run()                # Duodenum_Ulcer_Bx
        NEWEndoscopeStep42().run()                # Impression_1
        NEWEndoscopeStep43().run()                # Complication_Moderatebleeding
        NEWEndoscopeStep44().run()                # Complication_No
        NEWEndoscopeStep45().run()                # Proceduredescription
        NEWEndoscopeStep46().run()                # Conclusion
        NEWEndoscopeStep47().run()                # Other
        NEWEndoscopeStep48().run()                # Site
        NEWEndoscopeStep49().run()                # Site_size
        NEWEndoscopeStep50().run()                # Site_Bx
        NEWEndoscopeStep51().run()                # 시술후진단명
        NEWEndoscopeStep52().run()                # Bleeding_No
        NEWEndoscopeStep53().run()                # Bleeding_Oozing
        NEWEndoscopeStep54().run()                # Bleeding_Nobleeding
        NEWEndoscopeStep55().run()                # Bleeding_Activebleeding
        NEWEndoscopeStep56().run()                # 결과
        NEWEndoscopeStep57().run()                # 집도의
        NEWEndoscopeStep58().run()                # 시술전진단명
        NEWEndoscopeStep59().run()                # EMR
        NEWEndoscopeStep60().run()                # ESD
        NEWEndoscopeStep61().run()                # Polypectomy
        NEWEndoscopeStep62().run()                # Esophagealdilatationandstent
        NEWEndoscopeStep63().run()                # 시술시작년도
        NEWEndoscopeStep64().run()                # 시술시작월
        NEWEndoscopeStep65().run()                # 시술시작일
        NEWEndoscopeStep66().run()                # 시술시작시
        NEWEndoscopeStep67().run()                # 시술시작분 
        NEWEndoscopeStep68().run()                # 시술종료년
        NEWEndoscopeStep69().run()                # 시술종료월
        NEWEndoscopeStep70().run()                # 시술종료일
        NEWEndoscopeStep71().run()                # 시술종료시
        NEWEndoscopeStep72().run()                # 시술종료분
        NEWEndoscopeStep73().run()                # KOHtest
        NEWEndoscopeStep74().run()                # Stomach_Size_2
        NEWEndoscopeStep75().run()                # Stomach_Polyp_Size_2
        NEWEndoscopeStep76().run()                # Stomach_Ulcer_Size_2
        NEWEndoscopeStep77().run()                # Impression_2
        NEWEndoscopeStep78().run()                # Impression_3
        NEWEndoscopeStep79().run()                # Impression_4
        NEWEndoscopeStep80().run()                # Impression_5
        NEWEndoscopeStep81().run()                # Impression_6
        NEWEndoscopeStep82().run()                # ICLOtest
        NEWEndoscopeStep83().run()                # 조직검사유무_1
        NEWEndoscopeStep84().run()                # 조직검사유무_2
        NEWEndoscopeStep98().run()                # Merge
        NEWEndoscopeStep99().run()                # Merge


if __name__ == "__main__":
    obj = ETLComorbidity()
    obj.run()
    
    































































