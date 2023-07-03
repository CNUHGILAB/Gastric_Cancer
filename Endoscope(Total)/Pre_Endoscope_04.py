import pandas as pd
import re
from Base_ETL import BaseETL

class PreEndoscope04(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                ID,
                CHKID,
                `Date`,
                검사결과,
                CONCAT(`Type`, " ", `int`) AS Endo
            FROM(
                SELECT
                    ID,
                    CHKID,
                    `Date`,
                    검사결과,
                    `Type`,
                    CASE
                        WHEN INSTR(검사결과, "SM 1") != 0
                        THEN REPLACE(`int`, "+1", "")
                        ELSE `int`
                    END AS `int`
                FROM(
                    SELECT
                        ID,
                        CHKID,
                        `Date`,
                        검사결과,
                        REPLACE(
                            REPLACE(
                                `type`, "agc", "AGC"
                            ), "egc", "EGC"
                        ) AS `Type`,
                        REPLACE(
                            REPLACE(
                                REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            REPLACE(
                                                REPLACE(
                                                    REPLACE(
                                                        REPLACE(
                                                            REPLACE(
                                                                REPLACE(
                                                                    REPLACE(
                                                                        REPLACE(
                                                                            REPLACE(
                                                                                `int`, "iv", 4
                                                                            ), "iii", 3
                                                                        ), "lll", 3
                                                                    ), "ilc", "2c"
                                                                ), "llc", "2c"
                                                            ), "ii2", "2c"
                                                        ), "llb", "2b"
                                                    ), "iib", "2b"
                                                ), "iia", "2a"
                                            ), "lla", "2a"
                                        ), "ll", 2
                                    ), "ii", 2
                                ), "l", 1
                            ), "i", 1
                        ) AS `int`
                    FROM pre_endoscope_03
                    WHERE NULLIF(Type, '') IS NOT NULL
                ) a
            ) a
        '''
        data = self.df_from_sql(db_name = "endoscope_total", sql = sql)
        # data.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/endoscope_AGC.xlsx')
        
        self.insert(data, db_name = "endoscope_total", tb_name = "pre_endoscope_04")


if __name__ == "__main__":
    obj = PreEndoscope04()
    obj.run()