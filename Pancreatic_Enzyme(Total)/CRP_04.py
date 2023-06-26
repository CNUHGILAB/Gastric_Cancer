from Base_ETL import BaseETL
import pandas as pd

class CRP04(BaseETL):

    def run(self):
        
        sql= '''
            SELECT *
            FROM crp_02
            WHERE NOT EXISTS (
                SELECT
                    ID,
                    Op_Date,
                    검사시행일_DATE
                FROM crp_03
                WHERE (
                    crp_02.ID = crp_03.ID
                    AND crp_02.Op_Date = crp_03.Op_Date
                    AND crp_02.검사시행일_DATE = crp_03.검사시행일_DATE
                )
            )
        '''
            
        df = self.df_from_sql(db_name = "pancreatic_enzyme_protocol", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "pancreatic_enzyme_protocol", tb_name = "crp_04")


if __name__ == "__main__":
    obj = CRP04()
    obj.run()