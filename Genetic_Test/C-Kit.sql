SELECT
    원무접수ID,
    REGEXP_REPLACE(
        REGEXP_REPLACE(
            REGEXP_REPLACE(
                REPLACE(REPLACE(C_Kit, 'kit', ''), '-', '-,'),
                '[(|)|.|:|;|/|!|,]', ''
            ), '[0-9]', ''
        ), '[a-z]', ''
    ) AS C_Kit
FROM(
    SELECT
        원무접수ID,
        CASE
            WHEN((LENGTH(C_Kit) - LENGTH(REPLACE(C_Kit, '!', ''))) / LENGTH('!')) > 1
            THEN SUBSTR(C_Kit, INSTR(C_Kit, 'kit !('), INSTR(C_Kit, ')'))
            WHEN((LENGTH(C_Kit) - LENGTH(REPLACE(C_Kit, '!', ''))) / LENGTH('!')) = 1
            THEN SUBSTR(C_Kit, INSTR(C_Kit, '!'))
            ELSE C_Kit
        END AS C_Kit
        FROM(
            SELECT
                원무접수ID,
                CASE
                    WHEN((INSTR(C_Kit, '&') != 0) OR (INSTR(C_Kit, 'and') != 0))
                    THEN REPLACE(C_Kit, '(', '!(')
                    WHEN(INSTR(C_Kit, 'C-Kit,') != 0)
                    THEN CONCAT(
                            CONCAT(
                                SUBSTR(C_Kit, INSTR(C_Kit, 'C-Kit,'), LENGTH('C-Kit,')),
                                '!'
                            ),
                        SUBSTR(
                            C_Kit,
                            INSTR(C_Kit, 'C-Kit,') + LENGTH('C-Kit,') + 1
                        )
                    )
                    WHEN(INSTR(C_Kit, '  ' != 0))
                    THEN REPLACE(
                        REPLACE(
                            C_Kit, '  ', ''
                        ), '(', '!('
                    )
                    ELSE CONCAT(
                            CONCAT(
                                SUBSTR(C_Kit, INSTR(C_Kit, 'C-Kit'), LENGTH('C-Kit')),
                                '!'
                            ),
                        SUBSTR(
                            C_Kit,
                            INSTR(C_Kit, 'C-Kit') + LENGTH('C-Kit') + 1
                        )
                    )
                END AS C_Kit
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
                                                C_Kit, 'CD-117', ''
                                            ), 'CD117', ''
                                        ), '(CD117)', ''
                                    ), '(CD-117)', ''
                                ), '±', '(+-,)'
                            ), 'positive', '(+,)'
                        ), 'negative', '(-,)'
                    ) AS C_Kit
                FROM genetic_07
            ) genetic
        ) genetic
) genetic
WHERE
    NULLIF(C_Kit, '') IS NOT NULL