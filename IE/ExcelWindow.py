import sys
from PyQt5.QtWidgets import *
from PyQt5 import uic
import pandas as pd
from sqlalchemy import create_engine
import pymysql
import sqlalchemy
pymysql.install_as_MySQLdb()

form_class = uic.loadUiType("IE/ExcelWindow.ui")[0]

class ExcelWindow(QDialog, QWidget, form_class):
    
    def __init__(self):
        super(ExcelWindow, self).__init__()
        self.initUI()
        self.show()
        
    def initUI(self):
        self.setupUi(self)
        
        self.excel_homebtn.clicked.connect(self.Home)
        
        self.excel_importbtn.clicked.connect(self.openFileNamesDialog)   
        # excel 파일 불러오기 버튼 클릭
        
        self.excel_selectbtn.clicked.connect(self.FileNamesSelect) 
        
        
        self.excel_savebtn.clicked.connect(self.saveFileName)
        
        
        self.excel_actbtn.clicked.connect(self.RunProgram)
        
    def Home(self):
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
                frames = pd.read_excel(files, skiprows = [0], sheet_name = 0)
            elif self.setsheet.currentText() == "sheet2":
                frames = pd.read_excel(files, sheet_name=1)
                
            print(frames)
        
        self.showtext.setText("파일을 열었습니다\nDB 이름을 설정해 주세요")
        # self.btn1.setDisabled(True)
        
    def FileNamesSelect(self):
        
        print("comboBox index:", self.setdbname.currentText())
        if self.setdbname.currentText() == "Type1":
            self.showdbname.setText("data_type1")
        elif self.setdbname.currentText() == "Type2":
            self.showdbname.setText("data_type2")
        elif self.setdbname.currentText() == "Type3":
            self.showdbname.setText("data_type3")
        elif self.setdbname.currentText() == "Type4":
            self.showdbname.setText("data_type4")
        elif self.setdbname.currentText() == "Type5":
            self.showdbname.setText("data_type5")
        elif self.setdbname.currentText() == "Type6":
            self.showdbname.setText("data_type6")
            
    def saveFileName(self):
        
        global text
        text = self.showdbname.text()
        self.showtext.setText(text)
        
    def RunProgram(self):
        
        engine = create_engine("mysql+mysqldb://SC:cnuh12345!@127.0.0.1:3306/block_mapping_protocol", encoding = 'utf-8')
        conn = engine.connect()
        self.showtext.setText("DB에 연결됐습니다")
        
        dtypedict = {}
        
        if text == "data_type1":
            
            for i, j in zip(frames.columns, frames.dtypes):
                if "object" in str(j):
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                                            
                elif "datetime" in str(j):
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "float" in str(j):
                    dtypedict.update({i: sqlalchemy.types.Float(precision = 3, asdecimal = True)})
                    
                elif "int" in str(j):
                    dtypedict.update({i: sqlalchemy.types.INTEGER()})
        
        if text == "data_type2":
            
            for i, j in zip(frames.columns, frames.dtypes):
                if "object" in str(j):
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                                            
                elif "datetime" in str(j):
                    dtypedict.update({i: sqlalchemy.types.DateTime()})

                elif "float" in str(j):
                    dtypedict.update({i: sqlalchemy.types.Float(precision = 3, asdecimal = True)})

                elif "int" in str(j):
                    dtypedict.update({i: sqlalchemy.types.INTEGER()})
                    
        if text == "data_type3":
            
            for i, j in zip(frames.columns, frames.dtypes):
                if "object" in str(j):
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                                            
                elif "datetime" in str(j):
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "float" in str(j):
                    dtypedict.update({i: sqlalchemy.types.Float(precision = 3, asdecimal = True)})
                    
                elif "int" in str(j):
                    dtypedict.update({i: sqlalchemy.types.INTEGER()})
                    
        if text == "data_type4":
            
            for i, j in zip(frames.columns, frames.dtypes):    
                if "object" in str(j):
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                                            
                elif "datetime" in str(j):
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "float" in str(j):
                    dtypedict.update({i: sqlalchemy.types.Float(precision = 3, asdecimal = True)})
                    
                elif "int" in str(j):
                    dtypedict.update({i: sqlalchemy.types.INTEGER()})
                    
        if text == "data_type5":
            
            for i,j in zip(frames.columns, frames.dtypes):    
                if "object" in str(j):
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                                            
                elif "datetime" in str(j):
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "float" in str(j):
                    dtypedict.update({i: sqlalchemy.types.Float(precision = 3, asdecimal = True)})
                    
                elif "int" in str(j):
                    dtypedict.update({i: sqlalchemy.types.INTEGER()})
                    
        if text == "data_type6":
            
            for i,j in zip(frames.columns, frames.dtypes):    
                if "object" in str(j):
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                                            
                elif "datetime" in str(j):
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "float" in str(j):
                    dtypedict.update({i: sqlalchemy.types.Float(precision = 3, asdecimal = True)})
                    
                elif "int" in str(j):
                    dtypedict.update({i: sqlalchemy.types.INTEGER()})
        
        # outputdict = self.sqlcol(frames)
        
        frames.to_sql(name = text, con = engine, if_exists = 'replace', index = False, dtype = dtypedict) 
        self.showtext.setText("DB에 파일이 업로드 되었습니다")
        conn.close
    
    # def sqlcol(dfparam):    
        

    #     return dtypedict