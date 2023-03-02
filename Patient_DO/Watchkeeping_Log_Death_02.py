from base_etl import BaseETL

class WatchkeepingLogDeath02(BaseETL):

    def run(
        self,
    ):
        sql = '''
        SELECT 
            DATE, 
            death,
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
                WHEN Sex IS NOT NULL THEN
                REPLACE (
                        SUBSTR(death, INSTR(death, Sex)),
                        Sex,
                        ''
                    )
                    WHEN Age IS NOT NULL THEN
                REPLACE (
                        SUBSTR(death, INSTR(death, Age)),
                        Age,
                        ''
                    )
                    WHEN Name IS NOT NULL THEN
                REPLACE (
                        SUBSTR(death, INSTR(death, Name)),
                        Name,
                        ''
                    )
            END AS Diagnosis
        FROM(
                SELECT
                    *,
                    REGEXP_SUBSTR(death, '[가-힣]?[A-Z][A-Z]?[)]') AS Prof,
                    REGEXP_SUBSTR(death, '[0-9]+') AS ID,
                    CASE
                        WHEN REGEXP_INSTR(death, '[가-힣][가-힣][가-힣]?') != 0 THEN REGEXP_SUBSTR(death, '[가-힣][가-힣][가-힣]?')
                        ELSE REGEXP_SUBSTR(
                            death,
                            '[A-Z][A-Z]+[ ]?[A-Z]+'
                        )
                    END AS Name,
                    CASE
                        WHEN REGEXP_INSTR(
                            death,
                            '[0-9][0-9]?[0-9]?[A-z]?[A-z]?[A-z]?[가-힣]?[가-힣]?[/]'
                        ) != 0 THEN REGEXP_SUBSTR(
                            death,
                            '[0-9][0-9]?[0-9]?[A-z]?[A-z]?[A-z]?[가-힣]?[가-힣]?[/]'
                        )
                        WHEN REGEXP_INSTR(death, '[/][0-9][0-9]?[0-9]?') != 0 THEN REGEXP_SUBSTR(death, '[/][0-9][0-9]?[0-9]?')
                        WHEN REGEXP_INSTR(
                            death,
                            '[A-z][0-9][0-9]?[가-힣]?'
                        ) != 0 THEN REGEXP_SUBSTR(
                            death,
                            '[A-z][0-9][0-9]?[가-힣]?'
                        )
                        WHEN REGEXP_INSTR(death, '[0-9][0-9]?[.]?[A-z]') !=0
                        THEN REGEXP_SUBSTR(death, '[0-9][0-9]?[.]?[A-z]')
                        ELSE REGEXP_SUBSTR(death, '[ ][0-9][0-9]?[0-9]?[ ]')
                    END AS Age,
                    CASE
                        WHEN REGEXP_INSTR(death, '[/][A-z]') != 0 THEN REGEXP_SUBSTR(death, '[/][A-z]')
                        WHEN REGEXP_INSTR(death, '[A-z][/]') != 0 THEN REGEXP_SUBSTR(death, '[A-z][/]')
                        WHEN REGEXP_INSTR(death, '[A-z][0-9][0-9]?') != 0 THEN REGEXP_SUBSTR(death, '[A-z][0-9][0-9]?')
                        WHEN REGEXP_INSTR(death, '[0-9][0-9]?[A-z]') != 0 THEN REGEXP_SUBSTR(death, '[0-9][0-9]?[A-z]')
                        WHEN REGEXP_INSTR(death, '[.][A-z]') != 0 THEN REGEXP_SUBSTR(death, '[.][A-z]')
                        ELSE REGEXP_SUBSTR(death, '[ ][A-z][ ]')
                    END AS Sex
                FROM
                    watchkeeping_log_death_01
            ) a
        '''
        df = self.df_from_sql(db_name="gc_protocol", sql=sql)
        self.insert(df, db_name="gc_protocol", tb_name="watchkeeping_log_death_02") 
        df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/watchkeeping_log_Death.xlsx')

    
if __name__ == "__main__":
    obj = WatchkeepingLogDeath02()
    obj.run()           