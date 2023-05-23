from Pre_Endoscope_01 import PreEndoscope01
from Endoscope_01 import Endoscope01
from Endoscope_02 import Endoscope02
from Endoscope_03 import Endoscope03
from Endoscope_04 import Endoscope04
from Endoscope_05 import Endoscope05
from Endoscope_06 import Endoscope06
from Endoscope_07 import Endoscope07
from Endoscope_08 import Endoscope08
from Endoscope_09 import Endoscope09
from Endoscope_10 import Endoscope10
from Endoscope_11 import Endoscope11
from Endoscope_12 import Endoscope12
from Endoscope_13 import Endoscope13
from Endoscope_14 import Endoscope14
from Endoscope_15 import Endoscope15
from Endoscope_16 import Endoscope16
from Endoscope_17 import Endoscope17
from Endoscope_18 import Endoscope18
from Endoscope_19 import Endoscope19
from Endoscope_20 import Endoscope20
from Endoscope_21 import Endoscope21
from Endoscope_22 import Endoscope22
from Endoscope_23 import Endoscope23
from Endoscope_24 import Endoscope24
from Endoscope_25 import Endoscope25
from Endoscope_26 import Endoscope26
from Endoscope_27 import Endoscope27
from Endoscope_28 import Endoscope28
from Endoscope_29 import Endoscope29
from Endoscope_30 import Endoscope30
from Endoscope_31 import Endoscope31
from Endoscope_32 import Endoscope32
from Endoscope_33 import Endoscope33
from Endoscope_34 import Endoscope34
from Endoscope_35 import Endoscope35
from Endoscope_36 import Endoscope36
from Endoscope_37 import Endoscope37
from Endoscope_38 import Endoscope38
from Endoscope_39 import Endoscope39
from Endoscope_40 import Endoscope40
from Endoscope_41 import Endoscope41
from Endoscope_42 import Endoscope42
from Endoscope_43 import Endoscope43
from Endoscope_44 import Endoscope44
from Endoscope_45 import Endoscope45
from Endoscope_46 import Endoscope46
from Endoscope_47 import Endoscope47
from Endoscope_48 import Endoscope48
from Endoscope_49 import Endoscope49
from Endoscope_50 import Endoscope50
from Endoscope_51 import Endoscope51
from Endoscope_52 import Endoscope52
from Endoscope_53 import Endoscope53
from Endoscope_54 import Endoscope54
from Endoscope_55 import Endoscope55
from Endoscope_56 import Endoscope56
from Endoscope_57 import Endoscope57
from Endoscope_58 import Endoscope58
from Endoscope_59 import Endoscope59
from Endoscope_60 import Endoscope60
from Endoscope_61 import Endoscope61
from Endoscope_62 import Endoscope62
from Endoscope_63 import Endoscope63
from Endoscope_64 import Endoscope64
from Endoscope_65 import Endoscope65
from Endoscope_66 import Endoscope66
from Endoscope_67 import Endoscope67
from Endoscope_68 import Endoscope68
from Endoscope_69 import Endoscope69
from Endoscope_70 import Endoscope70
from Endoscope_71 import Endoscope71
from Endoscope_72 import Endoscope72
from Endoscope_73 import Endoscope73
from Endoscope_74 import Endoscope74
from Endoscope_75 import Endoscope75
from Endoscope_76 import Endoscope76
from Endoscope_77 import Endoscope77
from Endoscope_78 import Endoscope78
from Endoscope_79 import Endoscope79
from Endoscope_80 import Endoscope80
from Endoscope_81 import Endoscope81
from Endoscope_82 import Endoscope82
from Endoscope_83 import Endoscope83
from Endoscope_84 import Endoscope84
from Endoscope_File_Merge import Endoscope_FileMerge
from Endoscope_Column_Merge import Endoscope_ColumnMerge

class ETLEndoscope():
    '''
    Data Pipeline for creating Endoscope
    '''
    def run(self):
        
        PreEndoscope01().run()
        Endoscope01().run()                # Esophagus
        Endoscope02().run()                # Esophagus_Esophagitis_LA분류
        Endoscope03().run()                # Esophagus_Varix_Color
        Endoscope04().run()                # Esophagus_Varix_Form
        Endoscope05().run()                # Esophagus_Varix_Location
        Endoscope06().run()                # Esophagus_Varix_RCS
        Endoscope07().run()                # Esophagus_Varix_출혈유무
        Endoscope08().run()                # Stomach
        Endoscope09().run()                # Stomach_Location
        Endoscope10().run()                # Stomach_Size_1
        Endoscope11().run()                # Stomach_AGC
        Endoscope12().run()                # Stomach_AGC_2형
        Endoscope13().run()                # Stomach_AGC_3형
        Endoscope14().run()                # Stomach_EGC
        Endoscope15().run()                # Stomach_EGC_I
        Endoscope16().run()                # Stomach_EGC_IIc
        Endoscope17().run()                # Stomach_EGC_III
        Endoscope18().run()                # Stomach_General
        Endoscope19().run()                # Stomach_Polyp_Location
        Endoscope20().run()                # Stomach_Polyp_Size_1
        Endoscope21().run()                # Stomach_Polyp_Yamadatype
        Endoscope22().run()                # Stomach_Ulcer_Size_1
        Endoscope23().run()                # Stomach_Ulcer_BGU
        Endoscope24().run()                # Stomach_Ulcer_Bx
        Endoscope25().run()                # Stomach_Ulcer_Location
        Endoscope26().run()                # Stomach_Ulcer_Stage
        Endoscope27().run()                # Stomach_Varix_Color
        Endoscope28().run()                # Stomach_Varix_Form
        Endoscope29().run()                # Stomach_Varix_RCS
        Endoscope30().run()                # Stomach_Varix_경계
        Endoscope31().run()                # Stomach_Cancer_Bx
        Endoscope32().run()                # Stomach_Cancer_Description
        Endoscope33().run()                # Stomach_General_Normal
        Endoscope34().run()                # Stomach_Polyp_Bx
        Endoscope35().run()                # Stomach_Ulcer_Stage_A2
        Endoscope36().run()                # Stomach_Ulcer_Stage_H1
        Endoscope37().run()                # Stomach_Varix_Location
        Endoscope38().run()                # Stomach_Varix_출혈유무
        Endoscope39().run()                # Duodenum
        Endoscope40().run()                # Duodenum_General
        Endoscope41().run()                # Duodenum_Ulcer_Bx
        Endoscope42().run()                # Impression_1
        Endoscope43().run()                # Complication_Moderatebleeding
        Endoscope44().run()                # Complication_No
        Endoscope45().run()                # Proceduredescription
        Endoscope46().run()                # Conclusion
        Endoscope47().run()                # Other
        Endoscope48().run()                # Site
        Endoscope49().run()                # Site_size
        Endoscope50().run()                # Site_Bx
        Endoscope51().run()                # 시술후진단명
        Endoscope52().run()                # Bleeding_No
        Endoscope53().run()                # Bleeding_Oozing
        Endoscope54().run()                # Bleeding_Nobleeding
        Endoscope55().run()                # Bleeding_Activebleeding
        Endoscope56().run()                # 결과
        Endoscope57().run()                # 집도의
        Endoscope58().run()                # 시술전진단명
        Endoscope59().run()                # EMR
        Endoscope60().run()                # ESD
        Endoscope61().run()                # Polypectomy
        Endoscope62().run()                # Esophagealdilatationandstent
        Endoscope63().run()                # 시술시작년도
        Endoscope64().run()                # 시술시작월
        Endoscope65().run()                # 시술시작일
        Endoscope66().run()                # 시술시작시
        Endoscope67().run()                # 시술시작분 
        Endoscope68().run()                # 시술종료년
        Endoscope69().run()                # 시술종료월
        Endoscope70().run()                # 시술종료일
        Endoscope71().run()                # 시술종료시
        Endoscope72().run()                # 시술종료분
        Endoscope73().run()                # KOHtest
        Endoscope74().run()                # Stomach_Size_2
        Endoscope75().run()                # Stomach_Polyp_Size_2
        Endoscope76().run()                # Stomach_Ulcer_Size_2
        Endoscope77().run()                # Impression_2
        Endoscope78().run()                # Impression_3
        Endoscope79().run()                # Impression_4
        Endoscope80().run()                # Impression_5
        Endoscope81().run()                # Impression_6
        Endoscope82().run()                # ICLOtest
        Endoscope83().run()                # 조직검사유무_1
        Endoscope84().run()                # 조직검사유무_2
        Endoscope_FileMerge().run()        # Merge
        Endoscope_ColumnMerge().run()      # Merge


if __name__ == "__main__":
    obj = ETLEndoscope()
    obj.run()