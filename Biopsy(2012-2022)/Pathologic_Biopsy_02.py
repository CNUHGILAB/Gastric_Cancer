from Base_ETL import BaseETL

class Pathologic_Biopsy02(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                원무접수ID,
                환자번호,
                검사시행일,
                육안소견,
                병리진단,
                Site_Path,
                CASE
                    WHEN INSTR(Site_Macro, ' v)') != 0
                    THEN 5
                    WHEN INSTR(Site_Macro, ' iv)') != 0
                    THEN 4
                    WHEN INSTR(Site_Macro, ' iii)') != 0
                    THEN 3
                    WHEN INSTR(Site_Macro, ' ii)') != 0
                    THEN 2
                    WHEN NULLIF(Site_Macro, ' ') IS NOT NULL
                    THEN 1
                END AS Site_Num
            FROM(
                SELECT
                    원무접수ID,
                    환자번호,
                    검사시행일,
                    육안소견,
                    병리진단,
                    CASE
                        WHEN Site_Path LIKE BINARY '%%site%%' 
                        THEN REGEXP_REPLACE(
                            REPLACE(
                                TRIM(
                                    TRAILING SUBSTR(Site_Path, INSTR(Site_Path, '\n'))
                                    FROM Site_Path
                                ), 'site', ''
                            ), '[(|.|;|:|)]', ''
                        )
                        WHEN Site_Path LIKE BINARY '%%Site%%' 
                        THEN REGEXP_REPLACE(
                            REPLACE(
                                TRIM(
                                    TRAILING SUBSTR(Site_Path, INSTR(Site_Path, '\n'))
                                    FROM Site_Path
                                ), 'Site', ''
                            ), '[(|.|;|:|)]', ''
                        )
                    END AS Site_Path,
                    TRIM(
                        TRAILING SUBSTR(Site_Macro, INSTR(Site_Macro, 'size'))
                        FROM Site_Macro
                    ) AS Site_Macro
                FROM(
                    SELECT
                        원무접수ID,
                        환자번호,
                        검사시행일,
                        육안소견,
                        병리진단,
                        # 육안소견에서의 'Site'
                        SUBSTR(육안소견, INSTR(육안소견, 'site:')) AS Site_Macro,
                        # 병리진단에서 'Site'
                        SUBSTR(병리진단, INSTR(병리진단, 'site:')) AS Site_Path
                    FROM pathologic_biopsy_01
                ) biopsy
            ) biopsy
        '''
        
        df = self.df_from_sql(db_name = 'biopsy_protocol', sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Biopsy(2012-2022)/Pathologic_Biopsy_02.xlsx')
        
        self.insert(df, db_name ='biopsy_protocol', tb_name = 'pathologic_biopsy_02') 


if __name__ == "__main__":
    obj = Pathologic_Biopsy02()
    obj.run()