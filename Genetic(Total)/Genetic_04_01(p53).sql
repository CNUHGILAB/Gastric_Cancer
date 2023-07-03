SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    `SUBSTR(p53)_2`
FROM(
    SELECT *,
        CASE 
            WHEN NULLIF(`SUBSTR(p53)_1`, '') IS NOT NULL
            THEN REGEXP_SUBSTR(`SUBSTR(p53)_1`, '[^\n]+', 1, 1)
            ELSE NULL
        END AS `SUBSTR(p53)_2`
    FROM(
        SELECT *,
            CASE 
                WHEN NULLIF(`REPLACE(p53)_2`, '') IS NOT NULL
                THEN SUBSTR(`REPLACE(p53)_2`, INSTR(`REPLACE(p53)_2`, 'p53'))
                ELSE NULL
            END AS `SUBSTR(p53)_1`
        FROM(
            SELECT *,
                CASE 
                    WHEN NULLIF(`REPLACE(p53)_1`, '') IS NOT NULL
                    THEN REPLACE(
                        REPLACE(
                            REGEXP_REPLACE(
                                REGEXP_REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            REPLACE(
                                                REPLACE(
                                                    REPLACE(
                                                        `REPLACE(p53)_1`, 'positive', '(+)'
                                                    ), 'negative', '(-)'
                                                ), '3+', '(+++)'
                                            ), '2+', '(++)'
                                        ), '1+', '(+)'
                                    ), '[(]{2,}', '('
                                ), '[)]{2,}', ')'
                            ), '( ', '('
                        ), ' )', ')'
                    )
                    ELSE NULL
                END AS `REPLACE(p53)_2`
            FROM(
                SELECT *,
                    CASE 
                        WHEN NULLIF(`SELECT(p53)`, '') IS NOT NULL
                        THEN REGEXP_REPLACE(
                            REGEXP_REPLACE(
                                REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            REPLACE(
                                                REPLACE(
                                                    REGEXP_REPLACE(
                                                        `SELECT(p53)`, ' {2,}', ' '
                                                    ), 'p53 (', 'p53: ('
                                                ), 'p53 : ', 'p53: '
                                            ), 'less than ', '<'
                                        ), '.', ','
                                    ), ';', ':'
                                ), ':{2,}', ':'
                            ), ' {2,}', ' '
                        )
                        ELSE NULL
                    END AS `REPLACE(p53)_1`
                FROM(
                    SELECT *,
                        CASE
                            WHEN INSTR(LOWER(병리진단_p53), 'p53') != 0
                            THEN LOWER(병리진단_p53)
                            ELSE NULL
                        END AS `SELECT(p53)`
                    FROM genetic_04_00
                ) a
            ) a
        ) a
    ) a
) a