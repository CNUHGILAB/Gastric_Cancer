class PIPEPatient():
    """ Data Pipeline for creating Patient 
    """
    def run(self):
        
        Patient01().run()                         # 임시 테이블 01 : 환자번호, 원무접수ID, 성별, 나이, 입원일, 퇴원일, 주소 
        Patient02().run()                         # 임시 테이블 02 : gastric cancer surgery day(원무접수ID, 환자번호, 수술일)
        Patient03().run()                         # 임시 테이블 03 : Patient information during gastric cancer surgery
        Patient04().run()                         # 임시 테이블 04 : Weight
        Patient05().run()                         # 임시 테이블 05 : Height
        Patient06().run()                         # 임시 테이블 06 : Merge st04, st05 
        Patient07().run()                         # 임시 테이블 07 : Merge st03, st06 + BMI
        Patient08().run()                         # 임시 테이블 08 : Last day of medical examination 
        Patient09().run()                         # 임시 테이블 09 : Date of the first diagnosis
        Patient10().run()                         # Merge  → 모든 데이터를 결합
        Patient11().run()                         # Final → 결과 테이블 생성
        
if __name__ == "__main__":
    obj = PIPEPatient()
    obj.run()