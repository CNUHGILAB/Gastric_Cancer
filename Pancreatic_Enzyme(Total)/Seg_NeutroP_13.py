from Base_ETL import BaseETL
import pandas as pd

class SegNeutroP13(BaseETL):

    def run(self):
        
        sql= '''
            SELECT DISTINCT
                ID,
                CHKID,
                Op_Date,
                GROUP_CONCAT(`Seg.Neutro(P)`) AS SNP_RESULT,
                GROUP_CONCAT(검사시행일_Date) AS DATE
            FROM seg_neutro_p_12
            GROUP BY ID, CHKID, Op_Date
        '''
            
        df = self.df_from_sql(db_name = "pancreatic_enzyme_protocol", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        #print(df)
        
        self.insert(df, db_name = "pancreatic_enzyme_protocol", tb_name = "seg_neutro_p_13")


if __name__ == "__main__":
    obj = SegNeutroP13()
    obj.run()