from Genetic_Step_01 import GeneticStep01
from Genetic_Step_02 import GeneticStep02
from Genetic_Step_03 import GeneticStep03
from Genetic_Step_04 import GeneticStep04
from Genetic_Step_05 import GeneticStep05
from Genetic_Step_06 import GeneticStep06
from Genetic_Step_07 import GeneticStep07
from Genetic_Step_08 import GeneticStep08
from Genetic_Step_09 import GeneticStep09
from Genetic_Step_10 import GeneticStep10
from Genetic_Step_11 import GeneticStep11
from Genetic_Step_12 import GeneticStep12
from Genetic_Step_13 import GeneticStep13
from Genetic_Step_14 import GeneticStep14
from Genetic_Step_15 import GeneticStep15
from Genetic_Step_16 import GeneticStep16
from Genetic_Merge_Step_01 import GeneticMergeStep01
from Genetic_Merge_Step_02 import GeneticMergeStep02
from Genetic_Merge_Step_03 import GeneticMergeStep03
from Genetic_Merge_Step_04 import GeneticMergeStep04
from Genetic_Merge_Step_05 import GeneticMergeStep05
from Genetic_Merge_Step_06 import GeneticMergeStep06
from Genetic_Merge_Step_07 import GeneticMergeStep07
from Genetic_Merge_Step_08 import GeneticMergeStep08
from Genetic_Merge_Step_09 import GeneticMergeStep09
from Genetic_Merge_Step_10 import GeneticMergeStep10
from Genetic_Merge_Step_11 import GeneticMergeStep11
from Genetic_Merge_Step_12 import GeneticMergeStep12
from Genetic_Merge_Step_13 import GeneticMergeStep13
from Path_Step_01 import PathStep01
from Path_Step_02 import PathStep02
from Path_Step_03 import PathStep03
from Path_Step_04 import PathStep04
from Path_Step_05 import PathStep05
from Path_Step_06 import PathStep06
from Path_Step_07 import PathStep07
from Path_Step_08 import PathStep08
from Path_Step_09 import PathStep09
from Path_Step_10 import PathStep10
from Path_Step_11 import PathStep11
from Path_Step_12 import PathStep12
from Path_Step_13 import PathStep13
from Path_Step_14 import PathStep14
from Path_Step_15 import PathStep15
from Path_Step_16 import PathStep16
from Path_Step_17 import PathStep17
from Path_Step_18 import PathStep18
from Path_Step_19 import PathStep19
from Path_Merge_Step_01 import PathMergeStep01
from Path_Merge_Step_02 import PathMergeStep02
from Path_Merge_Step_03 import PathMergeStep03
from Path_Merge_Step_04 import PathMergeStep04
from Path_Merge_Step_05 import PathMergeStep05
from Path_Merge_Step_06 import PathMergeStep06
from Path_Merge_Step_07 import PathMergeStep07
from Path_Merge_Step_08 import PathMergeStep08
from Path_Merge_Step_09 import PathMergeStep09
from Path_Merge_Step_10 import PathMergeStep10
from Path_Merge_Step_11 import PathMergeStep11
from Path_Merge_Step_12 import PathMergeStep12
from Path_Merge_Step_13 import PathMergeStep13
from Path_Merge_Genetic import PathMergeGenetic

class ETLComorbidity():
    """ Data Pipeline for creating Genetic score
    """
    def run(
        self,
    ):
        GeneticStep01().run()               # 유전자 검사 부분만 추출
        GeneticStep02().run()               # 각 항목의 검사 결과 문장 형태로 분리
        GeneticStep03().run()               # HER2
        GeneticStep04().run()               # E_Cadherin
        GeneticMergeStep01().run()          # HER2 + E_Cadherin
        GeneticStep05().run()               # p53
        GeneticMergeStep02().run()          # HER2 + E_Cadherin + p53
        GeneticStep06().run()               # KI_67
        GeneticMergeStep03().run()          # HER2 + E_Cadherin + p53 + Ki_67
        GeneticStep07().run()               # CD31 and D2-40
        GeneticMergeStep04().run()          # HER2 + E_Cadherin + p53 + Ki_67 + CD31 and D2-40
        GeneticStep08().run()               # C-kit
        GeneticMergeStep05().run()          # HER2 + E_Cadherin + p53 + Ki_67 + CD31 and D2-40 + C-kit
        GeneticStep09().run()               # CD34
        GeneticMergeStep06().run()          # HER2 + E_Cadherin + p53 + Ki_67 + CD31 and D2-40 + C-kit + CD34
        GeneticStep10().run()               # PKC_Theta
        GeneticMergeStep07().run()          # HER2 + E_Cadherin + p53 + Ki_67 + CD31 and D2-40 + C-kit + CD34 + PKC_Theta
        GeneticStep11().run()               # s-100
        GeneticMergeStep08().run()          # HER2 + E_Cadherin + p53 + Ki_67 + CD31 and D2-40 + C-kit + CD34 + PKC_Theta +s-100
        GeneticStep12().run()               # SMA
        GeneticMergeStep09().run()          # HER2 + E_Cadherin + p53 + Ki_67 + CD31 and D2-40 + C-kit + CD34 + PKC_Theta +s-100 +SMA
        GeneticStep13().run()               # CK
        GeneticMergeStep10().run()          # HER2 + E_Cadherin + p53 + Ki_67 + CD31 and D2-40 + C-kit + CD34 + PKC_Theta +s-100 +SMA +CK
        GeneticStep14().run()               # Chromogranin
        GeneticMergeStep11().run()          # HER2 + E_Cadherin + p53 + Ki_67 + CD31 and D2-40 + C-kit + CD34 + PKC_Theta +s-100 +SMA +CK + Chromogranin
        GeneticStep15().run()               # EBV
        GeneticMergeStep12().run()          # HER2 + E_Cadherin + p53 + Ki_67 + CD31 and D2-40 + C-kit + CD34 + PKC_Theta +s-100 +SMA +CK + Chromogranin +EBV
        GeneticStep16().run()               # Giemsa
        GeneticMergeStep13().run()          # Genetic 최종결과 
        PathStep01().run()                  # 육안소견, 병리진단
        PathStep02().run()                  # Site
        PathStep03().run()                  # TumorLocation + TumorCircumference
        PathStep04().run()                  # TumorSize
        PathMergeStep01().run()             # TumorLocation + TumorCircumference + TumorSize
        PathStep05().run()                  # LaurenType
        PathMergeStep02().run()             # TumorLocation + TumorCircumference + TumorSize + LaurenType
        PathStep06().run()                  # Gross Type_1
        PathStep07().run()                  # Gross Type_2
        PathMergeStep03().run()             # TumorLocation + TumorCircumference + TumorSize + LaurenType + GrossType
        PathStep08().run()                  # Histologic_Type_1
        PathStep09().run()                  # Histologic_Type_1
        PathMergeStep04().run()             # TumorLocation + TumorCircumference + TumorSize + LaurenType + GrossType + HistologicType
        PathStep10().run()                  # differentiation
        PathMergeStep05().run()             # TumorLocation + TumorCircumference + TumorSize + LaurenType + GrossType + HistologicType + differentiation
        PathStep11().run()                  # MSI
        PathMergeStep06().run()             # TumorLocation + TumorCircumference + TumorSize + LaurenType + GrossType + HistologicType + differentiation + MSI
        PathStep12().run()                  # endoscopic
        PathMergeStep07().run()             # TumorLocation + TumorCircumference + TumorSize + LaurenType + GrossType + HistologicType + differentiation + MSI + endoscopic
        PathStep13().run()                  # clear_resection_margin
        PathMergeStep08().run()             # TumorLocation + TumorCircumference + TumorSize + LaurenType + GrossType + HistologicType + differentiation + MSI + endoscopic +clear_resection_margin
        PathStep14().run()                  # PTNM_Staing_1
        PathStep15().run()                  # PTNM_Staing_2
        PathMergeStep09().run()             # TumorLocation + TumorCircumference + TumorSize + LaurenType + GrossType + HistologicType + differentiation + MSI + endoscopic +clear_resection_margin + PTNM_Staing
        PathStep16().run()                  # lymph_node_metastasis
        PathMergeStep10().run()             # PathMergeStep09 + lymph_node_metastasis
        PathStep17().run()                  # LVI_PNI
        PathMergeStep11().run()             # PathMergeStep09 + lymph_node_metastasis + LVI_PNI
        PathStep18().run()                  # Inspection
        PathMergeStep12().run()             # PathMergeStep09 + lymph_node_metastasis + LVI_PNI + Inspection
        PathStep19().run()                  # 검사항목
        PathMergeStep13().run()             # PathMergeStep09 + lymph_node_metastasis + LVI_PNI + Inspection + 검사항목
        PathMergeGenetic().run()            # Path_Merge_Genetic                  

        

        


if __name__ == "__main__":
    obj = ETLComorbidity()
    obj.run()