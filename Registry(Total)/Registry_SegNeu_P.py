from Registry_35 import Registry35
from Registry_36 import Registry36
from Registry_47_01 import Registry47_01
from Registry_47_02 import Registry47_02
from Registry_47_03 import Registry47_03
from Registry_47_04 import Registry47_04
from Registry_47_05 import Registry47_05
from Registry_47_06 import Registry47_06
from Registry_47_07 import Registry47_07
from Registry_47_08 import Registry47_08
from Registry_47_09 import Registry47_09
from Registry_47_10 import Registry47_10
from Registry_47 import Registry47
from Registry_48_01 import Registry48_01
from Registry_48_02 import Registry48_02

class Registry_SegNeutro_P():
    
    #Seg.Neutro(%)
    def run(self):
        Registry35.run()
        Registry36.run()
        Registry47_01.run()
        Registry47_02.run()
        Registry47_03.run()
        Registry47_04.run()
        Registry47_05.run()
        Registry47_06.run()
        Registry47_07.run()
        Registry47_08.run()
        Registry47_09.run()
        Registry47_10.run()
        Registry47.run()
        Registry48_01.run()
        Registry48_02.run()


if __name__ == "__main__":
    obj = Registry_SegNeutro_P()
    obj.run()