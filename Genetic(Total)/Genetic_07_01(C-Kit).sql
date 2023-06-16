SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    `SUBSTR(C-Kit)`
FROM(
    SELECT *,
        CASE 
            WHEN NULLIF(`REPLACE(C-Kit)`, '') IS NOT NULL
            THEN REGEXP_SUBSTR(
                SUBSTR(`REPLACE(C-Kit)`, INSTR(`REPLACE(C-Kit)`, 'c-kit')), '[^\n]+', 1, 1
            )
            ELSE NULL
        END AS `SUBSTR(C-Kit)`
    FROM(
        SELECT *,
            CASE 
                WHEN NULLIF(`SELECT(C-Kit)`, '') IS NOT NULL
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
                                                                                    `SELECT(C-Kit)`, `SELECT(C-Kit)`, LOWER(`SELECT(C-Kit)`)
                                                                                ), SUBSTR(`SELECT(C-Kit)`, INSTR(`SELECT(C-Kit)`, '◈')), ''
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
            END AS `REPLACE(C-Kit)`
        FROM(
            SELECT *,
                CASE
                    WHEN INSTR(BINARY LOWER(병리진단), 'c-kit') != 0
                    THEN 병리진단
                    ELSE NULL
                END AS `SELECT(C-Kit)`
            FROM genetic_01
        ) a
    ) a
) a