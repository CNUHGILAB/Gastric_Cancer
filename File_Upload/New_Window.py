import sys
from PyQt5.QtWidgets import *
from PyQt5 import uic
import pandas as pd
from sqlalchemy import create_engine
import pymysql
import sqlalchemy
from sqlalchemy.dialects.mysql import *
pymysql.install_as_MySQLdb()

form_class = uic.loadUiType("File_Upload/New_Window.ui")[0]

class NewWindow(QDialog, QWidget, form_class):
    
    def __init__(self):
        super(NewWindow,self).__init__()
        self.initUI()
        self.show()
        
    def initUI(self):
        self.setupUi(self)
        
        self.new_closebtn.clicked.connect(self.Cancel)
        
        self.new_importbtn.clicked.connect(self.openFileNamesDialog)   
        # excel 파일 불러오기 버튼 클릭
        
        self.new_selectbtn1.clicked.connect(self.selectTableName)
        
        self.new_selectbtn2.clicked.connect(self.selectDBName) 
        
        self.new_savebtn1.clicked.connect(self.saveTableName)
        
        self.new_savebtn2.clicked.connect(self.saveDBName)
        
        self.new_actbtn.clicked.connect(self.RunProgram)
        
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
                frames = pd.read_excel(files, skiprows = [0], sheet_name = 0)
            elif self.setsheet.currentText() == "sheet2":
                frames = pd.read_excel(files, sheet_name=1)
                
            print("파일을 열었습니다.")
        
        self.showtext1.setText("파일을 열었습니다.\n\nDB 이름을 설정해 주세요.")
        # self.btn1.setDisabled(True)
        
    def selectTableName(self):
        
        print("Table Name:", self.settablename.currentText())
        
        if self.settablename.currentText() == "Raw File Total":
            self.showtablename.setText("raw_file")
        elif self.settablename.currentText() == "Raw File(2012-2022)":
            self.showtablename.setText("raw_file_2012_2022")
        
    def selectDBName(self):
        
        print("DB Name:", self.setdbname.currentText())
        
        if self.setdbname.currentText() == "환자정보":
            self.showdbname.setText("patient")
        elif self.setdbname.currentText() == "진단":
            self.showdbname.setText("diagnosis")
        elif self.setdbname.currentText() == "수술":
            self.showdbname.setText("operation")
        elif self.setdbname.currentText() == "혈액검사":
            self.showdbname.setText("blood_test")
        elif self.setdbname.currentText() == "간호기록(통합+진술문x)":
            self.showdbname.setText("nursing_record_1")
        elif self.setdbname.currentText() == "간호기록(진술문o)":
            self.showdbname.setText("nursing_record_2")
        elif self.setdbname.currentText() == "조직검사":
            self.showdbname.setText("biopsy")
        elif self.setdbname.currentText() == "마취기록":
            self.showdbname.setText("anesthetic")
        elif self.setdbname.currentText() == "미생물":
            self.showdbname.setText("microorganism")
        elif self.setdbname.currentText() == "영상검사":
            self.showdbname.setText("image")
        elif self.setdbname.currentText() == "수술기록지":
            self.showdbname.setText("operation_record")
        elif self.setdbname.currentText() == "내시경검사":
            self.showdbname.setText("endoscope")
        elif self.setdbname.currentText() == "항암제":
            self.showdbname.setText("anticancer_drug")
        elif self.setdbname.currentText() == "외래초진":
            self.showdbname.setText("outpatient")
        elif self.setdbname.currentText() == "ASA":
            self.showdbname.setText("asa_score")
    
    def saveTableName(self):
        
        global table_name
        
        table_name = self.showtablename.text()
        self.showtext2.setText(table_name)
        
        print("Table Name:", table_name)
    
    def saveDBName(self):
        
        global db_name
        
        db_name = self.showdbname.text()
        self.showtext3.setText(db_name)
        
        print("DB Name:", db_name)
    
    def RunProgram(self):
        
        engine = create_engine("mysql+mysqldb://SC:cnuh12345!@127.0.0.1:3306/{}".format(table_name), encoding = 'utf-8')
        conn = engine.connect()
        
        self.showtext4.setText("DB에 연결됐습니다.")
        
        dtypedict = {}
        
        if db_name == "patient":
            
            for i,j in zip(frames.columns, frames.dtypes):
                if "원무접수ID" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                    
                elif "생년월일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "최초수진일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                    
                elif "최종수진일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "수진(진료)일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "수진당시나이" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                    
                elif "입원일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "퇴원일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                    
                elif "입실시각(응급실)" in i:
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                
                elif "퇴실시각(응급실)" in i:
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "object" in str(j):
                    dtypedict.update({i: LONGTEXT()})
                                            
                elif "datetime" in str(j):
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "float" in str(j):
                    dtypedict.update({i: sqlalchemy.types.Float(precision = 3, asdecimal = True)})
                    
                elif "int" in str(j):
                    dtypedict.update({i: sqlalchemy.types.INTEGER()})
        
        if db_name == "diagnosis":
            
            for i,j in zip(frames.columns, frames.dtypes):
                if "원무접수ID" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "첫 진단일자" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                    
                elif "진단일자" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "생년월일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "진단등록나이" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "첫 진단당시나이" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "진단코드" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                    
                elif "ICD10코드" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "object" in str(j):
                    dtypedict.update({i: LONGTEXT()})

                elif "datetime" in str(j):
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                
                elif "float" in str(j):
                    dtypedict.update({i: sqlalchemy.types.Float(precision = 3, asdecimal = True)})
                
                elif "int" in str(j):
                    dtypedict.update({i: sqlalchemy.types.INTEGER()})
                
        if db_name == "operation":
            
            for i,j in zip(frames.columns, frames.dtypes):
                if "원무접수ID" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "생년월일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "수술일자" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "수술코드" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "ICD9CM코드" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "집도의 사번" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "수술진단코드" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
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
                    dtypedict.update({i: LONGTEXT()})
                                            
                elif "datetime" in str(j):
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "float" in str(j):
                    dtypedict.update({i: sqlalchemy.types.Float(precision = 3, asdecimal = True)})
                    
                elif "int" in str(j):
                    dtypedict.update({i: sqlalchemy.types.INTEGER()})
                    
        if db_name == "blood_test":
            
            for i,j in zip(frames.columns, frames.dtypes):
                if "원무접수ID" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                    
                elif "생년월일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "검사시행일" in i:
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                
                elif "검사코드" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "검사서식세부항목ID" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "검사처방일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "검사결과-수치값" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "검사 처방의사번" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "object" in str(j):
                    dtypedict.update({i: LONGTEXT()})
                                            
                elif "datetime" in str(j):
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "float" in str(j):
                    dtypedict.update({i: sqlalchemy.types.Float(precision = 3, asdecimal = True)})
                    
                elif "int" in str(j):
                    dtypedict.update({i: sqlalchemy.types.INTEGER()})
        
        if db_name == "nursing_record_1":
            
            for i,j in zip(frames.columns, frames.dtypes):
                if "원무접수ID" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                    
                elif "생년월일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "[간호기록]기록작성일시" in i:
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                
                elif "Ent:Atr:항목" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "object" in str(j):
                    dtypedict.update({i: LONGTEXT()})
                                            
                elif "datetime" in str(j):
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "float" in str(j):
                    dtypedict.update({i: sqlalchemy.types.Float(precision = 3, asdecimal = True)})
                    
                elif "int" in str(j):
                    dtypedict.update({i: sqlalchemy.types.INTEGER()})
        
        if db_name == "nursing_record_2":
            
            for i,j in zip(frames.columns, frames.dtypes):
                if "원무접수ID" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                    
                elif "생년월일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "[진술문]기록작성일시" in i:
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "object" in str(j):
                    dtypedict.update({i: LONGTEXT()})
                                            
                elif "datetime" in str(j):
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "float" in str(j):
                    dtypedict.update({i: sqlalchemy.types.Float(precision = 3, asdecimal = True)})
                    
                elif "int" in str(j):
                    dtypedict.update({i: sqlalchemy.types.INTEGER()})
        
        if db_name == "biopsy":
            
            for i,j in zip(frames.columns, frames.dtypes):
                if "원무접수ID" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                    
                elif "생년월일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "검사시행일" in i:
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                
                elif "검사코드" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "판독의사번" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "검사처방일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})    
                
                elif "검사 처방의사번" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "object" in str(j):
                    dtypedict.update({i: LONGTEXT()})
                                            
                elif "datetime" in str(j):
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "float" in str(j):
                    dtypedict.update({i: sqlalchemy.types.Float(precision = 3, asdecimal = True)})
                    
                elif "int" in str(j):
                    dtypedict.update({i: sqlalchemy.types.INTEGER()})
                    
        if db_name == "anesthetic":
            
            for i,j in zip(frames.columns, frames.dtypes):
                if "원무접수ID" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                    
                elif "생년월일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "의무기록작성일" in i:
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "수정기록일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})    
                
                elif "작성의 사번" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "진료서식ID" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "진료서식구성원소ID" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "의무기록내용" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "진료서식유형코드" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "object" in str(j):
                    dtypedict.update({i: LONGTEXT()})
                                            
                elif "datetime" in str(j):
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "float" in str(j):
                    dtypedict.update({i: sqlalchemy.types.Float(precision = 3, asdecimal = True)})
                    
                elif "int" in str(j):
                    dtypedict.update({i: sqlalchemy.types.INTEGER()})
        '''
        if db_name == "microorganism":
        
            for i,j in zip(frames.columns, frames.dtypes):    
                if "생년월일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()}) 
                    
                elif "object" in str(j):
                    dtypedict.update({i: LONGTEXT()})
                                            
                elif "datetime" in str(j):
                    dtypedict.update({i: sqlalchemy.types.DateTime()})

                elif "float" in str(j):
                    dtypedict.update({i: sqlalchemy.types.Float(precision=3, asdecimal=True)})

                elif "int" in str(j):
                    dtypedict.update({i: sqlalchemy.types.INT()})
        '''
        if db_name == "image":
            
            for i,j in zip(frames.columns, frames.dtypes):
                if "원무접수ID" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                    
                elif "생년월일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "검사시행일" in i:
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                
                elif "검사코드" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "검사처방일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})  
                
                elif "검사서식세부항목ID" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "검사결과-수치값" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                    
                elif "검사결과-음성양성" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                    
                elif "검사 처방의사번" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "object" in str(j):
                    dtypedict.update({i: LONGTEXT()})
                                            
                elif "datetime" in str(j):
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "float" in str(j):
                    dtypedict.update({i: sqlalchemy.types.Float(precision = 3, asdecimal = True)})
                    
                elif "int" in str(j):
                    dtypedict.update({i: sqlalchemy.types.INTEGER()})
                    
        if db_name == "operation_record":
            
            for i,j in zip(frames.columns, frames.dtypes):
                if "원무접수ID" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                    
                elif "생년월일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "의무기록작성일" in i:
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "수정기록일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})    
                
                elif "작성의 사번" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "의무기록 환자진료과코드" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "진료서식ID" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "진료서식구성원소ID" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "의무기록내용-수치값" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                    
                elif "진료서식유형코드" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                    
                elif "object" in str(j):
                    dtypedict.update({i: LONGTEXT()})
                                            
                elif "datetime" in str(j):
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "float" in str(j):
                    dtypedict.update({i: sqlalchemy.types.Float(precision = 3, asdecimal = True)})
                    
                elif "int" in str(j):
                    dtypedict.update({i: sqlalchemy.types.INTEGER()})
                    
        if db_name == "endoscope":
            
            for i,j in zip(frames.columns, frames.dtypes):
                if "원무접수ID" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                    
                elif "생년월일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "검사시행일" in i:
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                
                elif "검사코드" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "검사결과-음성양성" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "판독의사번" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                    
                elif "검사처방일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})    
                
                elif "검사 처방의사번" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "object" in str(j):
                    dtypedict.update({i: LONGTEXT()})
                                            
                elif "datetime" in str(j):
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "float" in str(j):
                    dtypedict.update({i: sqlalchemy.types.Float(precision = 3, asdecimal = True)})
                    
                elif "int" in str(j):
                    dtypedict.update({i: sqlalchemy.types.INTEGER()})

        if db_name == "anticancer_drug":
            for i,j in zip(frames.columns, frames.dtypes):
                if "원무접수ID" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                    
                elif "생년월일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "약품처방일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                    
                elif "약품코드" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "대표약품코드" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "포장단위1일약품투여량" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "1회처방량" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "약품 처방의사번" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                    
                elif "object" in str(j):
                    dtypedict.update({i: LONGTEXT()})
                                            
                elif "datetime" in str(j):
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "float" in str(j):
                    dtypedict.update({i: sqlalchemy.types.Float(precision=3, asdecimal = True)})
                    
                elif "int" in str(j):
                    dtypedict.update({i: sqlalchemy.types.INT()})
        
        if db_name == "outpatient":
            
            for i,j in zip(frames.columns, frames.dtypes):
                if "원무접수ID" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                    
                elif "생년월일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "의무기록작성일" in i:
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "수정기록일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})    
                
                elif "작성의 사번" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "진료서식ID" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                    
                elif "진료서식구성원소ID" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "의무기록내용" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "진료서식유형코드" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                
                elif "object" in str(j):
                    dtypedict.update({i: LONGTEXT()})
                                            
                elif "datetime" in str(j):
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "float" in str(j):
                    dtypedict.update({i: sqlalchemy.types.Float(precision = 3, asdecimal = True)})
                    
                elif "int" in str(j):
                    dtypedict.update({i: sqlalchemy.types.INTEGER()})
                    
        if db_name == "asa_score":
            
            for i,j in zip(frames.columns, frames.dtypes):
                if "원무접수ID" in i:
                    dtypedict.update({i: sqlalchemy.types.TEXT()})
                    
                elif "수술일" in i:
                    dtypedict.update({i: sqlalchemy.types.Date()})
                
                elif "object" in str(j):
                    dtypedict.update({i: LONGTEXT()})
                
                elif "datetime" in str(j):
                    dtypedict.update({i: sqlalchemy.types.DateTime()})
                    
                elif "float" in str(j):
                    dtypedict.update({i: sqlalchemy.types.Float(precision = 3, asdecimal = True)})
                    
                elif "int" in str(j):
                    dtypedict.update({i: sqlalchemy.types.INTEGER()})
        
        # outputdict = self.sqlcol(frames)
        
        frames.drop_duplicates()
        frames.to_sql(name = db_name, con = engine, if_exists = 'replace', index = False, dtype = dtypedict)
        
        self.showtext4.setText("DB에 파일이 업로드 되었습니다.")
        
        conn.close
        
        if self.showtext4.text() == "DB에 파일이 업로드 되었습니다.":
            
            self.showtext1.setText("")
            self.showtext2.setText("")
            self.showtext3.setText("")
            self.showtext4.setText("")
            
            print("DB에 파일이 업로드 되었습니다.")
    # def sqlcol(dfparam):    
        

    #     return dtypedict