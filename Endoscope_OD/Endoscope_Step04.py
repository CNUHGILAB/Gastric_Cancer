import pandas as pd
import re
from base_etl import BaseETL

class EndoscopeStep04(BaseETL):

    def run(
        self,
    ):
        sql = '''
            SELECT
                ID,
                CHKID,
                `Date`,
                검사결과,
                concat(`type`, " ", `int`) as endo
            FROM(
                    SELECT
                        ID,
                        CHKID,
                        `Date`,
                        검사결과,
                        `type`,
                        case
                            when instr(검사결과, "SM 1") != 0 then replace(`int`, "+1", "")
                            else `int`
                        end as `int`
                    FROM(
                            SELECT
                                ID,
                                CHKID,
                                `Date`,
                                검사결과,
                                replace(replace(`type`,"agc","AGC"),"egc","EGC") as `type`,
                                replace(
                                    replace(
                                        replace(
                                            replace(
                                                replace(
                                                    replace(
                                                        replace(
                                                            replace(
                                                                replace(
                                                                    replace(
                                                                        replace(
                                                                            replace(
                                                                                replace(
                                                                                    replace(`int`, "iv", 4),
                                                                                    "iii",
                                                                                    3
                                                                                ),
                                                                                "lll",
                                                                                3
                                                                            ),
                                                                            "ilc",
                                                                            "2c"
                                                                        ),
                                                                        "llc",
                                                                        "2c"
                                                                    ),
                                                                    "ii2",
                                                                    "2c"
                                                                ),
                                                                "llb",
                                                                "2b"
                                                            ),
                                                            "iib",
                                                            "2b"
                                                        ),
                                                        "iia",
                                                        "2a"
                                                    ),
                                                    "lla",
                                                    "2a"
                                                ),
                                                "ll",
                                                2
                                            ),
                                            "ii",
                                            2
                                        ),
                                        "l",
                                        1
                                    ),
                                    "i",
                                    1
                                ) as `int`
                            FROM
                                endoscopestep03
                            WHERE
                                nullif(type,'')is not null
                        ) a
                ) a
        '''
        data = self.df_from_sql(db_name="gc_protocol", sql=sql)
        # data.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/endoscope_AGC.xlsx')
        self.insert(data, db_name="gc_protocol", tb_name="endoscopestep04") 

if __name__ == "__main__":
    obj = EndoscopeStep04()
    obj.run()