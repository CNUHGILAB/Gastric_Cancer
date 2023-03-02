from base_etl import BaseETL

class WatchkeepingLogTransfer02(BaseETL):

    def run(
        self,
    ):
        sql = '''
        SELECT 
            DATE, 
            transfer,
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
                        SUBSTR(transfer, INSTR(transfer, Sex)),
                        Sex,
                        ''
                    )
                    WHEN Age IS NOT NULL THEN
                REPLACE (
                        SUBSTR(transfer, INSTR(transfer, Age)),
                        Age,
                        ''
                    )
                    WHEN Name IS NOT NULL THEN
                REPLACE (
                        SUBSTR(transfer, INSTR(transfer, Name)),
                        Name,
                        ''
                    )
            END AS Diagnosis
        FROM(
                SELECT
                    *,
                    REGEXP_SUBSTR(transfer, '[가-힣]?[A-Z][A-Z]?[)]') AS Prof,
                    REGEXP_SUBSTR(transfer, '[0-9]+') AS ID,
                    CASE
                        WHEN REGEXP_INSTR(transfer, '[가-힣][가-힣][가-힣]?') != 0 THEN REGEXP_SUBSTR(transfer, '[가-힣][가-힣][가-힣]?')
                        ELSE REGEXP_SUBSTR(
                            transfer,
                            '[A-Z][A-Z]+[ ]?[A-Z]+'
                        )
                    END AS Name,
                    CASE
                        WHEN REGEXP_INSTR(
                            transfer,
                            '[0-9][0-9]?[0-9]?[A-z]?[A-z]?[A-z]?[가-힣]?[가-힣]?[/]'
                        ) != 0 THEN REGEXP_SUBSTR(
                            transfer,
                            '[0-9][0-9]?[0-9]?[A-z]?[A-z]?[A-z]?[가-힣]?[가-힣]?[/]'
                        )
                        WHEN REGEXP_INSTR(transfer, '[/][0-9][0-9]?[0-9]?') != 0 THEN REGEXP_SUBSTR(transfer, '[/][0-9][0-9]?[0-9]?')
                        WHEN REGEXP_INSTR(
                            transfer,
                            '[A-z][0-9][0-9]?[가-힣]?'
                        ) != 0 THEN REGEXP_SUBSTR(
                            transfer,
                            '[A-z][0-9][0-9]?[가-힣]?'
                        )
                        WHEN REGEXP_INSTR(transfer, '[0-9][0-9]?[.]?[A-z]') !=0
                        THEN REGEXP_SUBSTR(transfer, '[0-9][0-9]?[.]?[A-z]')
                        ELSE REGEXP_SUBSTR(transfer, '[ ][0-9][0-9]?[0-9]?[ ]')
                    END AS Age,
                    CASE
                        WHEN REGEXP_INSTR(transfer, '[/][A-z]') != 0 THEN REGEXP_SUBSTR(transfer, '[/][A-z]')
                        WHEN REGEXP_INSTR(transfer, '[A-z][/]') != 0 THEN REGEXP_SUBSTR(transfer, '[A-z][/]')
                        WHEN REGEXP_INSTR(transfer, '[A-z][0-9][0-9]?') != 0 THEN REGEXP_SUBSTR(transfer, '[A-z][0-9][0-9]?')
                        WHEN REGEXP_INSTR(transfer, '[0-9][0-9]?[A-z]') != 0 THEN REGEXP_SUBSTR(transfer, '[0-9][0-9]?[A-z]')
                        WHEN REGEXP_INSTR(transfer, '[.][A-z]') != 0 THEN REGEXP_SUBSTR(transfer, '[.][A-z]')
                        ELSE REGEXP_SUBSTR(transfer, '[ ][A-z][ ]')
                    END AS Sex
                FROM
                    watchkeeping_log_transfer_01
            ) a
        '''
        df = self.df_from_sql(db_name="gc_protocol", sql=sql)
        self.insert(df, db_name="gc_protocol", tb_name="watchkeeping_log_transfer_02") 
        df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/watchkeeping_log_transfer.xlsx')

    
if __name__ == "__main__":
    obj = WatchkeepingLogTransfer02()
    obj.run()