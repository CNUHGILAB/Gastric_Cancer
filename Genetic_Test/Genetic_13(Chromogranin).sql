SELECT
    원무접수ID,
    TRIM(BOTH FROM Chromogranin) AS Chromogranin
FROM(
    SELECT
        원무접수ID,
        REGEXP_REPLACE(
            REGEXP_REPLACE(
                REGEXP_REPLACE(
                    REPLACE(
                        REPLACE(
                            Chromogranin, 'nin', ''
                        ), '-', '-,'
                    ), '[(|)|.|:|;|/|!|,]', ''
                ), '[0-9]', ''
            ), '[a-z]', ''
        ) AS Chromogranin
    FROM(
        SELECT
            원무접수ID,
            CASE
                WHEN (((LENGTH(Chromogranin) - LENGTH(REPLACE(Chromogranin, '!', ''))) / LENGTH('!')) > 1)
                THEN SUBSTR(Chromogranin, INSTR(Chromogranin, '!('), INSTR(Chromogranin, ')') + 1)
                WHEN (((LENGTH(Chromogranin) - LENGTH(REPLACE(Chromogranin, '!', ''))) / LENGTH('!')) = 1)
                THEN SUBSTR(Chromogranin, INSTR(Chromogranin, '!'))
                ELSE Chromogranin
            END AS Chromogranin
        FROM(
            SELECT
                원무접수ID,
                CASE
                    WHEN (INSTR(Chromogranin, '&') != 0 OR INSTR(Chromogranin, 'and') != 0)
                    THEN REPLACE(Chromogranin, '(', '!(')
                    ELSE CONCAT(
                        CONCAT(
                            SUBSTR(
                                Chromogranin, INSTR(Chromogranin, 'Chromogranin'), LENGTH('Chromogranin')
                            ), '!'
                        ), SUBSTR(Chromogranin, INSTR(Chromogranin, 'Chromogranin') + LENGTH('Chromogranin') + 1)
                    )
                END AS Chromogranin
            FROM(
                SELECT
                    원무접수ID,
                    REPLACE(
                        REPLACE(
                            Chromogranin, 'positive', '(+,)'
                        ), 'negative', '(-,)'
                    ) AS Chromogranin
                FROM genetic_13
            ) genetic
        ) genetic
    ) genetic
) genetic
WHERE NULLIF(Chromogranin, '') IS NOT NULL