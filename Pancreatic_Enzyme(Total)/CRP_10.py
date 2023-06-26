from Base_ETL import BaseETL
import pandas as pd

class CRP10(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                ID,
                CHKID,
                Op_Date,
                검사시행일_DATE,
                `TIME`,
                CRP,
                검사코드
            FROM crp_05
            WHERE (ID, Op_Date, 검사시행일_DATE) IN (
                SELECT
                    ID,
                    Op_Date,
                    검사시행일_DATE
                FROM crp_09
            )
        '''
            
        df = self.df_from_sql(db_name = "pancreatic_enzyme_protocol", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "pancreatic_enzyme_protocol", tb_name = "crp_10")


if __name__ == "__main__":
    obj = CRP10()
    obj.run()