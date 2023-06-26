from Base_ETL import BaseETL
import pandas as pd

class CRP08(BaseETL):

    def run(self):
        
        sql= '''
            SELECT *
            FROM crp_06
            WHERE NOT EXISTS (
                SELECT
                    ID,
                    Op_Date,
                    검사시행일_DATE,
                    검사코드
                FROM crp_07
                WHERE (
                    crp_06.ID = crp_07.ID
                    AND crp_06.Op_Date = crp_07.Op_Date
                    AND crp_06.검사시행일_DATE = crp_07.검사시행일_DATE
                )
            )
        '''
            
        df = self.df_from_sql(db_name = "pancreatic_enzyme_protocol", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "pancreatic_enzyme_protocol", tb_name = "crp_08")


if __name__ == "__main__":
    obj = CRP08()
    obj.run()