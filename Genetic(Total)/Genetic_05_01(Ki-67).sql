SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    `SUBSTR(Ki67)_2`
FROM(
    SELECT *,
        CASE 
            WHEN NULLIF(`SUBSTR(Ki67)_1`, '') IS NOT NULL
            THEN REGEXP_SUBSTR(`SUBSTR(Ki67)_1`, '[^\n]+', 1, 1)
            ELSE NULL
        END AS `SUBSTR(Ki67)_2`
    FROM(
        SELECT *,
            CASE 
                WHEN NULLIF(`REPLACE(Ki67)_2`, '') IS NOT NULL
                THEN SUBSTR(`REPLACE(Ki67)_2`, INSTR(`REPLACE(Ki67)_2`, 'ki-67'))
                ELSE NULL
            END AS `SUBSTR(Ki67)_1`
        FROM(
            SELECT *,
                CASE 
                    WHEN NULLIF(`REPLACE(Ki67)_1`, '') IS NOT NULL
                    THEN REPLACE(
                        REPLACE(
                            REGEXP_REPLACE(
                                REGEXP_REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            REPLACE(
                                                REPLACE(
                                                    REPLACE(
                                                        `REPLACE(Ki67)_1`, 'positive', '(+)'
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
                END AS `REPLACE(Ki67)_2`
            FROM(
                SELECT *,
                    CASE 
                        WHEN NULLIF(`SELECT(Ki67)`, '') IS NOT NULL
                        THEN REGEXP_REPLACE(
                            REGEXP_REPLACE(
                                REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            REPLACE(
                                                REPLACE(
                                                    REGEXP_REPLACE(
                                                        `SELECT(Ki67)`, ' {2,}', ' '
                                                    ), 'ki-67 (', 'ki-67: ('
                                                ), 'ki-67 : ', 'ki-67: '
                                            ), 'less than ', '<'
                                        ), '.', ','
                                    ), ';', ':'
                                ), ':{2,}', ':'
                            ), ' {2,}', ' '
                        )
                        ELSE NULL
                    END AS `REPLACE(Ki67)_1`
                FROM(
                    SELECT *,
                        CASE
                            WHEN INSTR(LOWER(병리진단_Ki67), 'ki-67') != 0
                            THEN LOWER(병리진단_Ki67)
                            ELSE NULL
                        END AS `SELECT(Ki67)`
                    FROM genetic_05_00
                ) a
            ) a
        ) a
    ) a
) a