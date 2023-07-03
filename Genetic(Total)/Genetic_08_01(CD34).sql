SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    `SUBSTR(CD34)`
FROM(
    SELECT *,
        CASE 
            WHEN NULLIF(`REPLACE(CD34)`, '') IS NOT NULL
            THEN REGEXP_SUBSTR(
                SUBSTR(`REPLACE(CD34)`, INSTR(`REPLACE(CD34)`, 'cd34')), '[^\n]+', 1, 1
            )
            ELSE NULL
        END AS `SUBSTR(CD34)`
    FROM(
        SELECT *,
            CASE 
                WHEN NULLIF(`SELECT(CD34)`, '') IS NOT NULL
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
                                                                            SUBSTR(`SELECT(CD34)`, INSTR(`SELECT(CD34)`, 'cd34')), '.', ','
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
            END AS `REPLACE(CD34)`
        FROM(
            SELECT *,
                CASE
                    WHEN 병리진단_CD34 IS NOT NULL
                    THEN LOWER(병리진단_CD34)
                    ELSE NULL
                END AS `SELECT(CD34)`
            FROM genetic_08_00
        ) a
    ) a
) a