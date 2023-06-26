from Pathologic_Biopsy_00 import Pathologic_Biopsy00
from Pathologic_Biopsy_01 import Pathologic_Biopsy01
from Pathologic_Biopsy_02 import Pathologic_Biopsy02
from Pathologic_Biopsy_03 import Pathologic_Biopsy03
from Pathologic_Biopsy_04 import Pathologic_Biopsy04
from Pathologic_Biopsy_05 import Pathologic_Biopsy05
from Pathologic_Biopsy_06 import Pathologic_Biopsy06
from Pathologic_Biopsy_07 import Pathologic_Biopsy07
from Pathologic_Biopsy_08 import Pathologic_Biopsy08
from Pathologic_Biopsy_09 import Pathologic_Biopsy09
from Pathologic_Biopsy_10 import Pathologic_Biopsy10
from Pathologic_Biopsy_11 import Pathologic_Biopsy11
from Pathologic_Biopsy_12 import Pathologic_Biopsy12
from Pathologic_Biopsy_13 import Pathologic_Biopsy13
from Pathologic_Biopsy_14 import Pathologic_Biopsy14
from Pathologic_Biopsy_15 import Pathologic_Biopsy15
from Pathologic_Biopsy_16 import Pathologic_Biopsy16
from Pathologic_Biopsy_17 import Pathologic_Biopsy17
from Pathologic_Biopsy_18 import Pathologic_Biopsy18
from Pathologic_Biopsy_19 import Pathologic_Biopsy19
from Pathologic_Biopsy_20 import Pathologic_Biopsy20
from Pathologic_Biopsy_21 import Pathologic_Biopsy21
from Pathologic_Biopsy_22 import Pathologic_Biopsy22

class ETLBiopsy():
    """ Data Pipeline for creating Genetic score
    """
    def run(self):
        Pathologic_Biopsy00().run()  
        Pathologic_Biopsy01().run()                  
        Pathologic_Biopsy02().run()                  
        Pathologic_Biopsy03().run()                  # 육안소견, 병리진단
        Pathologic_Biopsy04().run()                  # Site
        Pathologic_Biopsy05().run()                  # TumorLocation + TumorCircumference
        Pathologic_Biopsy06().run()                  # TumorSize
        Pathologic_Biopsy07().run()                  # LaurenType
        Pathologic_Biopsy08().run()                  # Gross Type_1
        Pathologic_Biopsy09().run()                  # Gross Type_2
        Pathologic_Biopsy10().run()                  # Histologic_Type_1
        Pathologic_Biopsy11().run()                  # Histologic_Type_1
        Pathologic_Biopsy12().run()                  # differentiation
        Pathologic_Biopsy13().run()                  # MSI
        Pathologic_Biopsy14().run()                  # endoscopic
        Pathologic_Biopsy15().run()                  # clear_resection_margin
        Pathologic_Biopsy16().run()                  # PTNM_Staing_1
        Pathologic_Biopsy17().run()                  # PTNM_Staing_2
        Pathologic_Biopsy18().run()                  # lymph_node_metastasis
        Pathologic_Biopsy19().run()                  # LVI_PNI
        Pathologic_Biopsy20().run()                  # Inspection
        Pathologic_Biopsy21().run()                  # 검사항목
        Pathologic_Biopsy22().run()                  # Merge


if __name__ == "__main__":
    obj = ETLBiopsy()
    obj.run()