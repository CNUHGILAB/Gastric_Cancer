SELECT
    원무접수ID,
    TRIM(BOTH FROM REPLACE(EBV, '-   -', '검토')) AS EBV
FROM(
    SELECT
        원무접수ID,
        REGEXP_REPLACE(
            REGEXP_REPLACE(
                REGEXP_REPLACE(
                    REPLACE(
                        EBV, '-', '-,'
                    ), '[(|)|.|:|;|/|!|,]', ''
                ), '[0-9]', ''
            ), '[a-z]', ''
        ) AS EBV
    FROM(
        SELECT
            원무접수ID,
            CASE
                WHEN ((LENGTH(EBV) - LENGTH(REPLACE(EBV, '!', ''))) / LENGTH('!')) > 1
                THEN SUBSTR(EBV, INSTR(EBV, '!('), INSTR(EBV, ')') + 1)
                WHEN ((LENGTH(EBV) - LENGTH(REPLACE(EBV, '!', ''))) / LENGTH('!')) = 1
                THEN SUBSTR(EBV, INSTR(EBV, '!'))
                ELSE EBV
            END AS EBV
        FROM(
            SELECT
                원무접수ID,
                CASE
                    WHEN (INSTR(EBV, '&') != 0 OR INSTR(EBV, 'and') != 0)
                    THEN REPLACE(EBV, '(', '!(')
                    WHEN INSTR(EBV, 'hybridization') != 0
                    THEN CONCAT(
                        CONCAT(
                            SUBSTR(
                                EBV, INSTR(EBV, 'hybridization'), LENGTH('hybridization')
                            ), '!'
                        ), SUBSTR(EBV, INSTR(EBV, 'hybridization') + LENGTH('hybridization') + 1)
                    )
                    ELSE CONCAT(
                        CONCAT(
                            SUBSTR(
                                EBV, INSTR(EBV, 'situ'), LENGTH('situ')
                            ), '!'
                        ), SUBSTR(EBV, INSTR(EBV, 'situ') + LENGTH('situ') + 1)
                    )
                END AS EBV
            FROM(
                SELECT
                    원무접수ID,
                    REPLACE(
                        REPLACE(
                            EBV, 'positive', '(+,)'
                        ), 'negative', '(-,)'
                    ) AS EBV
                FROM genetic_14
            ) genetic
        ) genetic
    ) genetic
) genetic
WHERE NULLIF(EBV, '') IS NOT NULL