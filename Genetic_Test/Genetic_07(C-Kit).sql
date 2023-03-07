SELECT
    원무접수ID,
    REGEXP_REPLACE(
        REGEXP_REPLACE(
            REGEXP_REPLACE(
                REPLACE(
                    REPLACE(
                        `C-Kit`, 'kit', ''
                    ), '-', '-,'
                ), '[(|)|.|:|;|/|!|,]', ''
            ), '[0-9]', ''
        ), '[a-z]', ''
    ) AS `C-Kit`
FROM(
    SELECT
        원무접수ID,
        CASE
            WHEN ((LENGTH(`C-Kit`) - LENGTH(REPLACE(`C-Kit`, '!', ''))) / LENGTH('!')) > 1
            THEN SUBSTR(`C-Kit`, INSTR(`C-Kit`, 'kit !('), INSTR(`C-Kit`, ')'))
            WHEN ((LENGTH(`C-Kit`) - LENGTH(REPLACE(`C-Kit`, '!', ''))) / LENGTH('!')) = 1
            THEN SUBSTR(`C-Kit`, INSTR(`C-Kit`, '!'))
            ELSE `C-Kit`
        END AS `C-Kit`
    FROM(
        SELECT
            원무접수ID,
            CASE
                WHEN ((INSTR(`C-Kit`, '&') != 0) OR (INSTR(`C-Kit`, 'and') != 0))
                THEN REPLACE(`C-Kit`, '(', '!(')
                WHEN(INSTR(`C-Kit`, 'C-Kit,') != 0)
                THEN CONCAT(
                    CONCAT(
                        SUBSTR(
                            `C-Kit`, INSTR(`C-Kit`, 'C-Kit,'), LENGTH('C-Kit,')
                        ),'!'
                    ), SUBSTR(`C-Kit`, INSTR(`C-Kit`, 'C-Kit,') + LENGTH('C-Kit,') + 1)
                )
                WHEN (INSTR(`C-Kit`, '  ' != 0))
                THEN REPLACE(
                    REPLACE(
                        `C-Kit`, '  ', ''
                    ), '(', '!('
                )
                ELSE CONCAT(
                    CONCAT(
                        SUBSTR(
                            `C-Kit`, INSTR(`C-Kit`, 'C-Kit'), LENGTH('C-Kit')
                        ), '!'
                    ), SUBSTR(`C-Kit`, INSTR(`C-Kit`, 'C-Kit') + LENGTH('C-Kit') + 1)
                )
            END AS `C-Kit`
        FROM(
            SELECT
                원무접수ID,
                REPLACE(
                    REPLACE(
                        REPLACE(
                            REPLACE(
                                REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            `C-Kit`, 'CD-117', ''
                                        ), 'CD117', ''
                                    ), '(CD117)', ''
                                ), '(CD-117)', ''
                            ), '±', '(+-,)'
                        ), 'positive', '(+,)'
                    ), 'negative', '(-,)'
                ) AS `C-Kit`
            FROM genetic_07
        ) genetic
    ) genetic
) genetic
WHERE NULLIF(`C-Kit`, '') IS NOT NULL