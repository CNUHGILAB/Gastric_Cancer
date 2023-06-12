from Base_ETL import BaseETL

class Patient02(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                DISTINCT 원무접수ID,
                환자번호,
                수술일자 AS OP_Date
            # Raw Data 중 operation 항목에서 원무접수ID, 환자번호, 수술일자(OP_DATE) 추출
            FROM operation
            # 원무접수ID는 Raw Data 중 operation_record 항목에서 추출
            WHERE(
                원무접수ID IN (
                    SELECT
                        DISTINCT 원무접수ID
                    FROM operation_record
                ) AND `수술 진료과코드` = 'GS'
            )
            ORDER BY 환자번호
        '''
        
        df = self.df_from_sql(db_name = "raw_data_total", sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Patient(Total)/Patient_02.xlsx')
        
        self.insert(df, db_name = "patient_total", tb_name = "patient_02") 


if __name__ == "__main__":
    obj = Patient02()
    obj.run()