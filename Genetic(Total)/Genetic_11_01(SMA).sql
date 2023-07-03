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
                SUBSTR(`REPLACE(SMA)`, INSTR(`REPLACE(SMA)`, 'alpha-sma')), '[^\n]+', 1, 1
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
                                                                            SUBSTR(`SELECT(SMA)`, INSTR(`SELECT(SMA)`, 'alpha-sma')), '.', ','
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
                    WHEN 병리진단_SMA IS NOT NULL
                    THEN REPLACE(
                        REPLACE(
                            REPLACE(
                                REPLACE(
                                    LOWER(병리진단_SMA), 'smooth muscle actin', 'sma'
                                ), 'sma', 'alpha-sma'
                            ), 'alpha-alpha-sma', 'alpha-sma'
                        ), 'alpha-small', 'small'
                    )
                    ELSE NULL
                END AS `SELECT(SMA)`
            FROM genetic_11_00
        ) a
    ) a
) a