from Genetic_01 import Genetic01
from Genetic_02 import Genetic02
from Genetic_03 import Genetic03
from Genetic_04 import Genetic04
from Genetic_05 import Genetic05
from Genetic_06_01 import Genetic06_01
'''
from Genetic_06_2 import Genetic06_2
from Genetic_06_3 import Genetic06_3
'''
from Genetic_07 import Genetic07
from Genetic_08 import Genetic08
from Genetic_09 import Genetic09
from Genetic_10 import Genetic10
from Genetic_11 import Genetic11
from Genetic_12 import Genetic12
from Genetic_13 import Genetic13
from Genetic_14 import Genetic14
from Genetic_15 import Genetic15

class ETLGenetic():
    '''
    Data Pipeline for creating Genetic
    '''
    def run(self):
        Genetic01().run()                  # 병리진단
        Genetic02().run()                  # HER2
        Genetic03().run()                  # E_Cadherin
        Genetic04().run()                  # p53
        Genetic05().run()                  # Ki-67
        Genetic06_01().run()                # CD31 and D240
        '''
        Genetic06_2().run()                # CD31
        Genetic06_3().run()                # D240
        '''
        Genetic07().run()                  # C-Kit
        Genetic08().run()                  # CD34
        Genetic09().run()                  # PKC_Theta
        Genetic10().run()                  # S-100
        Genetic11().run()                  # SMA
        Genetic12().run()                  # CK
        Genetic13().run()                  # Chromogranin
        Genetic14().run()                  # EBV
        Genetic15().run()                  # Giemsa


if __name__ == "__main__":
    obj = ETLGenetic()
    obj.run()