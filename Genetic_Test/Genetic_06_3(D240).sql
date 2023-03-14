-- D240nD2_40.sql
SELECT
    원무접수ID,
    SUBSTR(D240, 1, INSTR(D240, ',') - 1) AS D240_1,
    REPLACE(SUBSTR(D240, INSTR(D240, ',') + 1), ',', '') AS D240_2
FROM(
    SELECT
        원무접수ID,
        REGEXP_REPLACE(D240, '[(|)|.|:|;|/|!]', '') AS D240
    FROM(
        SELECT
            원무접수ID,
            CASE
                WHEN ((INSTR(D240, ':') - INSTR(D240, 'D')) = 4)
                THEN SUBSTR(D240, INSTR(D240, '('), INSTR(D240, ')'))
                WHEN ((INSTR(D240, ':') - INSTR(D240, 'D')) < 4)
                THEN SUBSTR(D240, INSTR(D240, '('), INSTR(D240, ')'))
                ELSE D240
            END AS D240
        FROM(
            SELECT
                원무접수ID,
                CASE
                    WHEN (INSTR(D240, '1and') != 0 OR INSTR(D240, '1&') != 0 OR INSTR(D240, '1&') OR INSTR(D240, 'andC') != 0 OR INSTR(D240, '&C') != 0)
                    THEN REPLACE(D240, D240, '')
                    WHEN INSTR(D240, '-D') != 0
                    THEN REPLACE(D240, '-D', 'D')
                    WHEN INSTR(D240, ':') = 0
                    THEN REPLACE(D240, '(', ':(')
                END AS D240
            FROM(
                SELECT
                    원무접수ID,
                    TRIM(
                        REPLACE(
                            REPLACE(
                                REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            REPLACE(
                                                D240, 'D2-40', 'D240'
                                            ), ';', ':'
                                        ), ' + ', '(+)'
                                    ), ' - ' '-'
                                ), 'positive', '(+),'
                            ), 'negetive', '(-),'
                        ) AS D240
                    ) AS D240
                FROM genetic_06_3
            ) genetic
        ) genetic
    ) genetic
) genetic