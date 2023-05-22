from Base_ETL import BaseETL
import pandas as pd

class Registry26(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                환자번호,
                수술일, 
                수술코드,
                수술명,
                수술전진단명,
                수술후진단명,
                IFNULL(`EMR ASA class`,0) as `EMR ASA class`,
                IFNULL(`차세대 ASA class`,0) as `차세대 ASA class`
            FROM
                asa_score
        '''
            
        df = self.df_from_sql(db_name = "registry_protocol", sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "registry_protocol", tb_name = "registry_26")


if __name__ == "__main__":
    obj = Registry26()
    obj.run()