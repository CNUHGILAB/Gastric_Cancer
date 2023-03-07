-- CD31nD2_40.sql
SELECT
    원무접수ID,
    SUBSTR(CD31, 1, INSTR(CD31, ',') - 1) AS CD31_1,
    REPLACE(SUBSTR(CD31, INSTR(CD31, ',') + 1), ',', '') AS CD31_2
FROM(
    SELECT
        원무접수ID,
        REGEXP_REPLACE(CD31, '[(|)|.|:|;|/|!]', '') AS CD31
    FROM(
        SELECT
            원무접수ID,
            CASE
                WHEN ((INSTR(CD31, ':') - INSTR(CD31, 'C')) = 4)
                THEN SUBSTR(CD31, INSTR(CD31, '('), INSTR(CD31, ')'))
                WHEN ((INSTR(CD31, ':') - INSTR(CD31, 'C')) < 4)
                THEN SUBSTR(CD31, INSTR(CD31, '('), INSTR(CD31, ')'))
                ELSE CD31
            END AS CD31
        FROM(
            SELECT
                원무접수ID,
                CASE
                    WHEN (INSTR(CD31, '0and') != 0 OR INSTR(CD31, '0&') != 0 OR INSTR(CD31, '0&') OR INSTR(CD31, 'andD') != 0 OR INSTR(CD31, '&D') != 0)
                    THEN REPLACE(CD31, CD31, '')
                    WHEN INSTR(CD31, '-C') != 0
                    THEN REPLACE(CD31, '-C', 'C')
                    WHEN INSTR(CD31, ':') = 0
                    THEN REPLACE(CD31, '(', ':(')
                END AS CD31
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
                                                CD31, 'CD-31', 'CD31'
                                            ), ';', ':'
                                        ), ' + ', '(+)'
                                    ), ' - ' '-'
                                ), 'positive', '(+),'
                            ), 'negetive', '(-),'
                        ) AS CD31
                    ) AS CD31
                FROM genetic_06_2
            ) genetic
        ) genetic
    ) genetic
) genetic