import sys
from PyQt5.QtWidgets import *
from PyQt5 import uic


form_class = uic.loadUiType("IE/DownloadWindow.ui")[0]

class DownloadWindow(QDialog, QWidget, form_class):
    def __init__(self):
        super(DownloadWindow,self).__init__()
        self.initUI()
        self.show()
        
    def initUI(self):
        self.setupUi(self)
        self.homebtn.clicked.connect(self.Home)
        
    def Home(self):
        self.close()
        
