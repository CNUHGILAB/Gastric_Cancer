SELECT
    원무접수ID,
    SUBSTR(Ki_67, 1, INSTR(Ki_67, ',') -1) AS Ki_67, --
    REPLACE(
        SUBSTR(Ki_67, INSTR(Ki_67, ',') + 1), ',', ''
        ) AS Ki_67_p
FROM(
    SELECT
        원무접수ID,
        REGEXP_REPLACE(
            REPLACE(
                REPLACE(Ki_67, '67', ''), '-', '-,'
            ), '[(|)|.|:|;|/|!]', ''
        ) AS Ki_67
    FROM(
        SELECT
            원무접수ID,
            CASE
                WHEN((LENGTH(Ki_67) - LENGTH(REPLACE(Ki_67, '!', ''))) / LENGTH('!') > 1)
                THEN SUBSTR(Ki_67, INSTR(Ki_67, '67 !('), INSTR(Ki_67, ')'))
                WHEN((LENGTH(Ki_67) - LENGTH(REPLACE(Ki_67, '!', ''))) / LENGTH('!') = 1)
                THEN SUBSTR(Ki_67, INSTR(Ki_67, '!'))
                ELSE Ki_67
            END AS Ki_67
        FROM(
            SELECT
                원무접수ID,
                CASE
                    WHEN((INSTR(Ki_67, '&') != 0) OR (INSTR(Ki_67, 'and') != 0))
                    THEN REPLACE(Ki_67, '(', '!(')
                    WHEN INSTR(Ki_67, 'Ki-67,') != 0
                    THEN CONCAT(
                            CONCAT(
                                SUBSTR(
                                    Ki_67,
                                    INSTR(Ki_67, 'Ki-67,'),
                                    LENGTH('Ki-67,')
                                ), '!'
                            ),
                        SUBSTR(
                            Ki_67,
                            INSTR(Ki_67, 'Ki-67,') + LENGTH('Ki-67,') + 1
                        )
                    )
                    WHEN INSTR(Ki_67, 'Ki-67 labeling index') != 0
                    THEN CONCAT(
                            CONCAT(
                                SUBSTR(
                                    Ki_67,
                                    INSTR(Ki_67, 'Ki-67 labeling index'),
                                    LENGTH('Ki-67 labeling index')
                                ), '!'
                            ),
                        SUBSTR(
                            Ki_67,
                            INSTR(Ki_67, 'Ki-67 labeling index') + LENGTH('Ki-67 labeling index') + 1
                        )
                    )
                    WHEN INSTR(Ki_67, 'Ki-67 index') != 0
                    THEN CONCAT(
                            CONCAT(
                                SUBSTR(
                                    Ki_67,
                                    INSTR(Ki_67, 'Ki-67 index'),
                                    LENGTH('Ki-67 index')
                                ), '!'
                            ),
                        SUBSTR(
                            Ki_67,
                            INSTR(Ki_67, 'Ki-67 index') + LENGTH('Ki-67 index') + 1
                        )
                    )
                    ELSE CONCAT(
                            CONCAT(
                                SUBSTR(Ki_67, INSTR(Ki_67, 'Ki-67'), LENGTH('Ki-67')), '!'
                            ),
                        SUBSTR(Ki_67, INSTR(Ki_67, 'Ki-67') + LENGTH('Ki-67') + 1)
                    )
                END AS Ki_67
            FROM(
                SELECT
                    원무접수ID,
                    REPLACE(
                        REPLACE(
                            REPLACE(
                                REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            Ki_67, 'Ki67', 'Ki-67'
                                        ), 'positive', '(+,)'
                                    ), 'negative', '(-,)'
                                ), '3+', '(+++,)'
                            ), '2+', '(++,)'
                        ), '1+', '(+,)'
                    ) as Ki_67
                FROM genetic_05
            ) genetic
        ) genetic
    ) genetic
) genetic