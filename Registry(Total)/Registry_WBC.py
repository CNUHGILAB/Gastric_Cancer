from Registry_33 import Registry33
from Registry_34 import Registry34
from Registry_45_01 import Registry45_01
from Registry_45_02 import Registry45_02
from Registry_45_03 import Registry45_03
from Registry_45_04 import Registry45_04
from Registry_45_05 import Registry45_05
from Registry_45_06 import Registry45_06
from Registry_45_07 import Registry45_07
from Registry_45_08 import Registry45_08
from Registry_45_09 import Registry45_09
from Registry_45_10 import Registry45_10
from Registry_45 import Registry45
from Registry_46_01 import Registry46_01
from Registry_46_02 import Registry46_02

class Registry_WBC():
    
    #WBC
    def run(self):
        Registry33.run()
        Registry34.run()
        Registry45_01.run()
        Registry45_02.run()
        Registry45_03.run()
        Registry45_04.run()
        Registry45_05.run()
        Registry45_06.run()
        Registry45_07.run()
        Registry45_08.run()
        Registry45_09.run()
        Registry45_10.run()
        Registry45.run()
        Registry46_01.run()
        Registry46_02.run()


if __name__ == "__main__":
    obj = Registry_WBC()
    obj.run()