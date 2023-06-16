SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    `SUBSTR(Ki-67)`
FROM(
    SELECT *,
        CASE 
            WHEN NULLIF(`REPLACE(Ki-67)`, '') IS NOT NULL
            THEN REGEXP_SUBSTR(
                SUBSTR(`REPLACE(Ki-67)`, INSTR(`REPLACE(Ki-67)`, 'Ki-67')), '[^\n]+', 1, 1
            )
            ELSE NULL
        END AS `SUBSTR(Ki-67)`
    FROM(
        SELECT *,
            CASE 
                WHEN NULLIF(`SELECT(Ki-67)`, '') IS NOT NULL
                THEN REGEXP_REPLACE(
                    REGEXP_REPLACE(
                        REGEXP_REPLACE(
                            REGEXP_REPLACE(
                                REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            REPLACE(
                                                REPLACE(
                                                    REPLACE(
                                                        REPLACE(
                                                            REPLACE(
                                                                REPLACE(
                                                                    REPLACE(
                                                                        REPLACE(
                                                                            REPLACE(
                                                                                REPLACE(
                                                                                    REPLACE(
                                                                                        REPLACE(
                                                                                            `SELECT(Ki-67)`, `SELECT(Ki-67)`, LOWER(`SELECT(Ki-67)`)
                                                                                        ), SUBSTR(`SELECT(Ki-67)`, INSTR(`SELECT(Ki-67)`, '◈')), ''
                                                                                    ), 'ki-67', 'Ki-67'
                                                                                ), 'labelling', 'labeling'
                                                                            ), '.', ','
                                                                        ), '),', ')'
                                                                    ), ';', ':'
                                                                ), 'less than ', '<'
                                                            ), 'positive', '(+)'
                                                        ), 'negative', '(-)'
                                                    ), '3+', '+++'
                                                ), '2+', '++'
                                            ), '1+', '+'
                                        ), '3-', '---'
                                    ), '2-', '--'
                                ), '1-', '-'
                            ), ' {2,}', ' '
                        ), '[(]{2,}', '('
                    ), '[)]{2,}', ')'
                )
                ELSE NULL
            END AS `REPLACE(Ki-67)`
        FROM(
            SELECT *,
                CASE
                    WHEN INSTR(병리진단, 'Ki-67') != 0
                    THEN 병리진단
                    ELSE NULL
                END AS `SELECT(Ki-67)`
            FROM genetic_01
        ) a
    ) a
) a