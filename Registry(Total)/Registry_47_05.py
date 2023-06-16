from Base_ETL import BaseETL
import pandas as pd

class Registry47(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                ID,
                #COUNT(ID),
                CHKID,
                Op_Date,
                검사시행일_DATE,
                검사시행일_TIME,
                `Seg.Neutro(P)`,
                검사코드
            FROM registry_36
            WHERE 검사코드 = 'B109002'
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_47_05")


if __name__ == "__main__":
    obj = Registry47()
    obj.run()