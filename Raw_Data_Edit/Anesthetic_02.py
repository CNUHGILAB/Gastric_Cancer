from Base_ETL import BaseETL

class Anesthetic(BaseETL):

    def run(self):

        sql = '''
            SELECT
                DISTINCT
                    원무접수ID,
                    환자번호,
                    환자명,
                    성별,
                    생년월일,
                    의무기록작성일,
                    수정기록일,
                    `의무기록작성 진료과코드`,
                    `의무기록작성 진료과`,
                    `작성의 사번`,
                    작성의,
                    `의무기록 환자진료과코드`,
                    `의무기록 환자진료과`,
                    진료서식ID,
                    `의무 기록명` AS 의무기록명,
                    진료서식구성원소ID,
                    의무기록항목명,
                    `의무기록내용-수치값`,
                    의무기록내용,
                    진료서식유형코드,
                    의무기록구분명,
                    진료기록서명여부
            FROM anesthetic_01
        '''
        
        df = self.df_from_sql(db_name = "raw_data_edit", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_03.xlsx')
        
        self.insert(df, db_name = "raw_data_total", tb_name = "anesthetic")


if __name__ == "__main__":
    obj = Anesthetic()
    obj.run()