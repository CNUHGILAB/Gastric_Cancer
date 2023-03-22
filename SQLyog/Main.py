import sys
from PyQt5 import uic
from PyQt5.QtWidgets import *
from NewWindow import NewWindow
from AddWindow import AddWindow
from DownloadWindow import DownloadWindow

form_class = uic.loadUiType("SQLyog/MainWindow.ui")[0]

class MyWindow(QMainWindow, form_class):
    
    def __init__(self):
        super().__init__()
        self.initUI()
        self.show()
    
    def initUI(self):
        self.setupUi(self)
        
        self.actionEsit.setShortcut('Ctrl+Q')
        self.actionEsit.setStatusTip('Exit application')
        self.actionEsit.triggered.connect(qApp.quit)
        
        self.newbtn.clicked.connect(self.buttonNew)
        self.addbtn.clicked.connect(self.buttonAdd)
        self.downloadbtn.clicked.connect(self.buttonDownload)
    
    def buttonNew(self):
        self.hide()
        self.new = NewWindow()
        self.new.exec()
        self.show()
    
    def buttonAdd(self):
        self.hide()
        self.new = AddWindow()
        self.new.exec()
        self.show()
    
    def buttonDownload(self):
        self.hide()
        self.new = DownloadWindow()
        self.new.exec()
        self.show()


if __name__ == '__main__':
    app = QApplication(sys.argv)
    # app.setStyle('Fusion')
    myWindow = MyWindow()
    myWindow.show()
    app.exec_()