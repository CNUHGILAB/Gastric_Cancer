SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    `SUBSTR(CK)`
FROM(
    SELECT *,
        CASE 
            WHEN NULLIF(`REPLACE(CK)`, '') IS NOT NULL
            THEN REGEXP_SUBSTR(
                SUBSTR(`REPLACE(CK)`, INSTR(`REPLACE(CK)`, 'ck')), '[^\n]+', 1, 1
            )
            ELSE NULL
        END AS `SUBSTR(CK)`
    FROM(
        SELECT *,
            CASE 
                WHEN NULLIF(`SELECT(CK)`, '') IS NOT NULL
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
                                                                                    `SELECT(CK)`, `SELECT(CK)`, LOWER(`SELECT(CK)`)
                                                                                ), SUBSTR(`SELECT(CK)`, INSTR(`SELECT(CK)`, '◈')), ''
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
            END AS `REPLACE(CK)`
        FROM(
            SELECT *,
                CASE
                    WHEN INSTR(BINARY 병리진단, 'CK') != 0
                    THEN 병리진단
                    ELSE NULL
                END AS `SELECT(CK)`
            FROM genetic_01
        ) a
    ) a
) a