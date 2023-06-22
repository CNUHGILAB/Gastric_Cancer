from Registry_29 import Registry29
from Registry_30 import Registry30
from Registry_41_01 import Registry41_01
from Registry_41_02 import Registry41_02
from Registry_41 import Registry41
from Registry_42_01 import Registry42_01
from Registry_42_02 import Registry42_02

class Registry_TotalAmylase():
    
    #Total Amylase
    def run(self):
        Registry29.run()
        Registry30.run()
        Registry41_01.run()
        Registry41_02.run()
        Registry41.run()
        Registry42_01.run()
        Registry42_02.run()


if __name__ == "__main__":
    obj = Registry_TotalAmylase()
    obj.run()