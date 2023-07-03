SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    `SUBSTR(CK)`,
    `SUBSTR(CK56)`,
    `SUBSTR(CK7)`,
    `SUBSTR(CK19)`,
    `SUBSTR(CK20)`
FROM(
    SELECT *,
        CASE 
            WHEN NULLIF(`REPLACE(CK)`, '') IS NOT NULL
            THEN REGEXP_SUBSTR(
                SUBSTR(`REPLACE(CK)`, INSTR(`REPLACE(CK)`, 'ck')), '[^\n]+', 1, 1
            )
            ELSE NULL
        END AS `SUBSTR(CK)`,
        CASE 
            WHEN NULLIF(`REPLACE(CK56)`, '') IS NOT NULL
            THEN REGEXP_SUBSTR(
                SUBSTR(`REPLACE(CK56)`, INSTR(`REPLACE(CK56)`, 'ck5')), '[^\n]+', 1, 1
            )
            ELSE NULL
        END AS `SUBSTR(CK56)`,
        CASE 
            WHEN NULLIF(`REPLACE(CK7)`, '') IS NOT NULL
            THEN REGEXP_SUBSTR(
                SUBSTR(`REPLACE(CK7)`, INSTR(`REPLACE(CK7)`, 'ck7')), '[^\n]+', 1, 1
            )
            ELSE NULL
        END AS `SUBSTR(CK7)`,
        CASE 
            WHEN NULLIF(`REPLACE(CK19)`, '') IS NOT NULL
            THEN REGEXP_SUBSTR(
                SUBSTR(`REPLACE(CK19)`, INSTR(`REPLACE(CK19)`, 'ck19')), '[^\n]+', 1, 1
            )
            ELSE NULL
        END AS `SUBSTR(CK19)`,
        CASE 
            WHEN NULLIF(`REPLACE(CK20)`, '') IS NOT NULL
            THEN REGEXP_SUBSTR(
                SUBSTR(`REPLACE(CK20)`, INSTR(`REPLACE(CK20)`, 'ck20')), '[^\n]+', 1, 1
            )
            ELSE NULL
        END AS `SUBSTR(CK20)`
    FROM(
        SELECT *,
            CASE 
                WHEN NULLIF(`SELECT(CK)`, '') IS NOT NULL
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
                                                                            SUBSTR(`SELECT(CK)`, INSTR(`SELECT(CK)`, 'ck')), '.', ','
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
            END AS `REPLACE(CK)`,
            CASE 
                WHEN NULLIF(`SELECT(CK56)`, '') IS NOT NULL
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
                                                                                SUBSTR(`SELECT(CK56)`, INSTR(`SELECT(CK56)`, 'ck5')), '.', ','
                                                                            ), 'ck5/6', 'ck56'
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
            END AS `REPLACE(CK56)`,
            CASE 
                WHEN NULLIF(`SELECT(CK7)`, '') IS NOT NULL
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
                                                                            SUBSTR(`SELECT(CK7)`, INSTR(`SELECT(CK7)`, 'ck')), '.', ','
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
            END AS `REPLACE(CK7)`,
            CASE 
                WHEN NULLIF(`SELECT(CK19)`, '') IS NOT NULL
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
                                                                            SUBSTR(`SELECT(CK19)`, INSTR(`SELECT(CK19)`, 'ck19')), '.', ','
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
            END AS `REPLACE(CK19)`,
            CASE 
                WHEN NULLIF(`SELECT(CK20)`, '') IS NOT NULL
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
                                                                            SUBSTR(`SELECT(CK20)`, INSTR(`SELECT(CK20)`, 'ck20')), '.', ','
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
            END AS `REPLACE(CK20)`
        FROM(
            SELECT *,
                CASE
                    WHEN 병리진단_CK IS NOT NULL
                    THEN LOWER(병리진단_CK)
                    ELSE NULL
                END AS `SELECT(CK)`,
                CASE
                    WHEN 병리진단_CK56 IS NOT NULL
                    THEN LOWER(병리진단_CK56)
                    ELSE NULL
                END AS `SELECT(CK56)`,
                CASE
                    WHEN 병리진단_CK7 IS NOT NULL
                    THEN LOWER(병리진단_CK7)
                    ELSE NULL
                END AS `SELECT(CK7)`,
                CASE
                    WHEN 병리진단_CK19 IS NOT NULL
                    THEN LOWER(병리진단_CK19)
                    ELSE NULL
                END AS `SELECT(CK19)`,
                CASE
                    WHEN 병리진단_CK20 IS NOT NULL
                    THEN LOWER(병리진단_CK20)
                    ELSE NULL
                END AS `SELECT(CK20)`
            FROM genetic_12_00
        ) a
    ) a
) a