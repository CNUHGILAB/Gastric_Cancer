SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    HER2,
    ELSE_HER2
FROM(
    SELECT *,
        CASE 
            WHEN NULLIF(`HER2(1)`, '') IS NOT NULL
            THEN `HER2(1)`
            WHEN NULLIF(`HER2(2)`, '') IS NOT NULL
            THEN `HER2(2)`
            WHEN NULLIF(`HER2(3)`, '') IS NOT NULL
            THEN `HER2(3)`
            ELSE NULL
        END AS HER2
    FROM(
        SELECT *,
            CASE 
                WHEN REGEXP_INSTR(HER2_1, '[(|)]') != 0 AND INSTR(HER2_1, '(+)') != 0
                THEN '+'
                WHEN REGEXP_INSTR(HER2_1, '[(|)]') != 0 AND INSTR(HER2_1, '(-)') != 0
                THEN '-'
                WHEN REGEXP_INSTR(HER2_2, '[(|)]') != 0 AND INSTR(HER2_2, '(+)') != 0
                THEN '+'
                WHEN REGEXP_INSTR(HER2_2, '[(|)]') != 0 AND INSTR(HER2_2, '(-)') != 0
                THEN '-'
                WHEN INSTR(REGEXP_SUBSTR(HER2_3, '[^:]+', 1, 2), '(+)') != 0
                THEN '+'
                WHEN INSTR(REGEXP_SUBSTR(HER2_3, '[^:]+', 1, 2), '(-)') != 0
                THEN '-'
                ELSE NULL
            END AS `HER2(1)`,
            CASE 
                WHEN REGEXP_INSTR(HER2_1, '[(|)]') != 0 AND (INSTR(HER2_1, '(++)') != 0)
                THEN '++'
                WHEN REGEXP_INSTR(HER2_1, '[(|)]') != 0 AND (INSTR(HER2_1, '(--)') != 0)
                THEN '--'
                WHEN REGEXP_INSTR(HER2_2, '[(|)]') != 0 AND (INSTR(HER2_2, '(++)') != 0)
                THEN '++'
                WHEN REGEXP_INSTR(HER2_2, '[(|)]') != 0 AND (INSTR(HER2_2, '(--)') != 0)
                THEN '--'
                WHEN INSTR(REGEXP_SUBSTR(HER2_3, '[^:]+', 1, 2), '(++)') != 0
                THEN '++'
                WHEN INSTR(REGEXP_SUBSTR(HER2_3, '[^:]+', 1, 2), '(--)') != 0
                THEN '--'
                ELSE NULL
            END AS `HER2(2)`,
            CASE 
                WHEN REGEXP_INSTR(HER2_1, '[(|)]') != 0 AND (INSTR(HER2_1, '(+++)') != 0)
                THEN '+++'
                WHEN REGEXP_INSTR(HER2_1, '[(|)]') != 0 AND (INSTR(HER2_1, '(---)') != 0)
                THEN '---'
                WHEN REGEXP_INSTR(HER2_2, '[(|)]') != 0 AND (INSTR(HER2_2, '(+++)') != 0)
                THEN '+++'
                WHEN REGEXP_INSTR(HER2_2, '[(|)]') != 0 AND (INSTR(HER2_2, '(---)') != 0)
                THEN '---'
                WHEN INSTR(REGEXP_SUBSTR(HER2_3, '[^:]+', 1, 2), '(+++)') != 0
                THEN '+++'
                WHEN INSTR(REGEXP_SUBSTR(HER2_3, '[^:]+', 1, 2), '(---)') != 0
                THEN '---'
                ELSE NULL
            END AS `HER2(3)`
        FROM(
            SELECT *,
                CASE 
                    WHEN NULLIF(ELSE_HER2_2, '') IS NOT NULL AND NULLIF(HER2_3, '') IS NULL
                    THEN ELSE_HER2_2
                    ELSE NULL
                END AS ELSE_HER2
            FROM(
                SELECT *,
                    CASE 
                        WHEN INSTR(ELSE_HER2_2, ':') != 0
                        THEN ELSE_HER2_2
                        ELSE NULL
                    END AS HER2_3
                FROM(
                    SELECT *,
                        CASE 
                            WHEN (NULLIF(ELSE_HER2_1, '') IS NOT NULL AND NULLIF(HER2_2, '') IS NULL)
                            THEN ELSE_HER2_1
                            ELSE NULL
                        END AS ELSE_HER2_2
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (REGEXP_INSTR(ELSE_HER2_1, 'C-erb-B2 [(][A-Z][0-9]+[)]') != 0 OR REGEXP_INSTR(ELSE_HER2_1, 'C-erb-B2 [(][0-9]+[)]') != 0) AND REGEXP_INSTR(ELSE_HER2_1, '[(][-|+]+[)]') != 0
                                THEN ELSE_HER2_1
                                ELSE NULL
                            END AS HER2_2
                        FROM(
                            SELECT *,
                                CASE 
                                    WHEN NULLIF(`SUBSTR(HER2)_2`, '') IS NOT NULL AND NULLIF(HER2_1, '') IS NULL
                                    THEN `SUBSTR(HER2)_2`
                                    ELSE NULL
                                END AS ELSE_HER2_1
                            FROM(
                                SELECT *,
                                    CASE 
                                        WHEN REGEXP_INSTR(`SUBSTR(HER2)_2`, 'C-erb-B2 [(][-|+]+[)]') != 0
                                        THEN `SUBSTR(HER2)_2`
                                        ELSE NULL
                                    END AS HER2_1
                                FROM genetic_02_01
                            ) a
                        ) a
                    ) a
                ) a
            ) a
        ) a
    ) a
) a