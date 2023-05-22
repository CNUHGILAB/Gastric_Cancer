from Base_ETL import BaseETL

class WashCytology02(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                DISTINCT 원무접수ID AS CHKID,
                환자번호 AS ID,
                수술일자 AS OP_Date
            FROM operation
            WHERE(
                원무접수ID IN (
                    SELECT
                        DISTINCT 원무접수ID
                    FROM operation_record
                ) AND `수술 진료과코드` = 'GS'
            )
        '''
        
        df = self.df_from_sql(db_name = "raw_file_2012_2022", sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/WashCytology(2012-2022)/WashCytology_02.xlsx')
        
        self.insert(df, db_name = "wash_cytology_protocol", tb_name = "washcytology_02")


if __name__ == "__main__":
    obj = WashCytology02()
    obj.run()