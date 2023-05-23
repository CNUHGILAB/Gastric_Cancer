from Base_ETL import BaseETL

class Registry03(BaseETL):

    def run(self):

        sql = '''
            SELECT
                DISTINCT 원무접수ID AS CHKID,
                환자번호 AS `ID`,
                수술일자 AS OP_Date
            FROM
                raw_file_2012_2022.operation
            WHERE(
                원무접수ID IN (
                    SELECT
                        DISTINCT 원무접수ID
                    FROM raw_file_2012_2022.operation_record
                )
                AND `수술 진료과코드` = 'GS'
            )
        '''

        df = self.df_from_sql(db_name = "registry_test", sql = sql)
        #Operation Record SMAE
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_03.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_test", tb_name = "registry_03")


if __name__ == "__main__":
    obj = Registry03()
    obj.run()