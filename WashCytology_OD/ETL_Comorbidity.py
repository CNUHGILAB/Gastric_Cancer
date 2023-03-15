from WC_Step_01 import WCStep01
from WC_Step_02 import WCStep02
from WC_Step_03 import WCStep03
from WC_Step_04 import WCStep04
from WC_Step_05 import WCStep05


class ETLComorbidity():
    def run(
        self,
    ):

        WCStep01().run()    # Wash Cytology 검사코드로 검사결과 가져오기
        WCStep02().run()    # 수술 기록지와 수술기록의 원무접수ID가 같은 환자목록
        WCStep03().run()    # WCStep01 + WCStep02 Merge
        WCStep04().run()    # 원하는 단어 포함하고 있는 문장 찾아서 데이터프레임화
        WCStep05().run()    # 원하는 형태로 변형 (최종)

        

if __name__ == "__main__":
    obj = ETLComorbidity()
    obj.run()