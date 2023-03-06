import sys
#import subprocess
import pandas as pd
from PyQt5.QtWidgets import *
from PyQt5 import uic
from sqlalchemy import create_engine
from sqlalchemy.dialects.mysql import *
import pymysql
import sqlalchemy
pymysql.install_as_MySQLdb()

form_class = uic.loadUiType("IE/IndividualExecuteFile.ui")[0]

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
        self.Back_btn.back()
        
    def SelectExecuteName(self):
        print("Select Name: ", self.comboSelect.currentText())
        if self.comboSelect.currentText() == "Patient":
            self.executeLine.setText("patient")
    
    def SaveExecuteName(self):
        
        global text
        
        text = self.executeLine.text()
        self.winLabel.setText(text)
    
    def RunProgram(self):

        engine = create_engine("mysql+mysqldb://SC:cnuh12345!@127.0.0.1:3306/patient_test", encoding = 'utf-8')
        conn = engine.connect()
        self.winLabel.setText("DB에 연결 되었습니다.\n")

        
        if text == "patient":
            exec(open("Patient_Test/ETL_Patient.py").read())
            self.winLabel.setText("Patient File을 실행하였습니다.")
            #subprocess.call("ETL_Patient.py", shell = True)
        
        '''
        sql = "SELECT DISTINCT * FROM patient_test.{0}".format(text)
        df = pd.read_sql(sql, engine)
        df.to_sql(name = text, con = engine, if_exists = 'replace', index = False)
        '''
        
        self.new_lbl.setText("DB에 파일이 업로드 되었습니다")
        conn.close