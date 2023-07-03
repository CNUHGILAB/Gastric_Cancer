SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    p53,
    `p53 Percent`
FROM(
    SELECT *,
        CASE 
            WHEN NULLIF(p53_P1, '') IS NOT NULL
            THEN REPLACE(
                REGEXP_REPLACE(
                    p53_P1, '^ ', ''
                ), ',', ''
            )
            WHEN NULLIF(p53_P2, '') IS NOT NULL
            THEN REPLACE(
                REPLACE(
                    p53_P2, SUBSTR(p53_P2, INSTR(p53_P2, ')')), ''
                ), '(', ''
            )
            WHEN NULLIF(p53_P3, '') IS NOT NULL
            THEN REPLACE(
                p53_P3, SUBSTR(p53_P3, INSTR(p53_P3, ')')), ''
            )
            ELSE NULL
        END AS `p53 Percent`
    FROM(
        SELECT *,
            CASE 
                WHEN NULLIF(`p53(1)`, '') IS NOT NULL
                THEN `p53(1)`
                WHEN NULLIF(`p53(2)`, '') IS NOT NULL
                THEN `p53(2)`
                WHEN NULLIF(`p53(3)`, '') IS NOT NULL
                THEN `p53(3)`
                WHEN NULLIF(`p53(4)`, '') IS NOT NULL
                THEN `p53(4)`
                ELSE NULL
            END AS p53
        FROM(
            SELECT *,
                CASE 
                    WHEN INSTR(ELSE_p53, '(+)') != 0
                    THEN '+'
                    WHEN INSTR(ELSE_p53, '(-)') != 0
                    THEN '-'
                    WHEN INSTR(ELSE_p53, '(++)') != 0
                    THEN '++'
                    WHEN INSTR(ELSE_p53, '(--)') != 0
                    THEN '--'
                    WHEN INSTR(ELSE_p53, '(+++)') != 0
                    THEN '+++'
                    WHEN INSTR(ELSE_p53, '(---)') != 0
                    THEN '--'
                    ELSE NULL
                END AS `p53(4)`
            FROM(
                SELECT *,
                    CASE 
                        WHEN NULLIF(p53_1, '') IS NOT NULL AND (NULLIF(`p53(1)`, '') IS NULL OR NULLIF(`p53(2)`, '') IS NULL OR NULLIF(`p53(3)`, '') IS NULL)
                        THEN p53_1 
                        ELSE NULL
                    END AS ELSE_p53
                FROM(
                    SELECT *,
                        CASE 
                            WHEN REGEXP_INSTR(p53_1, '^ [(][+][)]') != 0
                            THEN '+'
                            WHEN REGEXP_INSTR(p53_1, '^ [(][-][)]') != 0
                            THEN '-'
                            WHEN INSTR(p53_2, '(+,') != 0
                            THEN '+'
                            WHEN INSTR(p53_2, '(-,') != 0
                            THEN '-'
                            ELSE NULL
                        END AS `p53(1)`,
                        CASE
                            WHEN REGEXP_INSTR(p53_1, '^ [(][+]{2}[)]') != 0
                            THEN '++'
                            WHEN REGEXP_INSTR(p53_1, '^ [(][-]{2}[)]') != 0
                            THEN '--'
                            WHEN INSTR(p53_2, '(++,') != 0
                            THEN '++'
                            WHEN INSTR(p53_2, '(--,') != 0
                            THEN '--'
                            ELSE NULL
                        END AS `p53(2)`,
                        CASE
                            WHEN REGEXP_INSTR(p53_1, '^ [(][+]{3}[)]') != 0
                            THEN '+++'
                            WHEN REGEXP_INSTR(p53_1, '^ [(][-]{3}[)]') != 0
                            THEN '---'
                            WHEN INSTR(p53_2, '(+++,') != 0
                            THEN '+++'
                            WHEN INSTR(p53_2, '(---,') != 0
                            THEN '---'
                            ELSE NULL
                        END AS `p53(3)`
                    FROM(
                        SELECT *,
                            CASE 
                                WHEN NULLIF(ELSE1_p53_P, '') IS NOT NULL AND NULLIF(p53_P3, '') != 0
                                THEN ELSE1_p53_P
                                ELSE NULL
                            END AS ELSE2_p53_P
                        FROM(
                            SELECT *,
                                CASE 
                                    WHEN REGEXP_INSTR(ELSE1_p53_P, '[,][0-9]+') != 0
                                    THEN REPLACE(
                                        SUBSTR(ELSE1_p53_P, REGEXP_INSTR(ELSE1_p53_P, '[,][0-9]+')), ',', ''
                                    )
                                    WHEN REGEXP_INSTR(ELSE1_p53_P, '[,][<|>][0-9]+') != 0
                                    THEN REPLACE(
                                        SUBSTR(ELSE1_p53_P, REGEXP_INSTR(ELSE1_p53_P, '[,][<|>][0-9]+')), ',', ''
                                    )
                                    WHEN REGEXP_INSTR(ELSE1_p53_P, '[,] [0-9]+') != 0
                                    THEN REPLACE(
                                        SUBSTR(ELSE1_p53_P, REGEXP_INSTR(ELSE1_p53_P, '[,] [0-9]+')), ', ', ''
                                    )
                                    WHEN REGEXP_INSTR(ELSE1_p53_P, '[,] [<|>][0-9]+') != 0
                                    THEN REPLACE(
                                        SUBSTR(ELSE1_p53_P, REGEXP_INSTR(ELSE1_p53_P, '[,] [<|>][0-9]+')), ', ', ''
                                    )
                                    ELSE NULL
                                END AS p53_P3
                            FROM(
                                SELECT *,
                                    CASE 
                                        WHEN (NULLIF(`SUBSTR(p53)_2`, '') IS NOT NULL AND NULLIF(p53_1, '') IS NULL AND NULLIF(p53_2, '') IS NULL)
                                        THEN `SUBSTR(p53)_2`
                                        ELSE NULL
                                    END AS ELSE1_p53,
                                    CASE 
                                        WHEN (NULLIF(`SUBSTR(p53)_2`, '') IS NOT NULL AND NULLIF(p53_P1, '') IS NULL AND NULLIF(p53_P2, '') IS NULL)
                                        THEN `SUBSTR(p53)_2`
                                        ELSE NULL
                                    END AS ELSE1_p53_P
                                FROM(
                                    SELECT *,
                                        CASE 
                                            WHEN REGEXP_INSTR(`SUBSTR(p53)_2`, '[(][+|-]+[)]') != 0
                                            THEN REGEXP_SUBSTR(`SUBSTR(p53)_2`, '[^:]+', 1, 2)
                                            ELSE NULL
                                        END AS p53_1,
                                        CASE 
                                            WHEN REGEXP_INSTR(`SUBSTR(p53)_2`, '[(][+|-]+[,]') != 0
                                            THEN REGEXP_SUBSTR(`SUBSTR(p53)_2`, '[^:]+', 1, 2)
                                            ELSE NULL
                                        END AS p53_2,
                                        CASE 
                                            WHEN REGEXP_INSTR(REGEXP_SUBSTR(`SUBSTR(p53)_2`, '[^:]+', 1, 2), '^ [0-9]+') != 0 OR REGEXP_INSTR(REGEXP_SUBSTR(`SUBSTR(p53)_2`, '[^:]+', 1, 2), '^ [<|>][0-9]+') != 0
                                            THEN REGEXP_SUBSTR(`SUBSTR(p53)_2`, '[^:]+', 1, 2)
                                            ELSE NULL
                                        END AS p53_P1,
                                        CASE 
                                            WHEN REGEXP_INSTR(REGEXP_SUBSTR(`SUBSTR(p53)_2`, '[^:]+', 1, 2), '[(][0-9]+') != 0
                                            THEN SUBSTR(`SUBSTR(p53)_2`, REGEXP_INSTR(`SUBSTR(p53)_2`, '[(][0-9]+'))
                                            WHEN REGEXP_INSTR(REGEXP_SUBSTR(`SUBSTR(p53)_2`, '[^:]+', 1, 2), '[(][<|>][0-9]+') != 0
                                            THEN SUBSTR(`SUBSTR(p53)_2`, REGEXP_INSTR(`SUBSTR(p53)_2`, '[(][<|>][0-9]+'))
                                            ELSE NULL
                                        END AS p53_P2
                                    FROM genetic_04_01
                                ) a
                            ) a
                        ) a
                    ) a
                ) a
            ) a
        ) a
    ) a
) a
WHERE (
    p53 IS NOT NULL OR `p53 Percent` IS NOT NULL
)