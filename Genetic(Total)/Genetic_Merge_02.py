import pandas as pd
from Base_ETL import BaseETL

class GeneticMerge02(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                st0.원무접수ID,
                st0.환자번호,
                st0.검사시행일,
                HER2,
                `E-Cadherin`,
                `E-Cadherin Comment`,
                p53,
                `p53 Percent`
            FROM
                genetic_merge_01 st0
                LEFT JOIN genetic_04_02 st1 ON (
                    st0.환자번호 = st1.환자번호
                    AND st0.원무접수ID = st1.원무접수ID
                    AND st0.검사시행일 = st1.검사시행일
                )
        '''
        
        df = self.df_from_sql(db_name = "genetic_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Genetic(Total)/Genetic_Merge_02.xlsx')
        
        self.insert(df, db_name = "genetic_total", tb_name = "genetic_merge_02")


if __name__ == "__main__":
    obj = GeneticMerge02()
    obj.run()
