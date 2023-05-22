SELECT
    원무접수ID,
    REGEXP_REPLACE(
        REGEXP_REPLACE(
            REGEXP_REPLACE(
                REPLACE(
                    REPLACE(
                        `S-100`, 'ein', ''
                    ), '-', '-,'
                ), '[(|)|.|:|;|/|!|,]', ''
            ), '[0-9]', ''
        ), '[a-z]', ''
    ) AS `S-100`
FROM(
    SELECT
        원무접수ID,
        CASE
            WHEN ((LENGTH(`S-100`) - LENGTH(REPLACE(`S-100`, '!', ''))) / LENGTH('!') > 1)
            THEN SUBSTR(`S-100`, INSTR(`S-100`, 'ein !('), INSTR(`S-100`, ')'))
            WHEN ((LENGTH(`S-100`) - LENGTH(REPLACE(`S-100`, '!', ''))) / LENGTH('!') = 1)
            THEN SUBSTR(`S-100`, INSTR(`S-100`, '!'))
            ELSE `S-100`
        END AS `S-100`
    FROM(
        SELECT
            원무접수ID,
            CASE
                WHEN (INSTR(`S-100`, '&') != 0 OR INSTR(`S-100`, 'and') != 0)
                THEN REPLACE(`S-100`, '(', '!(')
                ELSE CONCAT(
                    CONCAT(
                        SUBSTR(
                            `S-100`, INSTR(`S-100`, 'S-100 protein'), LENGTH('S-100 protein')
                        ), '!'
                    ), SUBSTR(`S-100`, INSTR(`S-100`, 'S-100 protein') + LENGTH('S-100 protein') + 1)
                )
            END AS `S-100`
        FROM(
            SELECT
                원무접수ID,
                REPLACE(
                    REPLACE(
                        REPLACE(
                            `S-100`, 'S100', 'S-100'
                        ), 'positive', '(+,)'
                    ), 'negative', '(-,)'
                ) AS `S-100`
            FROM genetic_10
        ) genetic
    ) genetic
) genetic
WHERE NULLIF(`S-100`, '') IS NOT NULL