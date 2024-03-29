import sys
from PyQt5.QtWidgets import *
from PyQt5 import uic
import pandas as pd
from sqlalchemy import create_engine
import pymysql
import sqlalchemy
from sqlalchemy.dialects.mysql import *
pymysql.install_as_MySQLdb()

form_class = uic.loadUiType("File_Upload/Excel_Window.ui")[0]

class ExcelWindow(QDialog, QWidget, form_class):
    
    def __init__(self):
        super(ExcelWindow, self).__init__()
        self.initUI()
        self.show()
        
    def initUI(self):
        self.setupUi(self)
        
        self.excel_closebtn.clicked.connect(self.Cancel)
        
        self.excel_importbtn.clicked.connect(self.openFileNamesDialog)   
        # excel 파일 불러오기 버튼 클릭
        
        self.excel_selectbtn.clicked.connect(self.selectTableNames) 
        
        self.excel_savebtn.clicked.connect(self.saveTableName)
        
        self.excel_editbtn.clicked.connect(self.printDBName)
        
        self.excel_actbtn.clicked.connect(self.RunProgram)
        
    def Cancel(self):
        self.close()
        
    def openFileNamesDialog(self):

        files = QFileDialog.getOpenFileName(None, "Open Excel File", '.', "(*.xlsx)")[0]

        # ⓐ '.' = 현재 디렉토리 기준
        # ⓑ ".xlsx" = xlsx 파일을 기본적으로 선택할 수 있음
        # ⓒ "Open Excel File" = "Open Excel File" 을 캡션으로 정함
        # ⓓ [0] = ['파일명'] 처럼 list 형태로 반환, 그것을 처리해주기 위함
        
        if files:
            self.showfilename.setText(files)
            
            global frames
            if self.setsheet.currentText() == "sheet1":
                frames = pd.read_excel(files, sheet_name = 0)
            elif self.setsheet.currentText() == "sheet2":
                frames = pd.read_excel(files, sheet_name=1)
                
            print(frames)
        
        self.showtext1.setText("파일을 열었습니다.\n\nDB 이름을 설정해 주세요.")
        # self.btn1.setDisabled(True)
        
    def selectTableNames(self):
        
        print("Table Name:", self.settablename.currentText())
        
        if self.settablename.currentText() == "Biopsy":
            self.showtablename.setText("biopsy_protocol")
        elif self.settablename.currentText() == "Block Mapping":
            self.showtablename.setText("block_mapping_protocol")
        elif self.settablename.currentText() == "Comorbidity":
            self.showtablename.setText("comorbidity_protocol")
        elif self.settablename.currentText() == "Endoscope":
            self.showtablename.setText("endoscope_protocol")
        elif self.settablename.currentText() == "Genetic":
            self.showtablename.setText("genetic_protocol")
        elif self.settablename.currentText() == "Operation Record":
            self.showtablename.setText("operation_record_protocol")
        elif self.settablename.currentText() == "Pathology":
            self.showtablename.setText("pathology_protocol")
        elif self.settablename.currentText() == "Patient":
            self.showtablename.setText("patient_protocol")
        elif self.settablename.currentText() == "Registry":
            self.showtablename.setText("registry_protocol")
        elif self.settablename.currentText() == "Wash Cytology":
            self.showtablename.setText("wash_cytology_protocol")
        
    def saveTableName(self):
        
        global table_name
        
        table_name = self.showdbname.text()
        self.showtext2.setText(table_name)
        
        print("Table Name:", table_name)
        
    def printDBName(self):
        
        global db_name
        
        db_name = self.editfilename.text()
        self.showtext3.setText(db_name)
        
        print("DB Name:", db_name)
        
    def RunProgram(self):
        
        engine = create_engine("mysql+mysqldb://SC:cnuh12345!@127.0.0.1:3306/{}".format(table_name), encoding = 'utf-8')
        conn = engine.connect()
        
        self.showtext4.setText("DB에 연결됐습니다.")
        
        dtypedict = {}
        
        if db_name != None:
            
            for i,j in zip(frames.columns, frames.dtypes):
                if "object" in str(j):
                    dtypedict.update({i: LONGTEXT()})
                
                elif "float" in str(j):
                    dtypedict.update({i: sqlalchemy.types.Float(precision = 3, asdecimal = True)})
                
                elif "int" in str(j):
                    dtypedict.update({i: sqlalchemy.types.INTEGER()})
            
        # outputdict = self.sqlcol(frames)
        
        frames.to_sql(name = db_name, con = engine, if_exists = 'replace', index = False, dtype = dtypedict)
        
        self.showtext4.setText("DB에 파일이 업로드 되었습니다.")
        
        conn.close
        
        print("DB에 파일이 업로드 되었습니다.")
        
    # def sqlcol(dfparam):    
        

    #     return dtypedict