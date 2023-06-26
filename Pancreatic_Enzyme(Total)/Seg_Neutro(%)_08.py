from Base_ETL import BaseETL
import pandas as pd

class SegNeutroP08(BaseETL):

    def run(self):
        
        sql= '''
            SELECT *
            FROM seg_neutro_p_06
            WHERE NOT EXISTS (
                SELECT
                    ID,
                    Op_Date,
                    검사시행일_DATE,
                    검사코드
                FROM seg_neutro_p_07
                WHERE (
                    seg_neutro_p_06.ID = seg_neutro_p_07.ID
                    AND seg_neutro_p_06.Op_Date = seg_neutro_p_07.Op_Date
                    AND seg_neutro_p_06.검사시행일_DATE = seg_neutro_p_07.검사시행일_DATE
                )
            )
        '''
            
        df = self.df_from_sql(db_name = "pancreatic_enzyme_protocol", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "pancreatic_enzyme_protocol", tb_name = "seg_neutro_p_08")


if __name__ == "__main__":
    obj = SegNeutroP08()
    obj.run()