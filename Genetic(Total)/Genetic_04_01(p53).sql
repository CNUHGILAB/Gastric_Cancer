SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    `SUBSTR(p53)`
FROM(
    SELECT *,
        CASE 
            WHEN NULLIF(`REPLACE(p53)`, '') IS NOT NULL
            THEN REGEXP_SUBSTR(
                SUBSTR(`REPLACE(p53)`, INSTR(`REPLACE(p53)`, 'p53')), '[^\n]+', 1, 1
            )
            ELSE NULL
        END AS `SUBSTR(p53)`
    FROM(
        SELECT *,
            CASE 
                WHEN NULLIF(`SELECT(p53)`, '') IS NOT NULL
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
                                                                                `SELECT(p53)`, SUBSTR(`SELECT(p53)`, INSTR(`SELECT(p53)`, '◈')), ''
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
            END AS `REPLACE(p53)`
        FROM(
            SELECT *,
                CASE
                    WHEN INSTR(BINARY 병리진단, 'p53') != 0
                    THEN 병리진단
                    ELSE NULL
                END AS `SELECT(p53)`
            FROM genetic_01
        ) a
    ) a
) a