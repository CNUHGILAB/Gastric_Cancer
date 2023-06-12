SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    p53,
    p53_Comment,
    p53_Percent,
    `ELSE(p53)`
FROM(
    SELECT *,
        CASE 
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(p53_1, '[^:]+', 1, 2), '^ [0-9]+..') != 0 OR REGEXP_INSTR(REGEXP_SUBSTR(p53_1, '[^:]+', 1, 2), '^[0-9]+..') != 0
            THEN REGEXP_SUBSTR(p53_1, '[^:]+', 1, 2)
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(p53_1, '[^:]+', 1, 2), '^ .[0-9]+..') != 0 OR REGEXP_INSTR(REGEXP_SUBSTR(p53_1, '[^:]+', 1, 2), '^.[0-9]+..') != 0
            THEN REPLACE(
                REPLACE(
                    REGEXP_SUBSTR(p53_1, '[^:]+', 1, 2),
                    '(',
                    ''
                ), ')', ''
            )
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(p53_1, '[^:]+', 1, 2), '[,] [0-9]+..$') != 0
            THEN REPLACE(
                REGEXP_SUBSTR(p53_1, '[^,]+', 1, 2),
                ')',
                ''
            )
            WHEN REGEXP_INSTR(p53_2, '[,] [0-9]+.. ') != 0
            THEN REPLACE(
                REGEXP_SUBSTR(p53_2, '[^,]+', 1, 2),
                SUBSTR(REGEXP_SUBSTR(p53_2, '[^,]+', 1, 2), INSTR(REGEXP_SUBSTR(p53_2, '[^,]+', 1, 2), ')')),
                ''
            )
            WHEN REGEXP_INSTR(p53_2, '[(].[0-9]+..$') != 0 OR REGEXP_INSTR(p53_2, '[(][0-9]+..$') != 0
            THEN REPLACE(
                REGEXP_SUBSTR(p53_2, '[^(]+', 1, 2),
                SUBSTR(REGEXP_SUBSTR(p53_2, '[^(]+', 1, 2), INSTR(REGEXP_SUBSTR(p53_2, '[^(]+', 1, 2), ')')),
                ''
            )
            WHEN REGEXP_INSTR(p53_2, '[,] .[0-9]+..$') != 0 OR REGEXP_INSTR(p53_2, '[,].[0-9]+..$') != 0
                OR REGEXP_INSTR(p53_2, '[,] [0-9]+..$') != 0 OR REGEXP_INSTR(p53_2, '[,][0-9]+..$') != 0
            THEN REPLACE(
                REGEXP_SUBSTR(p53_2, '[^,]+', 1, 2),
                SUBSTR(REGEXP_SUBSTR(p53_2, '[^,]+', 1, 2), INSTR(REGEXP_SUBSTR(p53_2, '[^,]+', 1, 2), ')')),
                ''
            )
            WHEN REGEXP_INSTR(p53_2, '[,] .[0-9]+.[,]') != 0 OR REGEXP_INSTR(p53_2, '[,].[0-9]+.[,]') != 0
                OR REGEXP_INSTR(p53_2, '[,] [0-9]+.[,]') != 0 OR REGEXP_INSTR(p53_2, '[,][0-9]+.[,]') != 0
            THEN REGEXP_SUBSTR(p53_2, '[^,]+', 1, 2)
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), '^ [(].[0-9]+..$') != 0 OR REGEXP_INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), '^ [(][0-9]+..$') != 0
            THEN REPLACE(
                REPLACE(
                    REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2),
                    '(',
                    ''
                ), ')', ''
            )
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), '[(|)]') = 0 AND (REGEXP_INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), '^ .[0-9]+.') != 0 OR REGEXP_INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), '^ [0-9]+.') != 0)
            THEN REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2)
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), '^ [(][0-9]+.[)]$') != 0
            THEN REPLACE(
                REPLACE(
                    REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), '(', ''
                ), ')', ''
            )
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), '[,] .[0-9]+.[)][(]') != 0 OR REGEXP_INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), '[,] .[0-9]+.[)] [(]') != 0
            THEN REPLACE(
                REGEXP_SUBSTR(p53_4, '[^,]+', 1, 2),
                SUBSTR(REGEXP_SUBSTR(p53_4, '[^,]+', 1, 2), INSTR(REGEXP_SUBSTR(p53_4, '[^,]+', 1, 2), ')')),
                ''
            )
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), '[,] .[0-9]+.[)]$') != 0 OR REGEXP_INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), '[,].[0-9]+.[)]$') != 0
                OR REGEXP_INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), '[,] [0-9]+.[)]$') != 0 OR REGEXP_INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), '[,][0-9]+.[)]$') != 0
            THEN REPLACE(
                REGEXP_SUBSTR(p53_4, '[^,]+', 1, 2),
                SUBSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), ')')),
                ''
            )
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), '[A-z]+ [(].[0-9]+.[)]') != 0
            THEN REPLACE(
                REPLACE(
                    SUBSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), REGEXP_INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), ' [(].[0-9]+.[)]')),
                    '(', ''
                ), ')', ''
            )
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), '[,] .[0-9]+ .') != 0
            THEN REGEXP_SUBSTR(p53_4, '[^,]+', 1, 2)
            ELSE NULL
        END AS p53_Percent
    FROM(
        SELECT *,
            CASE 
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(p53_1, '[^:]+', 1, 2), '[(][A-z]+') != 0
                THEN REPLACE(
                    REGEXP_SUBSTR(REGEXP_SUBSTR(p53_1, '[^:]+', 1, 2), '[^(]+', 1, 2),
                    SUBSTR(REGEXP_SUBSTR(p53_1, '[^:]+', 1, 2), INSTR(REGEXP_SUBSTR(p53_1, '[^:]+', 1, 2), ')')),
                    ''
                )
                WHEN REGEXP_INSTR(p53_2, 'p53 [(][A-z]+') != 0 AND REGEXP_INSTR(p53_2, '[(][A-z]+[0-9]+[)]') = 0
                THEN REPLACE(
                    REGEXP_SUBSTR(p53_2, '[^(]+', 1, 2),
                    SUBSTR(p53_2, INSTR(p53_2, ')')),
                    ''
                )
                WHEN REGEXP_INSTR(p53_2, '[,] [A-z]+') != 0
                THEN REPLACE(
                    SUBSTR(p53_2, REGEXP_INSTR(p53_2, ' [A-z]+')),
                    SUBSTR(SUBSTR(p53_2, REGEXP_INSTR(p53_2, ' [A-z]+')), INSTR(SUBSTR(p53_2, REGEXP_INSTR(p53_2, ' [A-z]+')), ')')),
                    ''
                )
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(p53_3, '[^:]+', 1, 2), '[(][A-z]+') != 0
                THEN REPLACE(
                    REGEXP_SUBSTR(REGEXP_SUBSTR(p53_3, '[^:]+', 1, 2), '[^(]+', 1, 2),
                    SUBSTR(REGEXP_SUBSTR(p53_3, '[^:]+', 1, 2), INSTR(REGEXP_SUBSTR(p53_3, '[^:]+', 1, 2), ')')),
                    ''
                )
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), '[,] [A-z]+') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(p53_4, '[^,]+', 1, 2), '[A-z]+[)]') != 0
                THEN REPLACE(
                    REGEXP_SUBSTR(REGEXP_SUBSTR(p53_4, '[^(]+', 1, 2), '[^,]+', 1, 2),
                    SUBSTR(p53_4, INSTR(p53_4, ')')),
                    ''
                )
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), '[,] [A-z]+') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(p53_4, '[^,]+', 1, 2), '[A-z]+[)]') = 0
                THEN REPLACE(
                    SUBSTR(p53_4, REGEXP_INSTR(p53_4, '[,] [A-z]+')),
                    ',',
                    ''
                )
                ELSE NULL
            END AS p53_Comment
        FROM(
            SELECT *,
                CASE 
                    WHEN NULLIF(`p53(1)`, '') IS NOT NULL
                    THEN `p53(1)`
                    WHEN NULLIF(`p53(2)`, '') IS NOT NULL
                    THEN `p53(2)`
                    WHEN NULLIF(`p53(3)`, '') IS NOT NULL
                    THEN `p53(3)`
                    ELSE NULL
                END AS p53
            FROM(
                SELECT *,
                    CASE 
                        WHEN INSTR(REGEXP_SUBSTR(p53_1, '[^:]+', 1, 2), '(+)') != 0 OR INSTR(REGEXP_SUBSTR(p53_1, '[^:]+', 1, 2), '(+,') != 0
                        THEN '+'
                        WHEN INSTR(REGEXP_SUBSTR(p53_1, '[^:]+', 1, 2), '(-)') != 0 OR INSTR(REGEXP_SUBSTR(p53_1, '[^:]+', 1, 2), '(-,') != 0
                        THEN '-'
                        WHEN INSTR(p53_2, 'p53 (+)') != 0 OR INSTR(p53_2, '(+,') != 0
                        THEN '+'
                        WHEN INSTR(p53_2, 'p53 (-)') != 0 OR INSTR(p53_2, '(-,') != 0
                        THEN '-'
                        WHEN INSTR(REGEXP_SUBSTR(p53_3, '[^:]+', 1, 2), '(+)') != 0 OR INSTR(REGEXP_SUBSTR(p53_3, '[^:]+', 1, 2), '(+,') != 0
                        THEN '+'
                        WHEN INSTR(REGEXP_SUBSTR(p53_3, '[^:]+', 1, 2), '(-)') != 0 OR INSTR(REGEXP_SUBSTR(p53_3, '[^:]+', 1, 2), '(-,') != 0
                        THEN '-'
                        WHEN INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), '(+)') != 0 OR INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), '(+,') != 0 OR INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), ' +,') != 0
                        THEN '+'
                        WHEN INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), '(-)') != 0 OR INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), '(-,') != 0 OR INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), ' -,') != 0
                        THEN '-'
                        WHEN INSTR(REGEXP_SUBSTR(p53_5, '[^:]+', 1, 2), '(+)') != 0
                        THEN '+'
                        WHEN INSTR(REGEXP_SUBSTR(p53_5, '[^:]+', 1, 2), '(-)') != 0
                        THEN '-'
                        ELSE NULL
                    END AS `p53(1)`,
                    CASE 
                        WHEN INSTR(REGEXP_SUBSTR(p53_1, '[^:]+', 1, 2), '(++)') != 0 OR INSTR(REGEXP_SUBSTR(p53_1, '[^:]+', 1, 2), '(++,') != 0
                        THEN '++'
                        WHEN INSTR(REGEXP_SUBSTR(p53_1, '[^:]+', 1, 2), '(--)') != 0 OR INSTR(REGEXP_SUBSTR(p53_1, '[^:]+', 1, 2), '(--,') != 0
                        THEN '--'
                        WHEN INSTR(p53_2, 'p53 (++)') != 0 OR INSTR(p53_2, '(++,') != 0
                        THEN '++'
                        WHEN INSTR(p53_2, 'p53 (--)') != 0 OR INSTR(p53_2, '(--,') != 0
                        THEN '--'
                        WHEN INSTR(REGEXP_SUBSTR(p53_3, '[^:]+', 1, 2), '(++)') != 0 OR INSTR(REGEXP_SUBSTR(p53_3, '[^:]+', 1, 2), '(++,') != 0
                        THEN '++'
                        WHEN INSTR(REGEXP_SUBSTR(p53_3, '[^:]+', 1, 2), '(--)') != 0 OR INSTR(REGEXP_SUBSTR(p53_3, '[^:]+', 1, 2), '(--,') != 0
                        THEN '--'
                        WHEN INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), '(++)') != 0 OR INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), '(++,') != 0 OR INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), ' ++,') != 0
                        THEN '++'
                        WHEN INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), '(--)') != 0 OR INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), '(--,') != 0 OR INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), ' --,') != 0
                        THEN '--'
                        WHEN INSTR(REGEXP_SUBSTR(p53_5, '[^:]+', 1, 2), '(++)') != 0
                        THEN '++'
                        WHEN INSTR(REGEXP_SUBSTR(p53_5, '[^:]+', 1, 2), '(--)') != 0
                        THEN '--'
                        ELSE NULL
                    END AS `p53(2)`,
                    CASE 
                        WHEN INSTR(REGEXP_SUBSTR(p53_1, '[^:]+', 1, 2), '(+++)') != 0 OR INSTR(REGEXP_SUBSTR(p53_1, '[^:]+', 1, 2), '(+++') != 0
                        THEN '+++'
                        WHEN INSTR(REGEXP_SUBSTR(p53_1, '[^:]+', 1, 2), '(---)') != 0 OR INSTR(REGEXP_SUBSTR(p53_1, '[^:]+', 1, 2), '(---') != 0
                        THEN '---'
                        WHEN INSTR(p53_2, 'p53 (+++)') != 0 OR INSTR(p53_2, '(+++,') != 0
                        THEN '+++'
                        WHEN INSTR(p53_2, 'p53 (---)') != 0 OR INSTR(p53_2, '(---,') != 0
                        THEN '---'
                        WHEN INSTR(REGEXP_SUBSTR(p53_3, '[^:]+', 1, 2), '(+++)') != 0 OR INSTR(REGEXP_SUBSTR(p53_3, '[^:]+', 1, 2), '(+++,') != 0
                        THEN '+++'
                        WHEN INSTR(REGEXP_SUBSTR(p53_3, '[^:]+', 1, 2), '(---)') != 0 OR INSTR(REGEXP_SUBSTR(p53_3, '[^:]+', 1, 2), '(---,') != 0
                        THEN '---'
                        WHEN INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), '(+++)') != 0 OR INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), '(+++,') != 0 OR INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), ' +++,') != 0
                        THEN '+++'
                        WHEN INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), '(---)') != 0 OR INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), '(---,') != 0 OR INSTR(REGEXP_SUBSTR(p53_4, '[^:]+', 1, 2), ' ---,') != 0
                        THEN '---'
                        WHEN INSTR(REGEXP_SUBSTR(p53_5, '[^:]+', 1, 2), '(+++)') != 0
                        THEN '+++'
                        WHEN INSTR(REGEXP_SUBSTR(p53_5, '[^:]+', 1, 2), '(---)') != 0
                        THEN '---'
                        ELSE NULL
                    END AS `p53(3)`
                FROM(
                    SELECT *,
                        CASE 
                            WHEN (NULLIF(`SUBSTR(p53)`, '') IS NOT NULL AND NULLIF(p53_1, '') IS NULL AND NULLIF(p53_2, '') IS NULL AND NULLIF(p53_3, '') IS NULL AND NULLIF(p53_4, '') IS NULL AND NULLIF(p53_5, '') IS NULL)
                            THEN `SUBSTR(p53)`
                            ELSE NULL
                        END AS `ELSE(p53)`
                    FROM(
                        SELECT *,
                            CASE 
                                WHEN INSTR(`SUBSTR(p53)`, 'p53 labeling index') != 0
                                THEN `SUBSTR(p53)`
                                ELSE NULL
                            END AS p53_1,
                            CASE 
                                WHEN (INSTR(`SUBSTR(p53)`, 'p53 (') != 0 AND INSTR(`SUBSTR(p53)`, ':') = 0)
                                THEN `SUBSTR(p53)`
                                ELSE NULL
                            END AS p53_2,
                            CASE 
                                WHEN (INSTR(`SUBSTR(p53)`, 'p53 (') != 0 AND INSTR(`SUBSTR(p53)`, ':') != 0)
                                THEN `SUBSTR(p53)`
                                ELSE NULL
                            END AS p53_3,
                            CASE 
                                WHEN INSTR(`SUBSTR(p53)`, 'p53: ') != 0 OR INSTR(`SUBSTR(p53)`, 'p53 : ') != 0
                                THEN `SUBSTR(p53)`
                                ELSE NULL
                            END AS p53_4,
                            CASE 
                                WHEN INSTR(`SUBSTR(p53)`, 'p53 &') != 0
                                THEN `SUBSTR(p53)`
                                ELSE NULL
                            END AS p53_5
                        FROM genetic_04_01
                    ) a
                ) a
            ) a
        ) a
    ) a
) a