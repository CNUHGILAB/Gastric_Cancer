from Base_ETL import BaseETL
import pandas as pd

class Registry15_00(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                환자번호,
                수술일, 
                수술코드,
                수술명,
                수술전진단명,
                수술후진단명,
                `ASA Score`
            FROM raw_data_total.asa_score
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_25.xlsx')
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_15_00")


if __name__ == "__main__":
    obj = Registry15_00()
    obj.run()