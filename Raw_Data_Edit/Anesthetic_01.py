from Base_ETL import BaseETL

class Anesthetic01(BaseETL):

    def run(self):

        sql = '''
            SELECT
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
                CASE
                    WHEN INSTR(의무기록명, '환자 상태평가') != 0
                    THEN REPLACE(의무기록명, '환자 상태평가', '환자상태 평가')
                    ELSE 의무기록명
                END AS `의무 기록명`,
                진료서식구성원소ID,
                의무기록항목명,
                `의무기록내용-수치값`,
                의무기록내용,
                진료서식유형코드,
                의무기록구분명,
                진료기록서명여부
            FROM anesthetic_00
            /*
            SELECT DISTINCT *
            FROM anesthetic_00
            GROUP BY 원무접수ID, 환자번호, 환자명, 성별, 생년월일, 의무기록작성일, 수정기록일, `의무기록작성 진료과코드`, `의무기록작성 진료과`, `작성의 사번`, 작성의, `의무기록 환자진료과코드`,
                `의무기록 환자진료과`, 진료서식ID, 진료서식구성원소ID, 의무기록항목명, `의무기록내용-수치값`, 의무기록내용, 진료서식유형코드, 의무기록구분명, 진료기록서명여부
            HAVING COUNT(*) > 1
            */
        '''
        
        df = self.df_from_sql(db_name = "raw_data_edit", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_03.xlsx')
        #print(df)
        
        self.insert(df, db_name = "raw_data_edit", tb_name = "anesthetic_01")


if __name__ == "__main__":
    obj = Anesthetic01()
    obj.run()