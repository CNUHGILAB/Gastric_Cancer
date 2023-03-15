from base_etl import BaseETL

class WatchkeepingLogOPdue02(BaseETL):

    def run(
        self,
    ):
        sql = '''
        SELECT
            DATE,
            opdue,
            Prof,
            ID,
            Name,
            Age,
            Sex,
            CASE
                WHEN opduename IS NOT NULL 
                THEN REPLACE (Diagnosis, opduename, '')
                ELSE Diagnosis
            END AS Diagnosis,
            opduename
        FROM (
                SELECT 
                    DATE, 
                    opdue,
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
                                SUBSTR(opdue, INSTR(opdue, Sex)),
                                Sex,
                                ''
                            )
                            WHEN Age IS NOT NULL 
                            THEN
                        REPLACE (
                                SUBSTR(opdue, INSTR(opdue, Age)),
                                Age,
                                ''
                            )
                            WHEN Name IS NOT NULL 
                            THEN
                        REPLACE (
                                SUBSTR(opdue, INSTR(opdue, Name)),
                                Name,
                                ''
                            )
                    END AS Diagnosis,
                    opduename
                FROM(
                        SELECT
                            *,
                            REGEXP_SUBSTR(opdue, '[가-힣]?[A-Z][A-Z]?[)]') AS Prof,
                            REGEXP_SUBSTR(opdue, '[0-9]+') AS ID,
                            CASE
                                WHEN REGEXP_INSTR(opdue, '[가-힣][가-힣][가-힣]?') != 0 
                                THEN REGEXP_SUBSTR(opdue, '[가-힣][가-힣][가-힣]?')
                                ELSE REGEXP_SUBSTR(opdue, '[A-Z][A-Z]+[ ]?[A-Z]+')
                            END AS Name,
                            CASE
                                WHEN REGEXP_INSTR(
                                    opdue,
                                    '[0-9][0-9]?[0-9]?[A-z]?[A-z]?[A-z]?[가-힣]?[가-힣]?[/]'
                                ) != 0 THEN REGEXP_SUBSTR(
                                    opdue,
                                    '[0-9][0-9]?[0-9]?[A-z]?[A-z]?[A-z]?[가-힣]?[가-힣]?[/]'
                                )
                                WHEN REGEXP_INSTR(opdue, '[/][0-9][0-9]?[0-9]?') != 0 THEN REGEXP_SUBSTR(opdue, '[/][0-9][0-9]?[0-9]?')
                                WHEN REGEXP_INSTR(opdue, '[A-z][0-9][0-9]?[가-힣]?') != 0 THEN REGEXP_SUBSTR(opdue, '[A-z][0-9][0-9]?[가-힣]?')
                                WHEN REGEXP_INSTR(opdue, '[0-9][0-9]?[.]?[A-z]') != 0 THEN REGEXP_SUBSTR(opdue, '[0-9][0-9]?[.]?[A-z]')
                                ELSE REGEXP_SUBSTR(opdue, '[ ][0-9][0-9]?[0-9]?[ ]')
                            END AS Age,
                            CASE
                                WHEN REGEXP_INSTR(opdue, '[/][A-z]') != 0 THEN REGEXP_SUBSTR(opdue, '[/][A-z]')
                                WHEN REGEXP_INSTR(opdue, '[A-z][/]') != 0 THEN REGEXP_SUBSTR(opdue, '[A-z][/]')
                                WHEN REGEXP_INSTR(opdue, '[A-z][0-9][0-9]?') != 0 THEN REGEXP_SUBSTR(opdue, '[A-z][0-9][0-9]?')
                                WHEN REGEXP_INSTR(opdue, '[0-9][0-9]?[A-z]') != 0 THEN REGEXP_SUBSTR(opdue, '[0-9][0-9]?[A-z]')
                                WHEN REGEXP_INSTR(opdue, '[.][A-z]') != 0 THEN REGEXP_SUBSTR(opdue, '[.][A-z]')
                                ELSE REGEXP_SUBSTR(opdue, '[ ][A-z][ ]')
                            END AS Sex,
                            REGEXP_SUBSTR(opdue, '[(].+[)]') AS opduename
                        FROM
                            watchkeeping_log_opdue_01
                    ) a
            ) a
        '''
        df = self.df_from_sql(db_name="gc_protocol", sql=sql)
        self.insert(df, db_name="gc_protocol", tb_name="watchkeeping_log_opdue_02") 
        df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/watchkeeping_log_opdue.xlsx')

    
if __name__ == "__main__":
    obj = WatchkeepingLogOPdue02()
    obj.run()