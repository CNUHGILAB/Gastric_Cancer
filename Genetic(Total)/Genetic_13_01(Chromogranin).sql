SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    `SUBSTR(Chromogranin)`
FROM(
    SELECT *,
        CASE 
            WHEN NULLIF(`REPLACE(Chromogranin)`, '') IS NOT NULL
            THEN REGEXP_SUBSTR(
                SUBSTR(`REPLACE(Chromogranin)`, INSTR(`REPLACE(Chromogranin)`, 'chromogranin')), '[^\n]+', 1, 1
            )
            ELSE NULL
        END AS `SUBSTR(Chromogranin)`
    FROM(
        SELECT *,
            CASE 
                WHEN NULLIF(`SELECT(Chromogranin)`, '') IS NOT NULL
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
                                                                                    `SELECT(Chromogranin)`, `SELECT(Chromogranin)`, LOWER(`SELECT(Chromogranin)`)
                                                                                ), SUBSTR(`SELECT(Chromogranin)`, INSTR(`SELECT(Chromogranin)`, '◈')), ''
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
            END AS `REPLACE(Chromogranin)`
        FROM(
            SELECT *,
                CASE
                    WHEN INSTR(BINARY LOWER(병리진단), 'chromogranin') != 0
                    THEN 병리진단
                    ELSE NULL
                END AS `SELECT(Chromogranin)`
            FROM genetic_01
        ) a
    ) a
) a