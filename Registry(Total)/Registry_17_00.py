from Base_ETL import BaseETL
import pandas as pd

class Registry17_00(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                원무접수ID,
                환자번호,
                사망일시
            FROM raw_data_total.patient
            WHERE INSTR(퇴원유형, '사망') != 0
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_17_00")


if __name__ == "__main__":
    obj = Registry17_00()
    obj.run()