from Base_ETL import BaseETL

class Comorbidity01(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                환자번호 AS `ID`,
                수술일자 AS OP_Date
            FROM raw_file_2012_2022.operation
            WHERE(
                원무접수ID IN (
                    SELECT
                        DISTINCT 원무접수ID
                    FROM raw_file_2012_2022.operation_record
                ) AND ICD9CM코드 != '54.11'
            )
            ORDER BY ID ASC
        '''

        df = self.df_from_sql(db_name = "raw_file_2012_2022", sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Comorbidity(2012-2022)/Comorbidity_01.xlsx')
        
        self.insert(df, db_name = "comorbidity_protocol", tb_name = "comorbidity_01")  #tb_name = "comorbidity_step_01"


if __name__ == "__main__":
    obj = Comorbidity01()
    obj.run()