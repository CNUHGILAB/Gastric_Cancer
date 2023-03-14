import os
import sys
import subprocess
import pandas as pd
from PyQt5.QtWidgets import *
from PyQt5 import uic
from sqlalchemy import create_engine
from sqlalchemy.dialects.mysql import *
import pymysql
import sqlalchemy
pymysql.install_as_MySQLdb()

from Execute_Biopsy import ExeBiopsy
from Execute_Comorbidity import ExeComorbidity
from Execute_Endoscope import ExeEndoscope
from Execute_Patient import ExePatient
from Execute_WashCytology import ExeWashCytology

form_class = uic.loadUiType("Pathological_Total_Test/IndividualExecuteFile.ui")[0]

class IndividualExecuteFile(QDialog, QWidget, form_class):
    def __init__(self):
        super(IndividualExecuteFile, self).__init__()
        self.initUI()
        self.show()
        
    def initUI(self):
        self.setupUi(self)
        self.Back_btn.clicked.connect(self.Back)
        self.Select_btn.clicked.connect(self.SelectExecuteName)
        self.Save_btn.clicked.connect(self.SaveExecuteName)
        self.Run_btn.clicked.connect(self.RunProgram)
        
    def Back(self):
        self.close()
        
    def SelectExecuteName(self):
        print("Select Name: ", self.comboSelect.currentText())
        if self.comboSelect.currentText() == "Biopsy":
            self.executeLine.setText("Biopsy")
        elif self.comboSelect.currentText() == "Comorbidity":
            self.executeLine.setText("Comorbidity")
        elif self.comboSelect.currentText() == "Endoscope":
            self.executeLine.setText("Endoscope")
        elif self.comboSelect.currentText() == "Genetic":
            self.executeLine.setText("Genetic")
        elif self.comboSelect.currentText() == "Operation Record":
            self.executeLine.setText("Operation Record")
        elif self.comboSelect.currentText() == "Patient":
            self.executeLine.setText("Patient")
            
    def SaveExecuteName(self):
        
        global text
        
        text = self.executeLine.text()
        self.winLabel.setText(text)
    
    def RunProgram(self):
        
        if text == "Biopsy":
            #exec(open("D:/Gastric_Cancer/Patient_Test/ETL_Patient.py").read())
            #os.system("D:/Gastric_Cancer/Patient_Test/ETL_Patient.py")
            #subprocess.run(['Pathological_Total_Test/ETL_Patient.py'], shell = True)
            ExeBiopsy.run(self)
            
            self.winLabel.setText("Biopsy File을 실행하였습니다.")
            
        if text == "Comorbidity":
            #exec(open("D:/Gastric_Cancer/Patient_Test/ETL_Patient.py").read())
            #os.system("D:/Gastric_Cancer/Patient_Test/ETL_Patient.py")
            #subprocess.run(['Pathological_Total_Test/ETL_Patient.py'], shell = True)
            ExeComorbidity.run(self)
            
            self.winLabel.setText("Biopsy File을 실행하였습니다.")
            
        if text == "Endoscope":
            #exec(open("D:/Gastric_Cancer/Patient_Test/ETL_Patient.py").read())
            #os.system("D:/Gastric_Cancer/Patient_Test/ETL_Patient.py")
            #subprocess.run(['Pathological_Total_Test/ETL_Patient.py'], shell = True)
            ExeEndoscope.run(self)
            
            self.winLabel.setText("Biopsy File을 실행하였습니다.")
            
        if text == "Patient":
            #exec(open("D:/Gastric_Cancer/Patient_Test/ETL_Patient.py").read())
            #os.system("D:/Gastric_Cancer/Patient_Test/ETL_Patient.py")
            #subprocess.run(['Pathological_Total_Test/ETL_Patient.py'], shell = True)
            ExePatient.run(self)
            
            self.winLabel.setText("Patient File을 실행하였습니다.")
            
        if text == "WashCytology":
            #exec(open("D:/Gastric_Cancer/Patient_Test/ETL_Patient.py").read())
            #os.system("D:/Gastric_Cancer/Patient_Test/ETL_Patient.py")
            #subprocess.run(['Pathological_Total_Test/ETL_Patient.py'], shell = True)
            ExeWashCytology.run(self)
            
            self.winLabel.setText("Biopsy File을 실행하였습니다.")
            
if __name__ == '__main__':
    app = QApplication(sys.argv)
    # app.setStyle('Fusion')
    myWindow = IndividualExecuteFile()
    myWindow.show()
    app.exec_()