
from Pathologic_Biopsy_01 import Pathologic_Biopsy01
from Pathologic_Biopsy_02 import Pathologic_Biopsy02
from Pathologic_Biopsy_03 import Pathologic_Biopsy03
from Pathologic_Biopsy_01 import Pathologic_Biopsy04
from Pathologic_Biopsy_01 import Pathologic_Biopsy05
from Pathologic_Biopsy_01 import Pathologic_Biopsy06
from Pathologic_Biopsy_01 import Pathologic_Biopsy07
from Pathologic_Biopsy_01 import Pathologic_Biopsy08
from Pathologic_Biopsy_01 import Pathologic_Biopsy09
from Pathologic_Biopsy_01 import Pathologic_Biopsy10
from Pathologic_Biopsy_01 import Pathologic_Biopsy11
from Pathologic_Biopsy_01 import Pathologic_Biopsy12
from Pathologic_Biopsy_01 import Pathologic_Biopsy13
from Pathologic_Biopsy_01 import Pathologic_Biopsy14
from Pathologic_Biopsy_01 import Pathologic_Biopsy15
from Pathologic_Biopsy_01 import Pathologic_Biopsy16
from Pathologic_Biopsy_01 import Pathologic_Biopsy17
from Pathologic_Biopsy_01 import Pathologic_Biopsy18
from Pathologic_Biopsy_01 import Pathologic_Biopsy19
from Pathologic_Biopsy_01 import Pathologic_Biopsy20

class ETLBiopsy():
    """ Data Pipeline for creating Genetic score
    """
    def run(self):
        Pathologic_Biopsy01().run()                  # 육안소견, 병리진단
        Pathologic_Biopsy02().run()                  # Site
        Pathologic_Biopsy03().run()                  # TumorLocation + TumorCircumference
        Pathologic_Biopsy04().run()                  # TumorSize
        Pathologic_Biopsy05().run()                  # LaurenType
        Pathologic_Biopsy06().run()                  # Gross Type_1
        Pathologic_Biopsy07().run()                  # Gross Type_2
        Pathologic_Biopsy08().run()                  # Histologic_Type_1
        Pathologic_Biopsy09().run()                  # Histologic_Type_1
        Pathologic_Biopsy10().run()                  # differentiation
        Pathologic_Biopsy11().run()                  # MSI
        Pathologic_Biopsy12().run()                  # endoscopic
        Pathologic_Biopsy13().run()                  # clear_resection_margin
        Pathologic_Biopsy14().run()                  # PTNM_Staing_1
        Pathologic_Biopsy15().run()                  # PTNM_Staing_2
        Pathologic_Biopsy16().run()                  # lymph_node_metastasis
        Pathologic_Biopsy17().run()                  # LVI_PNI
        Pathologic_Biopsy18().run()                  # Inspection
        Pathologic_Biopsy19().run()                  # 검사항목
        Pathologic_Biopsy20().run()                  # Merge

if __name__ == "__main__":
    obj = ETLBiopsy()
    obj.run()