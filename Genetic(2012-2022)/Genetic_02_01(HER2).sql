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
                WHEN NULLIF(`REPLACE(HER2)_3`, '') IS NOT NULL
                THEN SUBSTR(`REPLACE(HER2)_3`, INSTR(`REPLACE(HER2)_3`, 'C-erb-B2'))
                ELSE NULL
            END AS `SUBSTR(HER2)_1`
        FROM(
            SELECT *,
                CASE 
                    WHEN NULLIF(`REPLACE(HER2)_2`, '') IS NOT NULL
                    THEN REPLACE(
                        REPLACE(
                            REGEXP_REPLACE(
                                REGEXP_REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            REPLACE(
                                                REPLACE(
                                                    REPLACE(
                                                        `REPLACE(HER2)_2`, 'positive', '(+)'
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
                END AS `REPLACE(HER2)_3`
            FROM(
                SELECT *,
                    CASE 
                        WHEN NULLIF(`REPLACE(HER2)_1`, '') IS NOT NULL
                        THEN REGEXP_REPLACE(
                            REPLACE(
                                REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            REPLACE(
                                                replace(
                                                    BINARY `REPLACE(HER2)_1`, SUBSTR(`REPLACE(HER2)_1`, INSTR(`REPLACE(HER2)_1`, '◈ 검사항목')), ''
                                                ), 'c-erb b2', 'C-erb-B2'
                                            ), 'c-erbb2', 'C-erb-B2'
                                        ), 'c-erb-b2', 'C-erb-B2'
                                    ), '(her2/neu)', ''
                                ), ';', ':'
                            ), ' {2,}', ' '
                        )
                        ELSE NULL
                    END AS `REPLACE(HER2)_2`
                FROM(
                    SELECT *,
                        CASE 
                            WHEN NULLIF(`SELECT(HER2)`, '') IS NOT NULL
                            THEN LOWER(`SELECT(HER2)`)
                            ELSE NULL
                        END AS `REPLACE(HER2)_1`
                    FROM(
                        SELECT *,
                            CASE
                                WHEN INSTR(병리진단, 'C-erb-B2') != 0 OR INSTR(병리진단, 'C-erb B2') != 0 OR INSTR(병리진단, 'C-erbB2') != 0
                                #WHEN REGEXP_INSTR(BINARY 병리진단, '[C|c]-erb-[B|b]2') != 0 OR REGEXP_INSTR(BINARY 병리진단, '[C|c]-erb [B|b]2') != 0 OR INSTR(BINARY 병리진단, '[C|c]-erb[B|b]2') != 0
                                THEN 병리진단
                                ELSE NULL
                            END AS `SELECT(HER2)`
                        FROM genetic_01
                    ) a
                ) a
            ) a
        ) a
    ) a
) a