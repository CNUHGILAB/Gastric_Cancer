SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    `SUBSTR(S-100)`
FROM(
    SELECT *,
        CASE 
            WHEN NULLIF(`REPLACE(S-100)`, '') IS NOT NULL
            THEN REGEXP_SUBSTR(
                SUBSTR(`REPLACE(S-100)`, INSTR(`REPLACE(S-100)`, 's-100')), '[^\n]+', 1, 1
            )
            ELSE NULL
        END AS `SUBSTR(S-100)`
    FROM(
        SELECT *,
            CASE 
                WHEN NULLIF(`SELECT(S-100)`, '') IS NOT NULL
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
                                                                                    `SELECT(S-100)`, `SELECT(S-100)`, LOWER(`SELECT(S-100)`)
                                                                                ), SUBSTR(`SELECT(S-100)`, INSTR(`SELECT(S-100)`, '◈')), ''
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
            END AS `REPLACE(S-100)`
        FROM(
            SELECT *,
                CASE
                    WHEN INSTR(BINARY LOWER(병리진단), 's-100') != 0
                    THEN 병리진단
                    ELSE NULL
                END AS `SELECT(S-100)`
            FROM genetic_01
        ) a
    ) a
) a