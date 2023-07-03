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
                                                                            SUBSTR(`SELECT(S-100)`, INSTR(`SELECT(S-100)`, 's-100')), '.', ','
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
                    WHEN 병리진단_S100 IS NOT NULL
                    THEN REPLACE(
                        LOWER(병리진단_S100), 's100', 's-100'
                    )
                    ELSE NULL
                END AS `SELECT(S-100)`
            FROM genetic_10_00
        ) a
    ) a
) a