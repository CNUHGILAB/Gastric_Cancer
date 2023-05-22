SELECT
    원무접수ID,
    REGEXP_REPLACE(
        REGEXP_REPLACE(
            REGEXP_REPLACE(
                REPLACE(
                    REPLACE(
                        SMA, 'SMA', ''
                    ), '-', '-,'
                ), '[(|)|.|:|;|/|!|,]', ''
            ), '[0-9]', ''
        ), '[a-z]', ''
    ) AS SMA
FROM(
    SELECT
        원무접수ID,
        CASE
            WHEN (((LENGTH(SMA) - LENGTH(REPLACE(SMA, '!', ''))) / LENGTH('!')) > 1)
            THEN SUBSTR(SMA, INSTR(SMA, 'SMA !('), INSTR(SMA, ')'))
            WHEN (((LENGTH(SMA) - LENGTH(REPLACE(SMA, '!', ''))) / LENGTH('!')) = 1)
            THEN SUBSTR(SMA, INSTR(SMA, '!'))
            ELSE SMA
        END AS SMA
    FROM(
        SELECT
            원무접수ID,
            CASE
                WHEN (INSTR(SMA, '&') != 0 OR INSTR(SMA, 'and') != 0)
                THEN REPLACE(SMA, '(', '!(')
                WHEN INSTR(SMA, 'Smooth muscle actin') != 0
                THEN CONCAT(
                    CONCAT(
                        SUBSTR(
                            SMA, INSTR(SMA, 'Smooth muscle actin'), LENGTH('Smooth muscle actin')
                        ), '!'
                    ), SUBSTR(SMA, INSTR(SMA, 'Smooth muscle actin') + LENGTH('Smooth muscle actin') + 1)
                )
                ELSE CONCAT(
                    CONCAT(
                        SUBSTR(SMA, INSTR(SMA, 'SMA'), LENGTH('SMA')), '!'
                    ), SUBSTR(SMA, INSTR(SMA, 'SMA') + LENGTH('SMA') + 1)
                )
            END AS SMA
        FROM(
            SELECT
                원무접수ID,
                REPLACE(
                    REPLACE(
                        SMA, 'positive', '(+,)'
                    ), 'negative', '(-,)'
                ) AS SMA
            FROM genetic_11
        ) genetic
    ) genetic
) genetic
WHERE NULLIF(SMA, '') IS NOT NULL