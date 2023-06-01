SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    HER2
FROM(
    SELECT *
    FROM(
        SELECT *
            /*
            CASE 
                WHEN NULLIF(HER2_1, '') IS NOT NULL
                THEN REPLACE(
                    REGEXP_REPLACE(
                        REGEXP_REPLACE(
                            HER2_1, '[C|c]-erb-B2 :', ''
                        ), '[C|c]-erb-B2:', ''
                    ), VALUE_HER2, ''
                )
                WHEN NULLIF(HER2_2, '') IS NOT NULL
                THEN REPLACE(
                    REGEXP_REPLACE(
                        HER2_2, '[C|c]-erb-B2 ', ''
                    ), VALUE_HER2, ''
                )
                WHEN NULLIF(HER2_3, '') IS NOT NULL
                THEN NULL
                WHEN REGEXP_INSTR(HER2_4, '[C|c]-erb-B2,') = 0
                THEN REPLACE(
                    REGEXP_REPLACE(
                        HER2_4, '[C|c]-erb-B2 ', ''
                    ), VALUE_HER2, ''
                )
                ELSE NULL
            END AS HER2_COMMENT_1
            */
        FROM(
            SELECT *,
                CASE 
                    WHEN (INSTR(HER2_1, '(+)') != 0 OR INSTR(HER2_2, '(+)') != 0 OR INSTR(HER2_3, '(+)') != 0 OR INSTR(HER2_4, '(+)') != 0)
                    THEN '+'
                    WHEN (INSTR(HER2_1, '(++)') != 0 OR INSTR(HER2_2, '(++)') != 0 OR INSTR(HER2_3, '(++)') != 0 OR INSTR(HER2_4, '(++)') != 0)
                    THEN '++'
                    WHEN (INSTR(HER2_1, '(+++)') != 0 OR INSTR(HER2_2, '(+++)') != 0 OR INSTR(HER2_3, '(+++)') != 0 OR INSTR(HER2_4, '(+++)') != 0)
                    THEN '+++'
                    WHEN (INSTR(HER2_1, '(-)') != 0 OR INSTR(HER2_2, '(-)') != 0 OR INSTR(HER2_3, '(-)') != 0 OR INSTR(HER2_4, '(-)') != 0)
                    THEN '-'
                    WHEN (INSTR(HER2_1, '(--)') != 0 OR INSTR(HER2_2, '(--)') != 0 OR INSTR(HER2_3, '(--)') != 0 OR INSTR(HER2_4, '(--)') != 0)
                    THEN '--'
                    WHEN (INSTR(HER2_1, '(---)') != 0 OR INSTR(HER2_2, '(---)') != 0 OR INSTR(HER2_3, '(---)') != 0 OR INSTR(HER2_4, '(---)') != 0)
                    THEN '---'
                    ELSE NULL
                END AS HER2
            FROM(
                SELECT *,
                    CASE 
                        WHEN NULLIF(ELSE_HER2_2, '') IS NOT NULL
                        THEN ELSE_HER2_2
                        ELSE NULL
                    END AS HER2_4
                FROM(
                    SELECT *,
                        CASE 
                            WHEN NULLIF(ELSE_HER2_1, '') IS NOT NULL AND NULLIF(HER2_3, '') IS NULL
                            THEN ELSE_HER2_1
                            ELSE NULL
                        END AS ELSE_HER2_2
                    FROM(
                        SELECT *,
                            CASE 
                                WHEN REGEXP_INSTR(ELSE_HER2_1, 'C-erb-B2 [(][A-Z][0-9]+[)]') != 0 OR REGEXP_INSTR(ELSE_HER2_1, 'C-erb-B2 [(][0-9]+[)]') != 0
                                THEN ELSE_HER2_1
                                ELSE NULL
                            END AS HER2_3
                        FROM(
                            SELECT *,
                                CASE 
                                    WHEN (NULLIF(`SUBSTR(HER2)_2`, '') IS NOT NULL AND NULLIF(HER2_1, '') IS NULL AND NULLIF(HER2_2, '') IS NULL)
                                    THEN `SUBSTR(HER2)_2`
                                    ELSE NULL
                                END AS ELSE_HER2_1
                            FROM(
                                SELECT *,
                                    CASE 
                                        WHEN (REGEXP_INSTR(`SUBSTR(HER2)_2`, 'C-erb-B2 :') != 0 OR REGEXP_INSTR(`SUBSTR(HER2)_2`, 'C-erb-B2:') != 0)
                                        THEN `SUBSTR(HER2)_2`
                                        ELSE NULL
                                    END AS HER2_1,
                                    CASE 
                                        WHEN REGEXP_INSTR(`SUBSTR(HER2)_2`, 'C-erb-B2 [(][-|+]+[)]') != 0
                                        THEN `SUBSTR(HER2)_2`
                                        ELSE NULL
                                    END AS HER2_2
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
                                                THEN SUBSTR(`REPLACE(HER2)_2`, INSTR(`REPLACE(HER2)_2`, 'C-erb-B2'))
                                                ELSE NULL
                                            END AS `SUBSTR(HER2)_1`
                                        FROM(
                                            SELECT *,
                                                CASE 
                                                    WHEN NULLIF(`REPLACE(HER2)_1`, '') IS NOT NULL
                                                    THEN REPLACE(
                                                        REPLACE(
                                                            REPLACE(
                                                                REPLACE(
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
                                                                    ), '((', '('
                                                                ), '))', ')'
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
                                                                REGEXP_REPLACE(
                                                                    REPLACE(
                                                                        REPLACE(
                                                                            BINARY `SELECT(HER2)`, SUBSTR(`SELECT(HER2)`, INSTR(`SELECT(HER2)`, '◈ 검사항목')), ''
                                                                        ), '[C|c]-erb B2', 'C-erb-B2'
                                                                    ), ';', ':'
                                                                ), '[C|c]-erbB2', 'C-erb-B2'
                                                            ), ' {2,}', ' '
                                                        )
                                                        ELSE NULL
                                                    END AS `REPLACE(HER2)_1`
                                                FROM(
                                                    SELECT *,
                                                        CASE
                                                            WHEN REGEXP_INSTR(BINARY 병리진단, '[C|c]-erb-[B|b]2') != 0 OR REGEXP_INSTR(BINARY 병리진단, '[C|c]-erb [B|b]2') != 0 OR INSTR(BINARY 병리진단, '[C|c]-erb[B|b]2') != 0
                                                            THEN 병리진단
                                                            ELSE NULL
                                                        END AS `SELECT(HER2)`
                                                    FROM pathology_01
                                                ) a
                                            ) a
                                        ) a
                                    ) a
                                ) a
                            ) a
                        ) a
                    ) a
                ) a
            ) a
        ) a
    ) a
) a