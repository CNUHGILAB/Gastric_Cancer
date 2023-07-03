SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    `SUBSTR(EBV)`
FROM(
    SELECT *,
        CASE 
            WHEN NULLIF(`REPLACE(EBV)`, '') IS NOT NULL
            THEN REGEXP_SUBSTR(
                SUBSTR(`REPLACE(EBV)`, INSTR(`REPLACE(EBV)`, 'ebv')), '[^\n]+', 1, 1
            )
            ELSE NULL
        END AS `SUBSTR(EBV)`
    FROM(
        SELECT *,
            CASE 
                WHEN NULLIF(`SELECT(EBV)`, '') IS NOT NULL
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
                                                                            SUBSTR(`SELECT(EBV)`, INSTR(`SELECT(EBV)`, 'ebv')), '.', ','
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
            END AS `REPLACE(EBV)`
        FROM(
            SELECT *,
                CASE
                    WHEN 병리진단_EBV IS NOT NULL
                    THEN LOWER(병리진단_EBV)
                    ELSE NULL
                END AS `SELECT(EBV)`
            FROM genetic_14_00
        ) a
    ) a
) a