SELECT
    원무접수ID,
    TRIM(
        REGEXP_REPLACE(
            REGEXP_REPLACE(
                REGEXP_REPLACE(
                    REPLACE(
                        REPLACE(
                            PKC_Theta, 'ta', ''
                        ), '-', '-,'
                    ), '[(|)|.|:|;|/|!|,]', ''
                ), '[0-9]', ''
            ), '[a-z]', ''
        )
    ) AS PKC_Theta
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
            WHEN ((LENGTH(PKC_Theta) - LENGTH(REPLACE(PKC_Theta, '!', ''))) / LENGTH('!') > 1)
            THEN SUBSTR(PKC_Theta, INSTR(PKC_Theta, 'ta !('),INSTR(PKC_Theta, ')'))
            WHEN ((LENGTH(PKC_Theta) - LENGTH(REPLACE(PKC_Theta, '!', ''))) / LENGTH('!') = 1)
            THEN SUBSTR(PKC_Theta, INSTR(PKC_Theta, '!'))
            ELSE PKC_Theta
        END AS PKC_Theta
        CASE
            WHEN ((LENGTH(PKC) - LENGTH(REPLACE(PKC, '!', ''))) / LENGTH('!') > 1)
            THEN SUBSTR(PKC, INSTR(PKC, 'ta !('),INSTR(PKC, ')'))
            WHEN ((LENGTH(PKC) - LENGTH(REPLACE(PKC, '!', ''))) / LENGTH('!') = 1)
            THEN SUBSTR(PKC, INSTR(PKC, '!'))
            ELSE PKC
        END AS PKC
    FROM(
        SELECT
            원무접수ID,
            CASE
                WHEN (SUBSTR(PKC_Theta, 'PKC', 1) = '-' AND (INSTR(PKC_Theta, '&') != 0 OR INSTR(PKC_Theta, 'and') != 0))
                THEN REPLACE(PKC_Theta, '(', '!(')
                ELSE CONCAT(
                    CONCAT(
                        SUBSTR(
                            PKC_Theta, INSTR(PKC_Theta, 'PKC-theta'), LENGTH('PKC-theta')
                        ), '!'
                    ), SUBSTR(PKC_Theta, INSTR(PKC_Theta, 'PKC-theta') + LENGTH('PKC-theta') + 1)
                )
            END AS PKC_Theta
            CASE
                WHEN SUBSTR(PKC_Theta, 'PKC', 1) != '-'
                THEN CONCAT(PKC_Theta, '=No theta')
            END AS PKC
        FROM(
            SELECT
                원무접수ID,
                REPLACE(
                    REPLACE(
                        PKC_Theta, 'positive', '(+,)'
                    ), 'negative', '(-,)'
                ) AS PKC_Theta
            FROM genetic_09
        ) genetic
    ) genetic
) genetic
WHERE NULLIF(PKC_Theta, '') IS NOT NULL