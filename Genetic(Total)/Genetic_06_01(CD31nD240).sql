SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    `SUBSTR(CD31)`,
    `SUBSTR(D240)`
FROM(
    SELECT *,
        CASE 
            WHEN NULLIF(`REPLACE(CD31)`, '') IS NOT NULL
            THEN REGEXP_SUBSTR(
                SUBSTR(`REPLACE(CD31)`, INSTR(`REPLACE(CD31)`, 'cd31')), '[^\n]+', 1, 1
            )
            ELSE NULL
        END AS `SUBSTR(CD31)`,
        CASE 
            WHEN NULLIF(`REPLACE(D240)`, '') IS NOT NULL
            THEN REGEXP_SUBSTR(
                SUBSTR(`REPLACE(D240)`, INSTR(`REPLACE(D240)`, 'd240')), '[^\n]+', 1, 1
            )
            ELSE NULL
        END AS `SUBSTR(D240)`
    FROM(
        SELECT *,
            CASE
                WHEN NULLIF(`SELECT(CD31)`, '') IS NOT NULL
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
                                                                            SUBSTR(`SELECT(CD31)`, INSTR(`SELECT(CD31)`, 'cd31')), '.', ','
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
            END AS `REPLACE(CD31)`,
            CASE
                WHEN NULLIF(`SELECT(D240)`, '') IS NOT NULL
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
                                                                            SUBSTR(`SELECT(D240)`, INSTR(`SELECT(D240)`, 'd240')), '.', ','
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
            END AS `REPLACE(D240)`
        FROM(
            SELECT *,
                CASE
                    WHEN 병리진단_CD31 IS NOT NULL
                    THEN LOWER(병리진단_CD31)
                    ELSE NULL
                END AS `SELECT(CD31)`,
                CASE 
                    WHEN 병리진단_D240 IS NOT NULL
                    THEN REPLACE(
                        REPLACE(
                            LOWER(병리진단_D240), 'd20-40', 'd240'
                        ), 'd2-40', 'd240'
                    )
                    ELSE NULL
                END AS `SELECT(D240)`
            FROM genetic_06_00
        ) a
    ) a
) a