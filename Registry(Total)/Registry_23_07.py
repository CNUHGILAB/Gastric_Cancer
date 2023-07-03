from Base_ETL import BaseETL
import pandas as pd

class Registry23_07(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                CHKID,
                ID,
                OP_ADM,
                OP_DISC,
                OP_DATE,
                CASE
                    WHEN `Clavien Dindo1` IS NOT NULL
                    THEN `Clavien Dindo1`
                    WHEN `Clavien Dindo2` IS NOT NULL
                    THEN `Clavien Dindo2`
                    WHEN `Clavien Dindo3` IS NOT NULL
                    THEN `Clavien Dindo3`
                    ELSE NULL
                END AS `Clavien Dindo`
            FROM(
                SELECT
                    CHKID,
                    ID,
                    OP_ADM,
                    OP_DISC,
                    OP_DATE,
                    `Clavien Dindo1`,
                    `Clavien Dindo2`,
                    CASE
                        WHEN `Clavien Dindo1` IS NULL AND `Clavien Dindo2` IS NULL AND ICU입실여부 = 'N' AND 재수술여부 = 'N' AND `검사시행여부(PCD/PTBD/PTGBD)` = 'N' AND DATEDIFF(OP_DISC, OP_ADM) < 8
                        THEN 'Ⅰ'
                        WHEN `Clavien Dindo1` IS NULL AND `Clavien Dindo2` IS NULL AND ICU입실여부 = 'N' AND 재수술여부 = 'N' AND `검사시행여부(PCD/PTBD/PTGBD)` = 'N' AND DATEDIFF(OP_DISC, OP_ADM) >= 8
                        THEN 'Ⅱ'
                        ELSE NULL
                    END AS `Clavien Dindo3`
                FROM(
                    SELECT
                        CHKID,
                        ID,
                        OP_ADM,
                        OP_DISC,
                        OP_DATE,
                        `Clavien Dindo1`,
                        CASE
                            WHEN `Clavien Dindo1` IS NULL AND ICU입실여부 = 'Y' AND 사망여부 = 'N'
                            THEN 'Ⅳ'
                            WHEN `Clavien Dindo1` IS NULL AND ICU입실여부 = 'N' AND 사망여부 = 'Y'
                            THEN 'Ⅴ'
                            WHEN `Clavien Dindo1` IS NULL AND ICU입실여부 = 'Y' AND 사망여부 = 'Y'
                            THEN 'Ⅴ'
                            ELSE NULL
                        END AS `Clavien Dindo2`,
                        재수술여부,
                        `검사시행여부(PCD/PTBD/PTGBD)`,
                        사망여부,
                        ICU입실여부
                    FROM(
                        SELECT DISTINCT
                            CHKID,
                            ID,
                            OP_ADM,
                            OP_DISC,
                            OP_DATE,
                            CASE
                                WHEN ICU입실여부 = 'N' AND 재수술여부 = 'N' AND `검사시행여부(PCD/PTBD/PTGBD)` = 'Y'
                                THEN 'Ⅲa'
                                WHEN ICU입실여부 = 'N' AND 재수술여부 = 'Y' AND `검사시행여부(PCD/PTBD/PTGBD)` = 'N'
                                THEN 'Ⅲb'
                                WHEN ICU입실여부 = 'N' AND 재수술여부 = 'Y' AND `검사시행여부(PCD/PTBD/PTGBD)` = 'Y'
                                THEN 'Ⅲb'
                                ELSE NULL
                            END AS `Clavien Dindo1`,
                            재수술여부,
                            `검사시행여부(PCD/PTBD/PTGBD)`,
                            사망여부,
                            ICU입실여부
                        FROM registry_23_06
                    ) a
                ) a
            ) a
        '''
            
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_26.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_23_07")


if __name__ == "__main__":
    obj = Registry23_07()
    obj.run()