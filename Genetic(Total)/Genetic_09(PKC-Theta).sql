SELECT
    원무접수ID,
    TRIM(
        REGEXP_REPLACE(
            REGEXP_REPLACE(
                REGEXP_REPLACE(
                    REPLACE(
                        REPLACE(
                            `PKC-Theta`, 'ta', ''
                        ), '-', '-,'
                    ), '[(|)|.|:|;|/|!|,]', ''
                ), '[0-9]', ''
            ), '[a-z]', ''
        )
    ) AS `PKC-Theta`,
    TRIM(
        REGEXP_REPLACE(
            REGEXP_REPLACE(
                REGEXP_REPLACE(
                        REPLACE(
                            REPLACE(
                                REPLACE(
                                    PKC, '=No theta', 'theta'
                                ), 'ta', ''
                            ), '=', '-,'
                        ), '[(|)|.|:|;|/|!|,]', ''
                ), '[0-9]', ''
            ), '[a-z]', ''
        )
    ) AS PKC
FROM(
    SELECT
        원무접수ID,
        CASE
            WHEN (LENGTH(`PKC-Theta`) - LENGTH(REPLACE(`PKC-Theta`, '!', ''))) / LENGTH('!') > 1
            THEN SUBSTR(`PKC-Theta`, INSTR(`PKC-Theta`, 'ta !('),INSTR(`PKC-Theta`, ')'))
            WHEN (LENGTH(`PKC-Theta`) - LENGTH(REPLACE(`PKC-Theta`, '!', ''))) / LENGTH('!') = 1
            THEN SUBSTR(`PKC-Theta`, INSTR(`PKC-Theta`, '!'))
            ELSE `PKC-Theta`
        END AS `PKC-Theta`,
        CASE
            WHEN (LENGTH(PKC) - LENGTH(REPLACE(PKC, '!', ''))) / LENGTH('!') > 1
            THEN SUBSTR(PKC, INSTR(PKC, 'ta !('),INSTR(PKC, ')'))
            WHEN (LENGTH(PKC) - LENGTH(REPLACE(PKC, '!', ''))) / LENGTH('!') = 1
            THEN SUBSTR(PKC, INSTR(PKC, '!'))
            ELSE PKC
        END AS PKC
    FROM(
        SELECT
            원무접수ID,
            CASE
                WHEN (SUBSTR(`PKC-Theta`, 'PKC', 1) = '-' AND (INSTR(`PKC-Theta`, '&') != 0 OR INSTR(`PKC-Theta`, 'and') != 0))
                THEN REPLACE(`PKC-Theta`, '(', '!(')
                ELSE CONCAT(
                    CONCAT(
                        SUBSTR(
                            `PKC-Theta`, INSTR(`PKC-Theta`, 'PKC-theta'), LENGTH('PKC-theta')
                        ), '!'
                    ), SUBSTR(`PKC-Theta`, INSTR(`PKC-Theta`, 'PKC-theta') + LENGTH('PKC-theta') + 1)
                )
            END AS `PKC-Theta`,
            CASE
                WHEN SUBSTR(`PKC-Theta`, 'PKC', 1) != '-'
                THEN CONCAT(`PKC-Theta`, '=No theta')
            END AS PKC
        FROM(
            SELECT
                원무접수ID,
                REPLACE(
                    REPLACE(
                        `PKC-Theta`, 'positive', '(+,)'
                    ), 'negative', '(-,)'
                ) AS `PKC-Theta`
            FROM genetic_09
        ) genetic
    ) genetic
) genetic
WHERE NULLIF(`PKC-Theta`, '') IS NOT NULL