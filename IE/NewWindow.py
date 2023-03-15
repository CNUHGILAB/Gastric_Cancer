import sys
from PyQt5.QtWidgets import *
from PyQt5 import uic
import pandas as pd
from sqlalchemy import create_engine
import pymysql
import sqlalchemy
pymysql.install_as_MySQLdb()

form_class = uic.loadUiType("IE/NewWindow.ui")[0]

class NewWindow(QDialog, QWidget, form_class):
    
    def __init__(self):
        super(NewWindow,self).__init__()
        self.initUI()
        self.show()
        
    def initUI(self):
        self.setupUi(self)
        
        self.homebtn.clicked.connect(self.Home)
        
        self.new_btn1.clicked.connect(self.openFileNamesDialog)   
        # excel 파일 불러오기 버튼 클릭
        
        self.new_btn2.clicked.connect(self.FileNamesSelect) 
        
        
        self.new_btn3.clicked.connect(self.saveFileName)
        
        
        self.new_startbtn.clicked.connect(self.RunProgram)
        
    def Home(self):
        self.close()
        
    def openFileNamesDialog(self):

        files = QFileDialog.getOpenFileName(None, "Open Excel File", '.', "(*.xlsx)")[0]

        # ⓐ '.' = 현재 디렉토리 기준
        # ⓑ ".xlsx" = xlsx 파일을 기본적으로 선택할 수 있음
        # ⓒ "Open Excel File" = "Open Excel File" 을 캡션으로 정함
        # ⓓ [0] = ['파일명'] 처럼 list 형태로 반환, 그것을 처리해주기 위함
        
        if files:
            self.new_lineEdit1.setText(files)
            
            global frames
            if self.new_com1.currentText() == "sheet1":
                frames = pd.read_excel(files, skiprows = [0], sheet_name = 0)
            elif self.new_com1.currentText() == "sheet2":
                frames = pd.read_excel(files, sheet_name=1)
                
            print(frames)
        
        self.new_lbl.setText("파일을 열었습니다\nDB 이름을 설정해 주세요")
        # self.btn1.setDisabled(True)
        
    def FileNamesSelect(self):
        
        print("comboBox index:", self.new_com2.currentText())
        if self.new_com2.currentText() == "환자정보":
            self.new_lineEdit2.setText("patient")
        elif self.new_com2.currentText() == "진단":
            self.new_lineEdit2.setText("diagnosis")
        elif self.new_com2.currentText() == "수술":
            self.new_lineEdit2.setText("operation")
        elif self.new_com2.currentText() == "혈액검사":
            self.new_lineEdit2.setText("blood_test")
        elif self.new_com2.currentText() == "간호기록":
            self.new_lineEdit2.setText("nursing_record")
        elif self.new_com2.currentText() == "조직검사":
            self.new_lineEdit2.setText("biopsy")
        elif self.new_com2.currentText() == "마취기록":
            self.new_lineEdit2.setText("anesthetic")
        elif self.new_com2.currentText() == "미생물":
            self.new_lineEdit2.setText("microorganism")
        elif self.new_com2.currentText() == "영상검사":
            self.new_lineEdit2.setText("image")
        elif self.new_com2.currentText() == "수술기록지":
            self.new_lineEdit2.setText("operation_record")
        elif self.new_com2.currentText() == "내시경검사":
            self.new_lineEdit2.setText("endoscope")
        elif self.new_com2.currentText() == "항암제":
            self.new_lineEdit2.setText("anticancer_drug")
        elif self.new_com2.currentText() == "외래초진":
            self.new_lineEdit2.setText("outpatient")
        elif self.new_com2.currentText() == "ASA":
            self.new_lineEdit2.setText("asa_score")
            
    def saveFileName(self):
        
        global text
        text = self.new_lineEdit2.text()
        self.new_lbl.setText(text)
        
    def RunProgram(self):
        
        engine = create_engine("mysql+mysqldb://SC:cnuh12345!@127.0.0.1:3306/raw_file_total", encoding = 'utf-8')
        conn = engine.connect()
        self.new_lbl.setText("DB에 연결됐습니다")
        
        dtypedict = {}
        
        if text == "patient":
            
            for i,j in zip(frames.columns, frames.dtypes):
                if "생년월일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "최초수진일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                    
                elif "최종수진일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "수진(진료)일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "입원일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "퇴원일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                    
                elif "입실시각(응급실)" in i:
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                
                elif "퇴실시각(응급실)" in i:
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "object" in str(j):
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                                            
                elif "datetime" in str(j):
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "float" in str(j):
                    dtypedict.update({i: sqlalchemy.types.Float(precision = 3, asdecimal = True)})
                    
                elif "int" in str(j):
                    dtypedict.update({i: sqlalchemy.types.INTEGER()})
        
        if text == "diagnosis":
            
            for i,j in zip(frames.columns, frames.dtypes):
                if "첫 진단일자" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                    
                elif "진단일자" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "생년월일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                    
                elif "object" in str(j):
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                                            
                elif "datetime" in str(j):
                    dtypedict.update({i: sqlalchemy.types.DateTime()})

                elif "float" in str(j):
                    dtypedict.update({i: sqlalchemy.types.Float(precision = 3, asdecimal = True)})

                elif "int" in str(j):
                    dtypedict.update({i: sqlalchemy.types.INTEGER()})
                    
        if text == "operation":
            
            for i,j in zip(frames.columns, frames.dtypes):
                if "생년월일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "수술일자" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                    
                elif "마취시작(간)" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "입실일시" in i:
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                
                elif "수술시작시간" in i:
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                
                elif "수술종료시간" in i:
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "마취종료(간)" in i:
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                
                elif "퇴실시간" in i:
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                
                elif "회복실입실일시" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "회복실퇴실일시" in i:
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "object" in str(j):
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                                            
                elif "datetime" in str(j):
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "float" in str(j):
                    dtypedict.update({i: sqlalchemy.types.Float(precision = 3, asdecimal = True)})
                    
                elif "int" in str(j):
                    dtypedict.update({i: sqlalchemy.types.INTEGER()})
                    
        if text == "blood_test":
            
            for i,j in zip(frames.columns, frames.dtypes):    
                if "생년월일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "검사시행일" in i:
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "검사처방일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "검사결과-수치값" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                    
                elif "object" in str(j):
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                                            
                elif "datetime" in str(j):
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "float" in str(j):
                    dtypedict.update({i: sqlalchemy.types.Float(precision = 3, asdecimal = True)})
                    
                elif "int" in str(j):
                    dtypedict.update({i: sqlalchemy.types.INTEGER()})
                    
        if text == "nursing_record":
            
            for i,j in zip(frames.columns, frames.dtypes):    
                if "생년월일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "[간호기록]기록작성일시" in i:
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "object" in str(j):
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                                            
                elif "datetime" in str(j):
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "float" in str(j):
                    dtypedict.update({i: sqlalchemy.types.Float(precision = 3, asdecimal = True)})
                    
                elif "int" in str(j):
                    dtypedict.update({i: sqlalchemy.types.INTEGER()})
                    
        if text == "biopsy":
            
            for i,j in zip(frames.columns, frames.dtypes):    
                if "생년월일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "검사시행일" in i:
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "검사처방일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})    
                    
                elif "object" in str(j):
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                                            
                elif "datetime" in str(j):
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "float" in str(j):
                    dtypedict.update({i: sqlalchemy.types.Float(precision = 3, asdecimal = True)})
                    
                elif "int" in str(j):
                    dtypedict.update({i: sqlalchemy.types.INTEGER()})
                    
        if text == "anesthetic":
            
            for i,j in zip(frames.columns, frames.dtypes):    
                if "생년월일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "의무기록작성일" in i:
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "수정기록일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})    
                    
                elif "object" in str(j):
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                                            
                elif "datetime" in str(j):
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "float" in str(j):
                    dtypedict.update({i: sqlalchemy.types.Float(precision = 3, asdecimal = True)})
                    
                elif "int" in str(j):
                    dtypedict.update({i: sqlalchemy.types.INTEGER()})
        '''
        if text == "microorganism":
        
            for i,j in zip(frames.columns, frames.dtypes):    
                if "생년월일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()}) 
                    
        #         elif "object" in str(j):
        #             dtypedict.update({i: sqlalchemy.types.TEXT()})
                                            
        #         elif "datetime" in str(j):
        #             dtypedict.update({i: sqlalchemy.types.DateTime()})

        #         elif "float" in str(j):
        #             dtypedict.update({i: sqlalchemy.types.Float(precision=3, asdecimal=True)})

        #         elif "int" in str(j):
        #             dtypedict.update({i: sqlalchemy.types.INT()})
        '''
        if text == "image":
            
            for i,j in zip(frames.columns, frames.dtypes):    
                if "생년월일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "검사시행일" in i:
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "검사처방일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})  
                    
                elif "검사결과-수치값" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                    
                elif "검사결과-음성양성" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                    
                elif "object" in str(j):
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                                            
                elif "datetime" in str(j):
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "float" in str(j):
                    dtypedict.update({i: sqlalchemy.types.Float(precision = 3, asdecimal = True)})
                    
                elif "int" in str(j):
                    dtypedict.update({i: sqlalchemy.types.INTEGER()})
                    
        if text == "operation_record":
            
            for i,j in zip(frames.columns, frames.dtypes):    
                if "생년월일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "의무기록작성일" in i:
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "수정기록일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})    
                    
                elif "의무기록내용-수치값" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                    
                elif "object" in str(j):
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                                            
                elif "datetime" in str(j):
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "float" in str(j):
                    dtypedict.update({i: sqlalchemy.types.Float(precision = 3, asdecimal = True)})
                    
                elif "int" in str(j):
                    dtypedict.update({i: sqlalchemy.types.INTEGER()})
                    
        if text == "endoscope":
            
            for i,j in zip(frames.columns, frames.dtypes):    
                if "생년월일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "검사시행일" in i:
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "검사처방일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})    
                    
                elif "object" in str(j):
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                                            
                elif "datetime" in str(j):
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "float" in str(j):
                    dtypedict.update({i: sqlalchemy.types.Float(precision = 3, asdecimal = True)})
                    
                elif "int" in str(j):
                    dtypedict.update({i: sqlalchemy.types.INTEGER()})
        '''
        # if text == "anticancer_drug":
        #     for i,j in zip(frames.columns, frames.dtypes):    
        #         if "생년월일" in i:
        #             dtypedict.update({i: sqlalchemy.types.Date()})
                
        #         elif "의무기록작성일" in i:
        #             dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
        #         elif "수정기록일" in i:
        #             dtypedict.update({i: sqlalchemy.types.Date()})    
                    
        #         elif "object" in str(j):
        #             dtypedict.update({i: sqlalchemy.types.TEXT()})
                                            
        #         elif "datetime" in str(j):
        #             dtypedict.update({i: sqlalchemy.types.DateTime()})

        #         elif "float" in str(j):
        #             dtypedict.update({i: sqlalchemy.types.Float(precision=3, asdecimal=True)})

        #         elif "int" in str(j):
        #             dtypedict.update({i: sqlalchemy.types.INT()})
        '''
        if text == "outpatient":
            
            for i,j in zip(frames.columns, frames.dtypes):    
                if "생년월일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "의무기록작성일" in i:
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "수정기록일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})    
                    
                elif "object" in str(j):
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                                            
                elif "datetime" in str(j):
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "float" in str(j):
                    dtypedict.update({i: sqlalchemy.types.Float(precision = 3, asdecimal = True)})
                    
                elif "int" in str(j):
                    dtypedict.update({i: sqlalchemy.types.INTEGER()})
                    
        if text == "asa_score":
            
            for i,j in zip(frames.columns, frames.dtypes):    
                if "수술일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "object" in str(j):
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "datetime" in str(j):
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "float" in str(j):
                    dtypedict.update({i: sqlalchemy.types.Float(precision = 3, asdecimal = True)})
                    
                elif "int" in str(j):
                    dtypedict.update({i: sqlalchemy.types.INTEGER()})
        
        # outputdict = self.sqlcol(frames)
                
        frames.to_sql(name = text, con = engine, if_exists = 'replace', index = False, dtype = dtypedict) 
        self.new_lbl.setText("DB에 파일이 업로드 되었습니다")
        conn.close
    
    # def sqlcol(dfparam):    
        

    #     return dtypedict