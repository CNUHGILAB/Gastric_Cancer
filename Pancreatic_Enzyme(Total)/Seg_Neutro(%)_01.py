from Base_ETL import BaseETL
import pandas as pd

class SegNeutroP01(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                a.ID,
                원무접수ID AS CHKID,
                OP_Date,
                검사코드,
                검사시행일_DATE,
                검사시행일_TIME,
                `Seg.Neutro(P)`
            FROM
                operate_information a
                LEFT JOIN seg_neutro_p_00 b ON a.ID = b.환자번호
            WHERE(
                검사시행일_DATE BETWEEN DATE_ADD(OP_Date, INTERVAL 1 DAY)
                AND DATE_ADD(OP_Date, INTERVAL 30 DAY)
            )
        '''
            
        df = self.df_from_sql(db_name = "pancreatic_enzyme_protocol", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        
        self.insert(df, db_name = "pancreatic_enzyme_protocol", tb_name = "seg_neutro_p_01")


if __name__ == "__main__":
    obj = SegNeutroP01()
    obj.run()