from Base_ETL import BaseETL

class Registry02(BaseETL):

    def run(self):

        sql = '''
            SELECT DISTINCT
                원무접수ID AS CHKID,
                환자번호 AS `ID`,
                수술일자 AS OP_DATE,
                집도의 AS Operator
            FROM raw_data_total.operation
            WHERE(
                원무접수ID IN (
                    SELECT
                        DISTINCT 원무접수ID
                    FROM raw_data_total.operation_record
                )
                AND `수술 진료과코드` = 'GS' AND INSTR(수술명, 'gastrectomy') != 0
            )
        '''

        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #Operation Record SMAE
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_03.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_02")


if __name__ == "__main__":
    obj = Registry02()
    obj.run()