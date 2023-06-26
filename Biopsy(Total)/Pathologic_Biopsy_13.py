from Base_ETL import BaseETL

class Pathologic_Biopsy13(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                DISTINCT 원무접수ID,
                환자번호,
                검사시행일,
                SUBSTRING_INDEX(SUBSTRING_INDEX(MSI_Test, ')', 1), '(', -1) AS MSI_Test
            FROM(
                SELECT
                    원무접수ID,
                    환자번호,
                    검사시행일,
                    REGEXP_REPLACE(
                        REPLACE(
                            TRIM(
                                TRAILING SUBSTR(MSI_Test, INSTR(MSI_Test, '\n'))
                                FROM MSI_Test
                            ), 'size', ''
                        ), '[|;|:|-]', ''
                    ) AS MSI_Test
                FROM(
                    SELECT
                        원무접수ID,
                        환자번호, 
                        검사시행일,
                        SUBSTR(병리진단, INSTR(병리진단, 'Microsatellite')) AS MSI_Test
                    FROM(
                        SELECT * FROM pathologic_biopsy_03
                    ) biopsy
                ) biopsy
            ) biopsy
        '''

        df = self.df_from_sql(db_name = 'biopsy_total', sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Biopsy(Total)/Pathologic_Biopsy_13.xlsx')
            
        self.insert(df, db_name = 'biopsy_total', tb_name = 'pathologic_biopsy_13')


if __name__ == "__main__":
    obj = Pathologic_Biopsy13()
    obj.run()