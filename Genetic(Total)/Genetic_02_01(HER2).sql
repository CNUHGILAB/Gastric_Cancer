SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    `SUBSTR(HER2)_2`
FROM(
    SELECT *,
        CASE 
            WHEN NULLIF(`SUBSTR(HER2)_1`, '') IS NOT NULL
            THEN REGEXP_SUBSTR(`SUBSTR(HER2)_1`, '[^\n]+', 1, 1)
            ELSE NULL
        END AS `SUBSTR(HER2)_2`
    FROM(
        SELECT *,
            CASE 
                WHEN NULLIF(`REPLACE(HER2)_2`, '') IS NOT NULL
                THEN SUBSTR(`REPLACE(HER2)_2`, INSTR(`REPLACE(HER2)_2`, 'c-erb-b2'))
                ELSE NULL
            END AS `SUBSTR(HER2)_1`
        FROM(
            SELECT *,
                CASE 
                    WHEN NULLIF(`REPLACE(HER2)_1`, '') IS NOT NULL
                    THEN REPLACE(
                        REPLACE(
                            REGEXP_REPLACE(
                                REGEXP_REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            REPLACE(
                                                REPLACE(
                                                    REPLACE(
                                                        `REPLACE(HER2)_1`, 'positive', '(+)'
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
                END AS `REPLACE(HER2)_2`
            FROM(
                SELECT *,
                    CASE 
                        WHEN NULLIF(`SELECT(HER2)`, '') IS NOT NULL
                        THEN REGEXP_REPLACE(
                            REGEXP_REPLACE(
                                REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            REPLACE(
                                                REGEXP_REPLACE(
                                                    REPLACE(
                                                        REPLACE(
                                                            `SELECT(HER2)`, 'c-erb b2', 'c-erb-b2'
                                                        ), 'c-erbb2', 'c-erb-b2'
                                                    ), ' {2,}', ' '
                                                ), 'c-erb-b2 ', 'c-erb-b2'
                                            ), '(her2/neu)', ''
                                        ), ';', ':'
                                    ), 'c-erb-b2', 'c-erb-b2:'
                                ), ':{2,}', ':'
                            ), ' {2,}', ' '
                        )
                        ELSE NULL
                    END AS `REPLACE(HER2)_1`
                FROM(
                    SELECT *,
                        CASE
                            WHEN INSTR(LOWER(병리진단_HER2), 'c-erb-b2') != 0 OR INSTR(LOWER(병리진단_HER2), 'c-erb b2') != 0 OR INSTR(LOWER(병리진단_HER2), 'c-erbb2') != 0
                            THEN LOWER(병리진단_HER2)
                            ELSE NULL
                        END AS `SELECT(HER2)`
                    FROM genetic_02_00
                ) a
            ) a
        ) a
    ) a
) a