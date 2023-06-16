SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    `Ki-67`,
    `Ki-67 Percent`,
    `ELSE(Ki-67)`
FROM(
    SELECT *,
        CASE 
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(`Ki-67_1`, '[^:]+', 1, 2), '^ [0-9]+') != 0
            THEN REGEXP_SUBSTR(`Ki-67_1`, '[^:]+', 1, 2)
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(`Ki-67_1`, '[^:]+', 1, 2), '^ [(][0-9]+') != 0
            THEN REPLACE(
                REPLACE(
                    REGEXP_SUBSTR(`Ki-67_1`, '[^:]+', 1, 2),
                    '(', ''
                ), ')', ''
            )
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(`Ki-67_1`, '[^:]+', 1, 2), '[,] [0-9]+') != 0
            THEN REPLACE(
                REGEXP_SUBSTR(`Ki-67_1`, '[^,]+', 1, 2),
                ')', ''
            )
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(`Ki-67_2`, '[^:]+', 1, 2), ' [(][0-9]+') != 0
            THEN REPLACE(
                REGEXP_SUBSTR(`Ki-67_2`, '[^(]+', 1, 2),
                ')', ''
            )
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(`Ki-67_3`, '[^:]+', 1, 2), ' [(][0-9]+') != 0
            THEN REPLACE(
                REGEXP_SUBSTR(`Ki-67_3`, '[^(]+', 1, 2),
                ')', ''
            )
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(`Ki-67_3`, '[^:]+', 1, 2), '[,][0-9]+') != 0 OR REGEXP_INSTR(REGEXP_SUBSTR(`Ki-67_3`, '[^:]+', 1, 2), '[,] [0-9]+') != 0
            THEN REPLACE(
                REGEXP_SUBSTR(`Ki-67_3`, '[^,]+', 1, 2),
                ')', ''
            )
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(`Ki-67_5`, '[^:]+', 1, 2), ' [(][0-9]+') != 0
            THEN REPLACE(
                REGEXP_SUBSTR(`Ki-67_5`, '[^(]+', 1, 2),
                ')', ''
            )
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(`Ki-67_5`, '[^:]+', 1, 2), '^ .[0-9]+') != 0 OR REGEXP_INSTR(REGEXP_SUBSTR(`Ki-67_5`, '[^:]+', 1, 2), '^ [0-9]+') != 0
            THEN REGEXP_SUBSTR(`Ki-67_5`, '[^:]+', 1, 2)
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(`Ki-67_5`, '[^:]+', 1, 2), '[,][0-9]+') != 0 OR REGEXP_INSTR(REGEXP_SUBSTR(`Ki-67_5`, '[^:]+', 1, 2), '[,] [0-9]+') != 0
            THEN REPLACE(
                REGEXP_SUBSTR(`Ki-67_5`, '[^,]+', 1, 2),
                ')', ''
            )
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(`Ki-67_6`, '[^:]+', 1, 2), '^ [<|>][0-9]+') != 0 OR REGEXP_INSTR(REGEXP_SUBSTR(`Ki-67_6`, '[^:]+', 1, 2), '^ [0-9]+') != 0
            THEN REGEXP_SUBSTR(`Ki-67_6`, '[^:]+', 1, 2)
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(`Ki-67_6`, '[^:]+', 1, 2), '[A-z]+ [0-9]+') != 0
            THEN SUBSTR(REGEXP_SUBSTR(`Ki-67_6`, '[^:]+', 1, 2), REGEXP_INSTR(REGEXP_SUBSTR(`Ki-67_6`, '[^:]+', 1, 2), ' [0-9]+'))
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(`Ki-67_6`, '[^:]+', 1, 2), '^ [(][0-9]+') != 0
            THEN REPLACE(
                REGEXP_SUBSTR(`Ki-67_6`, '[^(]+', 1, 2),
                SUBSTR(REGEXP_SUBSTR(`Ki-67_6`, '[^:]+', 1, 2), INSTR(REGEXP_SUBSTR(`Ki-67_6`, '[^:]+', 1, 2), ')')),
                ''
            )
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(`Ki-67_6`, '[^:]+', 1, 2), '[)] [<|>][0-9]+') != 0
            THEN SUBSTR(REGEXP_SUBSTR(`Ki-67_6`, '[^:]+', 1, 2), REGEXP_INSTR(REGEXP_SUBSTR(`Ki-67_6`, '[^:]+', 1, 2), '[<|>][0-9]+'))
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(`Ki-67_6`, '[^:]+', 1, 2), '[)] [(][0-9]+') != 0
            THEN REPLACE(
                REPLACE(
                    SUBSTR(REGEXP_SUBSTR(`Ki-67_6`, '[^:]+', 1, 2), REGEXP_INSTR(REGEXP_SUBSTR(`Ki-67_6`, '[^:]+', 1, 2), ' [(][0-9]+')),
                    '(', ''
                ), ')', ''
            )
            WHEN REGEXP_INSTR(`Ki-67_7`, ' [(].[0-9]+') != 0 OR REGEXP_INSTR(`Ki-67_7`, ' [(][0-9]+') != 0
            THEN REPLACE(
                REGEXP_SUBSTR(`Ki-67_7`, '[^(]+', 1, 2),
                ')', ''
            )
            ELSE NULL
        END AS `Ki-67 Percent`
    FROM(
        SELECT *
        FROM(
            SELECT *,
                CASE 
                    WHEN NULLIF(`Ki-67(1)`, '') IS NOT NULL
                    THEN `Ki-67(1)`
                    WHEN NULLIF(`Ki-67(2)`, '') IS NOT NULL
                    THEN `Ki-67(2)`
                    WHEN NULLIF(`Ki-67(3)`, '') IS NOT NULL
                    THEN `Ki-67(3)`
                    ELSE NULL
                END AS `Ki-67`
            FROM(
                SELECT *,
                    CASE 
                        WHEN INSTR(REGEXP_SUBSTR(`Ki-67_1`, '[^:]+', 1, 2), '(+)') != 0 OR INSTR(REGEXP_SUBSTR(`Ki-67_1`, '[^:]+', 1, 2), '(+,') != 0
                        THEN '+'
                        WHEN INSTR(REGEXP_SUBSTR(`Ki-67_1`, '[^:]+', 1, 2), '(-)') != 0 OR INSTR(REGEXP_SUBSTR(`Ki-67_1`, '[^:]+', 1, 2), '(-,') != 0
                        THEN '-'
                        WHEN INSTR(`Ki-67_3`, '(+)') != 0 OR INSTR(`Ki-67_3`, '(+,') != 0 OR INSTR(`Ki-67_3`, '(+ ') != 0
                        THEN '+'
                        WHEN INSTR(`Ki-67_3`, '(-)') != 0 OR INSTR(`Ki-67_3`, '(-,') != 0 OR INSTR(`Ki-67_3`, '(- ') != 0
                        THEN '-'
                        WHEN INSTR(REGEXP_SUBSTR(`Ki-67_5`, '[^:]+', 1, 2), '(+,') != 0
                        THEN '+'
                        WHEN INSTR(REGEXP_SUBSTR(`Ki-67_5`, '[^:]+', 1, 2), '(-,') != 0
                        THEN '-'
                        WHEN INSTR(REGEXP_SUBSTR(`Ki-67_6`, '[^:]+', 1, 2), '(+)') != 0
                        THEN '+'
                        WHEN INSTR(REGEXP_SUBSTR(`Ki-67_6`, '[^:]+', 1, 2), '(-)') != 0
                        THEN '-'
                        ELSE NULL
                    END AS `Ki-67(1)`,
                    CASE 
                        WHEN INSTR(REGEXP_SUBSTR(`Ki-67_1`, '[^:]+', 1, 2), '(++)') != 0 OR INSTR(REGEXP_SUBSTR(`Ki-67_1`, '[^:]+', 1, 2), '(++,') != 0
                        THEN '++'
                        WHEN INSTR(REGEXP_SUBSTR(`Ki-67_1`, '[^:]+', 1, 2), '(--)') != 0 OR INSTR(REGEXP_SUBSTR(`Ki-67_1`, '[^:]+', 1, 2), '(--,') != 0
                        THEN '--'
                        WHEN INSTR(`Ki-67_3`, '(++)') != 0 OR INSTR(`Ki-67_3`, '(++,') != 0 OR INSTR(`Ki-67_3`, '(++ ') != 0
                        THEN '++'
                        WHEN INSTR(`Ki-67_3`, '(--)') != 0 OR INSTR(`Ki-67_3`, '(--,') != 0 OR INSTR(`Ki-67_3`, '(-- ') != 0
                        THEN '--'
                        WHEN INSTR(REGEXP_SUBSTR(`Ki-67_5`, '[^:]+', 1, 2), '(++,') != 0
                        THEN '++'
                        WHEN INSTR(REGEXP_SUBSTR(`Ki-67_5`, '[^:]+', 1, 2), '(--,') != 0
                        THEN '--'
                        WHEN INSTR(REGEXP_SUBSTR(`Ki-67_6`, '[^:]+', 1, 2), '(++)') != 0
                        THEN '++'
                        WHEN INSTR(REGEXP_SUBSTR(`Ki-67_6`, '[^:]+', 1, 2), '(--)') != 0
                        THEN '--'
                        ELSE NULL
                    END AS `Ki-67(2)`,
                    CASE 
                        WHEN INSTR(REGEXP_SUBSTR(`Ki-67_1`, '[^:]+', 1, 2), '(+++)') != 0 OR INSTR(REGEXP_SUBSTR(`Ki-67_1`, '[^:]+', 1, 2), '(+++,') != 0
                        THEN '+++'
                        WHEN INSTR(REGEXP_SUBSTR(`Ki-67_1`, '[^:]+', 1, 2), '(---)') != 0 OR INSTR(REGEXP_SUBSTR(`Ki-67_1`, '[^:]+', 1, 2), '(---,') != 0
                        THEN '---'
                        WHEN INSTR(`Ki-67_3`, '(+++)') != 0 OR INSTR(`Ki-67_3`, '(+++,') != 0 OR INSTR(`Ki-67_3`, '(+++ ') != 0
                        THEN '+++'
                        WHEN INSTR(`Ki-67_3`, '(---)') != 0 OR INSTR(`Ki-67_3`, '(---,') != 0 OR INSTR(`Ki-67_3`, '(--- ') != 0
                        THEN '---'
                        WHEN INSTR(REGEXP_SUBSTR(`Ki-67_5`, '[^:]+', 1, 2), '(+++,') != 0
                        THEN '+++'
                        WHEN INSTR(REGEXP_SUBSTR(`Ki-67_5`, '[^:]+', 1, 2), '(---,') != 0
                        THEN '---'
                        WHEN INSTR(REGEXP_SUBSTR(`Ki-67_6`, '[^:]+', 1, 2), '(+++)') != 0
                        THEN '+++'
                        WHEN INSTR(REGEXP_SUBSTR(`Ki-67_6`, '[^:]+', 1, 2), '(---)') != 0
                        THEN '---'
                        ELSE NULL
                    END AS `Ki-67(3)`
                FROM(
                    SELECT *,
                        CASE 
                            WHEN (NULLIF(`SUBSTR(Ki-67)`, '') IS NOT NULL AND NULLIF(`Ki-67_1`, '') IS NULL AND NULLIF(`Ki-67_2`, '') IS NULL AND NULLIF(`Ki-67_3`, '') IS NULL AND NULLIF(`Ki-67_4`, '') IS NULL AND NULLIF(`Ki-67_5`, '') IS NULL AND NULLIF(`Ki-67_6`, '') IS NULL AND NULLIF(`Ki-67_7`, '') IS NULL)
                            THEN `SUBSTR(Ki-67)`
                            ELSE NULL
                        END AS `ELSE(Ki-67)`
                    FROM(
                        SELECT *,
                            CASE 
                                WHEN INSTR(`SUBSTR(Ki-67)`, 'Ki-67 labeling index') != 0 AND INSTR(`SUBSTR(Ki-67)`, ':') != 0
                                THEN `SUBSTR(Ki-67)`
                                ELSE NULL
                            END AS `Ki-67_1`,
                            CASE 
                                WHEN INSTR(`SUBSTR(Ki-67)`, 'Ki-67 labeling index') != 0 AND INSTR(`SUBSTR(Ki-67)`, ':') = 0
                                THEN `SUBSTR(Ki-67)`
                                ELSE NULL
                            END AS `Ki-67_2`,
                            CASE 
                                WHEN (INSTR(`SUBSTR(Ki-67)`, 'Ki-67 (') != 0 AND INSTR(`SUBSTR(Ki-67)`, ':') = 0)
                                THEN `SUBSTR(Ki-67)`
                                ELSE NULL
                            END AS `Ki-67_3`,
                            CASE 
                                WHEN (INSTR(`SUBSTR(Ki-67)`, 'Ki-67 (') != 0 AND INSTR(`SUBSTR(Ki-67)`, ':') != 0)
                                THEN `SUBSTR(Ki-67)`
                                ELSE NULL
                            END AS `Ki-67_4`,
                            CASE 
                                WHEN INSTR(`SUBSTR(Ki-67)`, 'Ki-67: ') != 0 OR INSTR(`SUBSTR(Ki-67)`, 'Ki-67 : ') != 0
                                THEN `SUBSTR(Ki-67)`
                                ELSE NULL
                            END AS `Ki-67_5`,
                            CASE 
                                WHEN INSTR(`SUBSTR(Ki-67)`, 'Ki-67 index') != 0 AND INSTR(`SUBSTR(Ki-67)`, ':') != 0
                                THEN `SUBSTR(Ki-67)`
                                ELSE NULL
                            END AS `Ki-67_6`,
                            CASE 
                                WHEN INSTR(`SUBSTR(Ki-67)`, 'Ki-67 index') != 0 AND INSTR(`SUBSTR(Ki-67)`, ':') = 0
                                THEN `SUBSTR(Ki-67)`
                                ELSE NULL
                            END AS `Ki-67_7`
                        FROM genetic_05_01
                    ) a
                ) a
            ) a
        ) a
    ) a
) a