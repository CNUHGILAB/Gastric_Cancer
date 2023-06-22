from Registry_37 import Registry37
from Registry_38 import Registry38
from Registry_49_01 import Registry49_01
from Registry_49_02 import Registry49_02
from Registry_49_03 import Registry49_03
from Registry_49_04 import Registry49_04
from Registry_49_05 import Registry49_05
from Registry_49_06 import Registry49_06
from Registry_49_07 import Registry49_07
from Registry_49_08 import Registry49_08
from Registry_49_09 import Registry49_09
from Registry_49_10 import Registry49_10
from Registry_49 import Registry49
from Registry_50_01 import Registry50_01
from Registry_50_02 import Registry50_02

class Registry_CRP():
    
    #CRP
    def run(self):
        Registry37.run()
        Registry38.run()
        Registry49_01.run()
        Registry49_02.run()
        Registry49_03.run()
        Registry49_04.run()
        Registry49_05.run()
        Registry49_06.run()
        Registry49_07.run()
        Registry49_08.run()
        Registry49_09.run()
        Registry49_10.run()
        Registry49.run()
        Registry50_01.run()
        Registry50_02.run()


if __name__ == "__main__":
    obj = Registry_CRP()
    obj.run()