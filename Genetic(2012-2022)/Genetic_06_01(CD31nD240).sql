-- CD31nD2_40.sql
SELECT
    원무접수ID,
    SUBSTR(CD31_n_D240, 1, INSTR(CD31_n_D240, ',') -1) AS CD31_n_D240_1,
    REPLACE(SUBSTR(CD31_n_D240, INSTR(CD31_n_D240, ',') + 1), ',', '') AS CD31_n_D240_2
FROM(
    SELECT
        원무접수ID,
        REGEXP_REPLACE(
            REPLACE(
                REPLACE(
                    CD31_n_D240, '40', ''
                ), '-', '-,'
            ), '[(|)|.|:|;|/|!]', ''
        ) AS CD31_n_D240
    FROM(
        SELECT
            원무접수ID,
            CASE
                WHEN (((LENGTH(CD31_n_D240) - LENGTH(REPLACE(CD31_n_D240, '!', ''))) / LENGTH('!')) > 1)
                THEN SUBSTR(CD31_n_D240, INSTR(CD31_n_D240, '40 !('), INSTR(CD31_n_D240, ')'))
                WHEN (((LENGTH(CD31_n_D240) - LENGTH(REPLACE(CD31_n_D240, '!', ''))) / LENGTH('!')) = 1)
                THEN SUBSTR(CD31_n_D240, INSTR(CD31_n_D240, '!'))
                ELSE CD31_n_D240
            END AS CD31_n_D240
        FROM(
            SELECT
                원무접수ID,
                CASE
                    WHEN(INSTR(CD31_n_D240, '&') != 0)
                    THEN REPLACE(CD31_n_D240, '(', '!(')
                    ELSE CONCAT(
                        CONCAT(
                            SUBSTR(
                                CD31_n_D240, INSTR(CD31_n_D240, 'CD31 and D2-40'), LENGTH('CD31 and D2-40')
                            ), '!'
                        ), SUBSTR(CD31_n_D240, INSTR(CD31_n_D240, 'CD31 and D2-40') + LENGTH('CD31 and D2-40') + 1)
                    )
                END AS CD31_n_D240
            FROM(
                SELECT
                    원무접수ID,
                    REPLACE(
                        REPLACE(
                            REPLACE(
                                REPLACE(
                                    REPLACE(
                                        CD31_n_D240, 'D2-40, CD31', 'CD31 and D2-40'
                                    ), 'D2-40 and CD31', 'CD31 and D2-40'
                                ),'D240', 'D2-40'
                            ), 'positive', '(+,)'
                        ), 'negative', '(-,)'
                    ) AS CD31_n_D240
                FROM genetic_06_01
            ) genetic
        ) genetic
    ) genetic
)genetic