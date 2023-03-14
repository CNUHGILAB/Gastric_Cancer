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
    """ Data Pipeline for creating Genetic score
    """
    def run(self):
        GeneticMerge01().run()                  # 
        GeneticMerge02().run()                  # 
        GeneticMerge03().run()                  # 
        GeneticMerge04().run()                  # 
        GeneticMerge05().run()                  # 
        GeneticMerge06().run()                  # 
        GeneticMerge07().run()                  # 
        GeneticMerge08().run()                  # 
        GeneticMerge09().run()                  # 
        GeneticMerge10().run()                  # 
        GeneticMerge11().run()                  # 
        GeneticMerge12().run()                  # 
        GeneticMerge13().run()                  # 

if __name__ == "__main__":
    obj = ETLGeneticMerge()
    obj.run()