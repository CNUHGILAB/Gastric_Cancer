SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    `SUBSTR(PKC-Theta)`
FROM(
    SELECT *,
        CASE 
            WHEN NULLIF(`REPLACE(PKC-Theta)`, '') IS NOT NULL
            THEN REGEXP_SUBSTR(
                SUBSTR(`REPLACE(PKC-Theta)`, INSTR(`REPLACE(PKC-Theta)`, 'pkc-theta')), '[^\n]+', 1, 1
            )
            ELSE NULL
        END AS `SUBSTR(PKC-Theta)`
    FROM(
        SELECT *,
            CASE 
                WHEN NULLIF(`SELECT(PKC-Theta)`, '') IS NOT NULL
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
                                                                            SUBSTR(`SELECT(PKC-Theta)`, INSTR(`SELECT(PKC-Theta)`, 'pkc-theta')), '.', ','
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
            END AS `REPLACE(PKC-Theta)`
        FROM(
            SELECT *,
                CASE
                    WHEN 병리진단_PKCTHETA IS NOT NULL
                    THEN LOWER(병리진단_PKCTHETA)
                    ELSE NULL
                END AS `SELECT(PKC-Theta)`
            FROM genetic_09_00
        ) a
    ) a
) a