SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    `SUBSTR(CD31nD240)`,
    `SUBSTR(CD31)`,
    `SUBSTR(D240)`
FROM(
    SELECT *,
        CASE 
            WHEN NULLIF(`REPLACE(CD31nD240)`, '') IS NOT NULL
            THEN REGEXP_SUBSTR(
                SUBSTR(`REPLACE(CD31nD240)`, INSTR(`REPLACE(CD31nD240)`, 'CD31 and D240')), '[^\n]+', 1, 1
            )
            ELSE NULL
        END AS `SUBSTR(CD31nD240)`,
        CASE 
            WHEN NULLIF(`REPLACE(CD31)`, '') IS NOT NULL
            THEN REGEXP_SUBSTR(
                SUBSTR(`REPLACE(CD31)`, INSTR(`REPLACE(CD31)`, 'CD31')), '[^\n]+', 1, 1
            )
            ELSE NULL
        END AS `SUBSTR(CD31)`,
        CASE 
            WHEN NULLIF(`REPLACE(D240)`, '') IS NOT NULL
            THEN REGEXP_SUBSTR(
                SUBSTR(`REPLACE(D240)`, INSTR(`REPLACE(D240)`, 'D240')), '[^\n]+', 1, 1
            )
            ELSE NULL
        END AS `SUBSTR(D240)`
    FROM(
        SELECT *,
            CASE 
                WHEN NULLIF(`SELECT(CD31nD240)`, '') IS NOT NULL
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
                                                                                            REPLACE(
                                                                                                REPLACE(
                                                                                                    REPLACE(
                                                                                                        REPLACE(
                                                                                                            REPLACE(
                                                                                                                REPLACE(
                                                                                                                    REPLACE(
                                                                                                                        REPLACE(
                                                                                                                            REPLACE(
                                                                                                                                `SELECT(CD31nD240)`, `SELECT(CD31nD240)`, LOWER(`SELECT(CD31nD240)`)
                                                                                                                            ), SUBSTR(`SELECT(CD31nD240)`, INSTR(`SELECT(CD31nD240)`, '◈')), ''
                                                                                                                        ), 'cd3 and d2-40', 'CD31 and D240'
                                                                                                                    ), 'cd31, and d2-40', 'CD31 and D240'
                                                                                                                ), 'cd31 & d2-40', 'CD31 and D240'
                                                                                                            ), 'cd31 and d2-40', 'CD31 and D240'
                                                                                                        ), 'd2-40 and cd31', 'CD31 and D240'
                                                                                                    ), 'd2-40, cd31', 'CD31 and D240'
                                                                                                ), 'cd31 and d20-40', 'CD31 and D240'
                                                                                            ), 'cd31 and  d20-40', 'CD31 and D240'
                                                                                        ), '.', ','
                                                                                    ), '),', ')'
                                                                                ), ';', ':'
                                                                            ), 'less than ', '<'
                                                                        ), 'positive', '(+)'
                                                                    ), 'positve', '(+)'
                                                                ), 'negative', '(-)'
                                                            ), 'negtive', '(-)'
                                                        ), 'newgative', '(-)'
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
            END AS `REPLACE(CD31nD240)`,
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
                                                                            REPLACE(
                                                                                REPLACE(
                                                                                    `SELECT(CD31)`, `SELECT(CD31)`, LOWER(`SELECT(CD31)`)
                                                                                ), SUBSTR(`SELECT(CD31)`, INSTR(`SELECT(CD31)`, '◈')), ''
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
                                                                            REPLACE(
                                                                                REPLACE(
                                                                                    REPLACE(
                                                                                        `SELECT(D240)`, `SELECT(D240)`, LOWER(`SELECT(D240)`)
                                                                                    ), SUBSTR(`SELECT(D240)`, INSTR(`SELECT(D240)`, '◈')), ''
                                                                                ), 'd2-40', 'D240'
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
            END AS `REPLACE(D240)`
        FROM(
            SELECT *,
                CASE
                    WHEN INSTR(ELSE_CD31nD240, 'CD31') != 0
                    THEN ELSE_CD31nD240
                    ELSE NULL
                END AS `SELECT(CD31)`,
                CASE
                    WHEN INSTR(ELSE_CD31nD240, 'D2-40') != 0
                    THEN ELSE_CD31nD240
                    ELSE NULL
                END AS `SELECT(D240)`
            FROM(
                SELECT *,
                    CASE 
                        WHEN NULLIF(병리진단, '') IS NOT NULL AND NULLIF(`SELECT(CD31nD240)`, '') IS NULL
                        THEN 병리진단
                        ELSE NULL
                    END AS ELSE_CD31nD240
                FROM(
                    SELECT *,
                        CASE
                            WHEN INSTR(병리진단, 'CD31 and D2-40') != 0 OR INSTR(병리진단, 'CD31, and D2-40') != 0 OR INSTR(병리진단, 'CD31 & D2-40') != 0
                                OR INSTR(병리진단, 'CD3 and D2-40') != 0 OR INSTR(병리진단, 'D2-40 and CD31') != 0 OR INSTR(병리진단, 'D2-40, CD31') != 0
                                OR INSTR(병리진단, 'CD31 and D20-40') != 0 OR INSTR(병리진단, 'CD31 and  D20-40') != 0
                            THEN 병리진단
                            ELSE NULL
                        END AS `SELECT(CD31nD240)`
                    FROM genetic_01
                ) a
            ) a
        ) a
    ) a
) a