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
                SUBSTR(`REPLACE(EBV)`, INSTR(`REPLACE(EBV)`, 'EBV')), '[^\n]+', 1, 1
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
                                                                            REPLACE(
                                                                                REPLACE(
                                                                                    `SELECT(EBV)`, `SELECT(EBV)`, LOWER(`SELECT(EBV)`)
                                                                                ), SUBSTR(`SELECT(EBV)`, INSTR(`SELECT(EBV)`, '◈')), ''
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
            END AS `REPLACE(EBV)`
        FROM(
            SELECT *,
                CASE
                    WHEN INSTR(병리진단, 'EBV') != 0
                    THEN 병리진단
                    ELSE NULL
                END AS `SELECT(EBV)`
            FROM genetic_01
        ) a
    ) a
) a