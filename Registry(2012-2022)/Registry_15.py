from Base_ETL import BaseETL

class Registry15(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                DISTINCT 원무접수ID AS CHKID,
                환자번호 AS ID,
                수술일자 AS OP_Date,
                집도의 AS Operator
            FROM raw_file_2012_2022.operation
            WHERE(
                원무접수ID IN (
                    SELECT
                        DISTINCT 원무접수ID
                    FROM raw_file_2012_2022.operation_record
                )
                AND `수술 진료과코드` = 'GS'
            )
        '''
        
        df = self.df_from_sql(db_name = "registry_protocol", sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_15.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_protocol", tb_name = "registry_15")


if __name__ == "__main__":
    obj = Registry15()
    obj.run()