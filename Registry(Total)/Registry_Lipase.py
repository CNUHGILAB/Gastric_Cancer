from Registry_31 import Registry31
from Registry_32 import Registry32
from Registry_41_01 import Registry41_01
from Registry_41_02 import Registry41_02
from Registry_41 import Registry41
from Registry_42_01 import Registry42_01
from Registry_42_02 import Registry42_02

class Registry_Lipase():
    
    #Lipase
    def run(self):
        Registry31.run()
        Registry32.run()
        Registry41_01.run()
        Registry41_02.run()
        Registry41.run()
        Registry42_01.run()
        Registry42_02.run()


if __name__ == "__main__":
    obj = Registry_Lipase()
    obj.run()