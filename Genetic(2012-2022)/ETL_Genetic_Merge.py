from Genetic_Merge_01 import GeneticMerge01
from Genetic_Merge_02 import GeneticMerge02
from Genetic_Merge_03 import GeneticMerge03
from Genetic_Merge_04 import GeneticMerge04
from Genetic_Merge_05 import GeneticMerge05
from Genetic_Merge_06 import GeneticMerge06
from Genetic_Merge_07 import GeneticMerge07
from Genetic_Merge_08 import GeneticMerge08
from Genetic_Merge_09 import GeneticMerge09
from Genetic_Merge_10 import GeneticMerge10
from Genetic_Merge_11 import GeneticMerge11
from Genetic_Merge_12 import GeneticMerge12
from Genetic_Merge_13 import GeneticMerge13

class ETLGeneticMerge():
    '''
    Data Pipeline for creating Genetic Merge
    '''
    def run(self):
        GeneticMerge01().run()                  # HER2, E_Cadherin_1, E_Cadherin_2
        GeneticMerge02().run()                  # p53, p53_p
        GeneticMerge03().run()                  # Ki-67, Ki-67_p
        GeneticMerge04().run()                  # CD31_N_D2_40_1, CD31_N_D2_40_2
        GeneticMerge05().run()                  # C-kit
        GeneticMerge06().run()                  # CD34
        GeneticMerge07().run()                  # PKC_Theta
        GeneticMerge08().run()                  # S-100
        GeneticMerge09().run()                  # SMA
        GeneticMerge10().run()                  # CK_1, CK_2
        GeneticMerge11().run()                  # Chromogranin
        GeneticMerge12().run()                  # EBV
        GeneticMerge13().run()                  # Giemsa


if __name__ == "__main__":
    obj = ETLGeneticMerge()
    obj.run()