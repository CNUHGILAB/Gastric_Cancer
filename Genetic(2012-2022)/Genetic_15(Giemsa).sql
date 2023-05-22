SELECT
    원무접수ID,
    TRIM(BOTH FROM Giemsa) AS Giemsa
FROM(
    SELECT
        원무접수ID,
        REGEXP_REPLACE(
            REGEXP_REPLACE(
                REGEXP_REPLACE(
                    REPLACE(
                        Giemsa, '-', '-,'
                    ), '[(|)|.|:|;|/|!|,]', ''
                ), '[0-9]', ''
            ), '[a-z]', ''
        ) AS Giemsa
    FROM(
        SELECT
            원무접수ID,
            CASE
                WHEN ((LENGTH(Giemsa) - LENGTH(REPLACE(Giemsa, '!', ''))) / LENGTH('!')) > 1
                THEN SUBSTR(Giemsa, INSTR(Giemsa, '!('), INSTR(Giemsa, ')') + 1)
                WHEN ((LENGTH(Giemsa) - LENGTH(REPLACE(Giemsa, '!', ''))) / LENGTH('!')) = 1
                THEN SUBSTR(Giemsa, INSTR(Giemsa, '!'))
                ELSE Giemsa
            END AS Giemsa
        FROM(
            SELECT
                원무접수ID,
                CASE
                    WHEN (INSTR(Giemsa, '&') != 0 OR INSTR(Giemsa, 'and') != 0)
                    THEN REPLACE(Giemsa, '(', '!(')
                    WHEN INSTR(Giemsa, 'H.pylori') != 0
                    THEN CONCAT(
                        CONCAT(
                            SUBSTR(
                                Giemsa, INSTR(Giemsa, 'H.pylori'), LENGTH('H.pylori')
                            ), '!'
                        ), SUBSTR(Giemsa, INSTR(Giemsa, 'H.pylori') + LENGTH('H.pylori') + 1)
                    )
                    ELSE CONCAT(
                        CONCAT(
                            SUBSTR(
                                Giemsa, INSTR(Giemsa, 'Giemsa'), LENGTH('Giemsa')
                            ), '!'
                        ), SUBSTR(Giemsa, INSTR(Giemsa, 'Giemsa') + LENGTH('Giemsa') + 1)
                    )
                END AS Giemsa
            FROM(
                SELECT
                    원무접수ID,
                    REPLACE(
                        REPLACE(
                            Giemsa, 'positive', '(+,)'
                        ), 'negative', '(-,)'
                    ) AS Giemsa
                FROM genetic_15
            ) genetic
        ) genetic
    ) genetic
) genetic
WHERE NULLIF(Giemsa, '') IS NOT NULL