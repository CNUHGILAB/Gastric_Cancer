SELECT
    원무접수ID,
    REGEXP_REPLACE(
        REGEXP_REPLACE(
            REGEXP_REPLACE(
                REPLACE(
                    REPLACE(
                        CD34, '34', ''
                    ), '-', '-,'
                ), '[(|)|.|:|;|/|!|,]', ''
            ), '[0-9]', ''
        ), '[a-z]', ''
    ) AS CD34
FROM(
    SELECT
        원무접수ID,
        CASE
            WHEN (LENGTH(CD34) - LENGTH(REPLACE(CD34, '!', ''))) / LENGTH('!') > 1
            THEN SUBSTR(CD34, INSTR(CD34, '34 !('), INSTR(CD34, ')'))
            WHEN (LENGTH(CD34) - LENGTH(REPLACE(CD34, '!', ''))) / LENGTH('!') = 1
            THEN SUBSTR(CD34, INSTR(CD34, '!'))
            ELSE CD34
        END AS CD34
    FROM(
        SELECT
            원무접수ID,
            CASE
                WHEN INSTR(CD34, '&') != 0 OR INSTR(CD34, 'and') != 0
                THEN REPLACE(CD34, '(', '!(')
                ELSE CONCAT(
                    CONCAT(
                        SUBSTR(
                            CD34, INSTR(CD34, 'CD34'), LENGTH('CD34')
                        ), '!'
                    ), SUBSTR(CD34, INSTR(CD34, 'CD34') + LENGTH('CD34') + 1)
                )
            END AS CD34
        FROM(
            SELECT
                원무접수ID,
                REPLACE(
                    REPLACE(
                        REPLACE(
                            CD34, 'CD-34', 'CD34'
                        ), 'positive', '(+,)'
                    ), 'negative', '(-,)'
                ) AS CD34
            FROM genetic_08
        ) genetic
    ) genetic
) genetic
WHERE NULLIF(CD34, '') IS NOT NULL