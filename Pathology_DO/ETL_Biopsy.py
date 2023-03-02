
from Biopsy_Step_01 import BiopsyStep01
from Biopsy_Step_02 import BiopsyStep02
from Biopsy_Step_03 import BiopsyStep03
from Biopsy_Step_04 import BiopsyStep04
from Biopsy_Step_05 import BiopsyStep05
from Biopsy_Step_06 import BiopsyStep06
from Biopsy_Step_07 import BiopsyStep07
from Biopsy_Step_08 import BiopsyStep08
from Biopsy_Step_09 import BiopsyStep09
from Biopsy_Step_10 import BiopsyStep10
from Biopsy_Step_11 import BiopsyStep11
from Biopsy_Step_12 import BiopsyStep12
from Biopsy_Step_13 import BiopsyStep13
from Biopsy_Step_14 import BiopsyStep14
from Biopsy_Step_15 import BiopsyStep15
from Biopsy_Step_16 import BiopsyStep16
from Biopsy_Step_17 import BiopsyStep17
from Biopsy_Step_18 import BiopsyStep18
from Biopsy_Step_19 import BiopsyStep19
from Biopsy_Step_20 import BiopsyStep20


class ETLComorbidity():
    """ Data Pipeline for creating Genetic score
    """
    def run(
        self,
    ):
        BiopsyStep01().run()                  # 육안소견, 병리진단
        BiopsyStep02().run()                  # Site
        BiopsyStep03().run()                  # TumorLocation + TumorCircumference
        BiopsyStep04().run()                  # TumorSize
        BiopsyStep05().run()                  # LaurenType
        BiopsyStep06().run()                  # Gross Type_1
        BiopsyStep07().run()                  # Gross Type_2
        BiopsyStep08().run()                  # Histologic_Type_1
        BiopsyStep09().run()                  # Histologic_Type_1
        BiopsyStep10().run()                  # differentiation
        BiopsyStep11().run()                  # MSI
        BiopsyStep12().run()                  # endoscopic
        BiopsyStep13().run()                  # clear_resection_margin
        BiopsyStep14().run()                  # PTNM_Staing_1
        BiopsyStep15().run()                  # PTNM_Staing_2
        BiopsyStep16().run()                  # lymph_node_metastasis
        BiopsyStep17().run()                  # LVI_PNI
        BiopsyStep18().run()                  # Inspection
        BiopsyStep19().run()                  # 검사항목
        BiopsyStep20().run()                  # Merge
        

        


if __name__ == "__main__":
    obj = ETLComorbidity()
    obj.run()