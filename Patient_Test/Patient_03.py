from Base_ETL import BaseETL

class Patient03(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                # a : patient_02 환자번호(ID), 원무접수(CHKID)
                a.환자번호 AS ID,
                a.원무접수ID AS CHKID,
                # patient_01
                Height1,
                Weight1,
                성별,
                Age,
                입원일,
                퇴원일,
                `주소(시,도)`,
                `주소(시,군,구)`,
                # patient_02
                OP_Date
            FROM
                patient_02 a
                LEFT JOIN patient_01 b ON (
                    a.환자번호 = b.환자번호
                    AND a.원무접수ID = b.원무접수ID
                )
        '''
        
        df = self.df_from_sql(db_name = "patient_protocol", sql = sql)
        
        self.insert(df, db_name = "patient_protocol", tb_name = "patient_03") 


if __name__ == "__main__":
    obj = Patient03()
    obj.run()