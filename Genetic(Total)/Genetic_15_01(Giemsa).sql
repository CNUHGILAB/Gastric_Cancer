SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    `SUBSTR(Giemsa)`
FROM(
    SELECT *,
        CASE 
            WHEN NULLIF(`REPLACE(Giemsa)`, '') IS NOT NULL
            THEN REGEXP_SUBSTR(
                SUBSTR(`REPLACE(Giemsa)`, INSTR(`REPLACE(Giemsa)`, 'giemsa')), '[^\n]+', 1, 1
            )
            ELSE NULL
        END AS `SUBSTR(Giemsa)`
    FROM(
        SELECT *,
            CASE 
                WHEN NULLIF(`SELECT(Giemsa)`, '') IS NOT NULL
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
                                                                            SUBSTR(`SELECT(Giemsa)`, INSTR(`SELECT(Giemsa)`, 'giemsa')), '.', ','
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
            END AS `REPLACE(Giemsa)`
        FROM(
            SELECT *,
                CASE
                    WHEN 병리진단_Giemsa IS NOT NULL
                    THEN LOWER(병리진단_Giemsa)
                    ELSE NULL
                END AS `SELECT(Giemsa)`
            FROM genetic_15_00
        ) a
    ) a
) a