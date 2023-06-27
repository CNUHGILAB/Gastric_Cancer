from Base_ETL import BaseETL
import pandas as pd

class SegNeutroP02(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                ID,
                CHKID,
                Op_Date,
                검사시행일_DATE,
                검사시행일_TIME,
                `Seg.Neutro(P)`,
                검사코드
            FROM seg_neutro_p_01
            WHERE 검사코드 = 'B109002E'
        '''
            
        df = self.df_from_sql(db_name = "pancreatic_enzyme_protocol", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "pancreatic_enzyme_protocol", tb_name = "seg_neutro_p_02")


if __name__ == "__main__":
    obj = SegNeutroP02()
    obj.run()