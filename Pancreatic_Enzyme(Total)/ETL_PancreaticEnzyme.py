#Pancreatic Amylase
from Pancreatic_Amylase_00 import PancreaticAmylase00
from Pancreatic_Amylase_01 import PancreaticAmylase01
from Pancreatic_Amylase_02 import PancreaticAmylase02
from Pancreatic_Amylase_03 import PancreaticAmylase03
from Pancreatic_Amylase_04 import PancreaticAmylase04
from Pancreatic_Amylase_05 import PancreaticAmylase05
from Pancreatic_Amylase_06 import PancreaticAmylase06
from Pancreatic_Amylase_07 import PancreaticAmylase07
from Pancreatic_Amylase_08 import PancreaticAmylase08
from Pancreatic_Amylase_09 import PancreaticAmylase09
from Pancreatic_Amylase_10 import PancreaticAmylase10
'''
#Total Amylase
from Total_Amylase_00 import TotalAmylase00
from Total_Amylase_01 import TotalAmylase01
from Total_Amylase_02 import TotalAmylase02
from Total_Amylase_03 import TotalAmylase03
from Total_Amylase_04 import TotalAmylase04
from Total_Amylase_05 import TotalAmylase05
from Total_Amylase_06 import TotalAmylase06
#Lipase
from Lipase_00 import Lipase00
from Lipase_01 import Lipase01
from Lipase_02 import Lipase02
from Lipase_03 import Lipase03
from Lipase_04 import Lipase04
from Lipase_05 import Lipase05
from Lipase_06 import Lipase06
#WBC
from WBC_00 import WBC00
from WBC_01 import WBC01
from WBC_02 import WBC02
from WBC_03 import WBC03
from WBC_04 import WBC04
from WBC_05 import WBC05
from WBC_06 import WBC06
from WBC_07 import WBC07
from WBC_08 import WBC08
from WBC_09 import WBC09
from WBC_10 import WBC10
from WBC_11 import WBC11
from WBC_12 import WBC12
from WBC_13 import WBC13
from WBC_14 import WBC14
#Seg.Neutro(%)
from Seg_NeutroP_00 import SegNeutroP00
from Seg_NeutroP_01 import SegNeutroP01
from Seg_NeutroP_02 import SegNeutroP02
from Seg_NeutroP_03 import SegNeutroP03
from Seg_NeutroP_04 import SegNeutroP04
from Seg_NeutroP_05 import SegNeutroP05
from Seg_NeutroP_06 import SegNeutroP06
from Seg_NeutroP_07 import SegNeutroP07
from Seg_NeutroP_08 import SegNeutroP08
from Seg_NeutroP_09 import SegNeutroP09
from Seg_NeutroP_10 import SegNeutroP10
from Seg_NeutroP_11 import SegNeutroP11
from Seg_NeutroP_12 import SegNeutroP12
from Seg_NeutroP_13 import SegNeutroP13
from Seg_NeutroP_14 import SegNeutroP14
#CRP
from CRP_00 import CRP00
from CRP_01 import CRP01
from CRP_02 import CRP02
from CRP_03 import CRP03
from CRP_04 import CRP04
from CRP_05 import CRP05
from CRP_06 import CRP06
from CRP_07 import CRP07
from CRP_08 import CRP08
from CRP_09 import CRP09
from CRP_10 import CRP10
from CRP_11 import CRP11
from CRP_12 import CRP12
from CRP_13 import CRP13
from CRP_14 import CRP14
'''


class ETLPancreaticEnzyme():
    
    def run(self):
        #Pancreatic Amylase
        PancreaticAmylase00.run()
        PancreaticAmylase01.run()
        PancreaticAmylase02.run()
        PancreaticAmylase03.run()
        PancreaticAmylase04.run()
        PancreaticAmylase05.run()
        PancreaticAmylase06.run()
        PancreaticAmylase07.run()
        PancreaticAmylase08.run()
        PancreaticAmylase09.run()
        PancreaticAmylase10.run()
        '''
        #Total Amylase
        TotalAmylase00.run()
        TotalAmylase01.run()
        TotalAmylase02.run()
        TotalAmylase03.run()
        TotalAmylase04.run()
        TotalAmylase05.run()
        TotalAmylase06.run()
        #Lipase
        Lipase00.run()
        Lipase01.run()
        Lipase02.run()
        Lipase03.run()
        Lipase04.run()
        Lipase05.run()
        Lipase06.run()
        #WBC
        WBC00.run()
        WBC01.run()
        WBC02.run()
        WBC03.run()
        WBC04.run()
        WBC05.run()
        WBC06.run()
        WBC07.run()
        WBC08.run()
        WBC09.run()
        WBC10.run()
        WBC11.run()
        WBC12.run()
        WBC13.run()
        WBC14.run()
        #Seg.Neutro(%)
        SegNeutroP00.run()
        SegNeutroP01.run()
        SegNeutroP02.run()
        SegNeutroP03.run()
        SegNeutroP04.run()
        SegNeutroP05.run()
        SegNeutroP06.run()
        SegNeutroP07.run()
        SegNeutroP08.run()
        SegNeutroP09.run()
        SegNeutroP10.run()
        SegNeutroP11.run()
        SegNeutroP12.run()
        SegNeutroP13.run()
        SegNeutroP14.run()
        #CRP
        CRP00.run()
        CRP01.run()
        CRP02.run()
        CRP03.run()
        CRP04.run()
        CRP05.run()
        CRP06.run()
        CRP07.run()
        CRP08.run()
        CRP09.run()
        CRP10.run()
        CRP11.run()
        CRP12.run()
        CRP13.run()
        CRP14.run()
        '''


if __name__ == "__main__":
    obj = ETLPancreaticEnzyme()
    obj.run()