from Base_ETL import BaseETL
import pandas as pd

class Registry28(BaseETL):

    def run(self):
        
        sql= '''
            SELECT DISTINCT
                원무접수ID,
                환자번호,
                DATE_FORMAT(검사시행일, '%%Y-%%m-%%d') AS 검사시행일
            FROM raw_data_total.endoscope
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_28")


if __name__ == "__main__":
    obj = Registry28()
    obj.run()