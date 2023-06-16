SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    `SUBSTR(SMA)`
FROM(
    SELECT *,
        CASE 
            WHEN NULLIF(`REPLACE(SMA)`, '') IS NOT NULL
            THEN REGEXP_SUBSTR(
                SUBSTR(`REPLACE(SMA)`, INSTR(`REPLACE(SMA)`, 'SMA')), '[^\n]+', 1, 1
            )
            ELSE NULL
        END AS `SUBSTR(SMA)`
    FROM(
        SELECT *,
            CASE 
                WHEN NULLIF(`SELECT(SMA)`, '') IS NOT NULL
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
                                                                                `SELECT(SMA)`, SUBSTR(`SELECT(SMA)`, INSTR(`SELECT(SMA)`, '◈')), ''
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
            END AS `REPLACE(SMA)`
        FROM(
            SELECT *,
                CASE
                    WHEN INSTR(BINARY 병리진단, 'SMA') != 0
                    THEN 병리진단
                    ELSE NULL
                END AS `SELECT(SMA)`
            FROM genetic_01
        ) a
    ) a
) a