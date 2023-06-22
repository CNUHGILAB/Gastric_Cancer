from Registry_27 import Registry27
from Registry_28 import Registry28
from Registry_39_01 import Registry39_01
from Registry_39_02 import Registry39_02
from Registry_39 import Registry39
from Registry_40_01 import Registry40_01
from Registry_40_02 import Registry40_02

class Registry_PancreaticAmylase():
    
    '''
    Pancreatic Amylase
    '''
    
    def run(self):
        Registry27.run()
        Registry28.run()
        Registry39_01.run()
        Registry39_02.run()
        Registry39.run()
        Registry40_01.run()
        Registry40_02.run()


if __name__ == "__main__":
    obj = Registry_PancreaticAmylase()
    obj.run()