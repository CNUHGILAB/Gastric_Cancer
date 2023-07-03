from Base_ETL import BaseETL
import pandas as pd

class Registry23_00(BaseETL):

    def run(self):
        
        sql= '''
            SELECT DISTINCT
                원무접수ID AS CHKID,
                환자번호 AS ID,
                수술일자 AS OP_DATE,
                수술명
            FROM raw_data_total.operation
            WHERE (
                INSTR(수술명, 'Exploratory laparotomy') != 0 OR INSTR(수술명, 'gastrectomy') != 0
            )
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_23_00")


if __name__ == "__main__":
    obj = Registry23_00()
    obj.run()