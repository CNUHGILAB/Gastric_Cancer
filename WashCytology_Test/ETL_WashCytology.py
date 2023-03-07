from WashCytology_01 import WashCytology01
from WashCytology_02 import WashCytology02
from WashCytology_03 import WashCytology03
from WashCytology_04 import WashCytology04
from WashCytology_05 import WashCytology05

class ETLWashCytology():
    
    def run(self):

        WashCytology01().run()    # Wash Cytology 검사코드로 검사결과 가져오기
        WashCytology02().run()    # 수술 기록지와 수술기록의 원무접수ID가 같은 환자목록
        WashCytology03().run()    # WCStep01 + WCStep02 Merge
        WashCytology04().run()    # 원하는 단어 포함하고 있는 문장 찾아서 데이터프레임화
        WashCytology05().run()    # 원하는 형태로 변형 (최종)
        
if __name__ == "__main__":
    obj = ETLWashCytology()
    obj.run()