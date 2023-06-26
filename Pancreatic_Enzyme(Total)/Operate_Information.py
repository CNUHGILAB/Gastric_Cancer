from Base_ETL import BaseETL

class OperateInformation(BaseETL):

    def run(self):

        sql = '''
            SELECT
                DISTINCT
                    원무접수ID AS CHKID,
                    환자번호 AS `ID`,
                    수술일자 AS OP_Date
            FROM
                raw_data_total.operation
            WHERE(
                원무접수ID IN (
                    SELECT
                        DISTINCT 원무접수ID
                    FROM raw_data_total.operation_record
                )
                AND `수술 진료과코드` = 'GS'
            )
        '''

        df = self.df_from_sql(db_name = "pancreatic_enzyme_protocol", sql = sql)
        #Operation Record SMAE
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_03.xlsx')
        #print(df)
        
        self.insert(df, db_name = "pancreatic_enzyme_protocol", tb_name = "operate_information")


if __name__ == "__main__":
    obj = OperateInformation()
    obj.run()