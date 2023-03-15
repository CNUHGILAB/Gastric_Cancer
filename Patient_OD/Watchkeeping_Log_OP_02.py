from base_etl import BaseETL

class WatchkeepingLogOP02(BaseETL):

    def run(
        self,
    ):
        sql = '''
        SELECT
            DATE,
            OP,
            Prof,
            ID,
            Name,
            Age,
            Sex,
            CASE
                WHEN OPname IS NOT NULL 
                THEN REPLACE (Diagnosis, OPname, '')
                ELSE Diagnosis
            END AS Diagnosis,
            OPname
        FROM (
                SELECT 
                    DATE, 
                    OP,
                    REPLACE (Prof, ')', '') AS Prof,
                    ID,
                    Name,
                    REPLACE(
                        REPLACE (
                                REGEXP_SUBSTR(
                                    Age,
                                    '[0-9][0-9]?[0-9]?[M]?[m]?[개]?[월]?'
                                ),
                                'm',
                                'M'
                            ),
                            '개월',
                            'M'
                    ) AS Age,
                    REGEXP_SUBSTR(Sex, '[A-z]') AS Sex,
                    CASE
                        WHEN Sex IS NOT NULL 
                        THEN
                        REPLACE (
                                SUBSTR(OP, INSTR(OP, Sex)),
                                Sex,
                                ''
                            )
                            WHEN Age IS NOT NULL 
                            THEN
                        REPLACE (
                                SUBSTR(OP, INSTR(OP, Age)),
                                Age,
                                ''
                            )
                            WHEN Name IS NOT NULL 
                            THEN
                        REPLACE (
                                SUBSTR(OP, INSTR(OP, Name)),
                                Name,
                                ''
                            )
                    END AS Diagnosis,
                    Opname
                FROM(
                        SELECT
                            *,
                            REGEXP_SUBSTR(OP, '[가-힣]?[A-Z][A-Z]?[)]') AS Prof,
                            REGEXP_SUBSTR(OP, '[0-9]+') AS ID,
                            CASE
                                WHEN REGEXP_INSTR(OP, '[가-힣][가-힣][가-힣]?') != 0 
                                THEN REGEXP_SUBSTR(OP, '[가-힣][가-힣][가-힣]?')
                                ELSE REGEXP_SUBSTR(OP, '[A-Z][A-Z]+[ ]?[A-Z]+')
                            END AS Name,
                            CASE
                                WHEN REGEXP_INSTR(
                                    OP,
                                    '[0-9][0-9]?[0-9]?[A-z]?[A-z]?[A-z]?[가-힣]?[가-힣]?[/]'
                                ) != 0 THEN REGEXP_SUBSTR(
                                    OP,
                                    '[0-9][0-9]?[0-9]?[A-z]?[A-z]?[A-z]?[가-힣]?[가-힣]?[/]'
                                )
                                WHEN REGEXP_INSTR(OP, '[/][0-9][0-9]?[0-9]?') != 0 THEN REGEXP_SUBSTR(OP, '[/][0-9][0-9]?[0-9]?')
                                WHEN REGEXP_INSTR(OP, '[A-z][0-9][0-9]?[가-힣]?') != 0 THEN REGEXP_SUBSTR(OP, '[A-z][0-9][0-9]?[가-힣]?')
                                WHEN REGEXP_INSTR(OP, '[0-9][0-9]?[.]?[A-z]') != 0 THEN REGEXP_SUBSTR(OP, '[0-9][0-9]?[.]?[A-z]')
                                ELSE REGEXP_SUBSTR(OP, '[ ][0-9][0-9]?[0-9]?[ ]')
                            END AS Age,
                            CASE
                                WHEN REGEXP_INSTR(OP, '[/][A-z]') != 0 THEN REGEXP_SUBSTR(OP, '[/][A-z]')
                                WHEN REGEXP_INSTR(OP, '[A-z][/]') != 0 THEN REGEXP_SUBSTR(OP, '[A-z][/]')
                                WHEN REGEXP_INSTR(OP, '[A-z][0-9][0-9]?') != 0 THEN REGEXP_SUBSTR(OP, '[A-z][0-9][0-9]?')
                                WHEN REGEXP_INSTR(OP, '[0-9][0-9]?[A-z]') != 0 THEN REGEXP_SUBSTR(OP, '[0-9][0-9]?[A-z]')
                                WHEN REGEXP_INSTR(OP, '[.][A-z]') != 0 THEN REGEXP_SUBSTR(OP, '[.][A-z]')
                                ELSE REGEXP_SUBSTR(OP, '[ ][A-z][ ]')
                            END AS Sex,
                            REGEXP_SUBSTR(OP, '[(].+[)]') AS Opname
                        FROM
                            watchkeeping_log_op_01
                    ) a
            ) a
        '''
        df = self.df_from_sql(db_name="gc_protocol", sql=sql)
        self.insert(df, db_name="gc_protocol", tb_name="watchkeeping_log_op_02") 
        df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/watchkeeping_log_OP.xlsx')

    
if __name__ == "__main__":
    obj = WatchkeepingLogOP02()
    obj.run()