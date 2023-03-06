import sys
from PyQt5 import uic
from PyQt5.QtWidgets import *
from IndividualExecuteFile import IndividualExecuteFile
#from MakeExcelFile import MakeExcelFile

form_class = uic.loadUiType("Pathological_Total_Test/Window.ui")[0]

class MyWindow(QMainWindow, form_class):
    def __init__(self):
        super().__init__()
        self.initUI()
        self.show()

    def initUI(self):
        self.setupUi(self)
        
        self.actionExit.setShortcut('Ctrl+Q')
        self.actionExit.setStatusTip('Exit application')
        self.actionExit.triggered.connect(qApp.quit)
        
        self.exebtn.clicked.connect(self.ButtonExecute)
        #self.downloadbtn.clicked.connect(self.ButtonDownload)
        #self.downloadbtn.clicked.connect(self.buttonDownload)
    
    def ButtonExecute(self):
        self.hide()
        self.new = IndividualExecuteFile()
        self.new.exec()
        self.show()
        
    '''
    def ButtonDownload(self):
        self.hide()
        self.new = MakeExcelFile()
        self.new.exec()
        self.show()
    '''
    
if __name__ == '__main__':
    app = QApplication(sys.argv)
    # app.setStyle('Fusion')
    myWindow = MyWindow()
    myWindow.show()
    app.exec_()