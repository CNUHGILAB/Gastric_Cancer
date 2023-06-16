SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    EBV
FROM(
    SELECT *,
        CASE 
            WHEN INSTR(REGEXP_SUBSTR(EBV_1, '[^:]+', 1, 2), '(+)') != 0 OR INSTR(REGEXP_SUBSTR(EBV_1, '[^:]+', 1, 2), '(+,') != 0
            THEN '+'
            WHEN INSTR(REGEXP_SUBSTR(EBV_1, '[^:]+', 1, 2), '(-)') != 0 OR INSTR(REGEXP_SUBSTR(EBV_1, '[^:]+', 1, 2), '(-,') != 0
            THEN '-'
            WHEN INSTR(EBV_2, ' (+)') != 0 OR INSTR(EBV_2, ' (+,') != 0 OR INSTR(EBV_2, ' +)') != 0
            THEN '+'
            WHEN INSTR(EBV_2, ' (-)') != 0 OR INSTR(EBV_2, '(-,') != 0 OR INSTR(EBV_2, ' -)') != 0
            THEN '-'
            WHEN INSTR(REGEXP_SUBSTR(EBV_3, '[^:]+', 1, 2), '(+)') != 0
            THEN '+'
            WHEN INSTR(REGEXP_SUBSTR(EBV_3, '[^:]+', 1, 2), '(-)') != 0
            THEN '-'
            WHEN INSTR(REGEXP_SUBSTR(EBV_6, '[^:]+', 1, 2), '(+)') != 0
            THEN '+'
            WHEN INSTR(REGEXP_SUBSTR(EBV_6, '[^:]+', 1, 2), '(-)') != 0
            THEN '-'
            WHEN INSTR(REGEXP_SUBSTR(EBV_7, '[^:]+', 1, 2), '(+)') != 0
            THEN '+'
            WHEN INSTR(REGEXP_SUBSTR(EBV_7, '[^:]+', 1, 2), '(-)') != 0
            THEN '-'
            ELSE NULL
        END AS EBV
    FROM(
        SELECT *,
            CASE 
                WHEN (NULLIF(`SUBSTR(EBV)`, '') IS NOT NULL AND NULLIF(EBV_1, '') IS NULL AND NULLIF(EBV_2, '') IS NULL AND NULLIF(EBV_3, '') IS NULL AND NULLIF(EBV_4, '') IS NULL AND NULLIF(EBV_5, '') IS NULL AND NULLIF(EBV_6, '') IS NULL AND NULLIF(EBV_7, '') IS NULL)
                THEN `SUBSTR(EBV)`
                ELSE NULL
            END AS `ELSE(EBV)`
        FROM(
            SELECT *,
                CASE 
                    WHEN (INSTR(`SUBSTR(EBV)`, 'ebv in situ') != 0 OR INSTR(`SUBSTR(EBV)`, 'ebv-in situ') != 0 OR INSTR(`SUBSTR(EBV)`, 'ebv in stu') != 0) AND INSTR(`SUBSTR(EBV)`, ':') != 0
                    THEN `SUBSTR(EBV)`
                    ELSE NULL
                END AS EBV_1,
                CASE 
                    WHEN (INSTR(`SUBSTR(EBV)`, 'ebv in situ') != 0 OR INSTR(`SUBSTR(EBV)`, 'ebv-in situ') != 0) AND INSTR(`SUBSTR(EBV)`, ':') = 0
                    THEN `SUBSTR(EBV)`
                    ELSE NULL
                END AS EBV_2,
                CASE 
                    WHEN (INSTR(`SUBSTR(EBV)`, 'ebv (') != 0 AND INSTR(`SUBSTR(EBV)`, ':') != 0)
                    THEN `SUBSTR(EBV)`
                    ELSE NULL
                END AS EBV_3,
                CASE 
                    WHEN INSTR(`SUBSTR(EBV)`, 'ebv (') != 0 AND INSTR(`SUBSTR(EBV)`, ':') = 0
                    THEN `SUBSTR(EBV)`
                    ELSE NULL
                END AS EBV_4,
                CASE 
                    WHEN INSTR(`SUBSTR(EBV)`, 'ebv-associated') != 0
                    THEN `SUBSTR(EBV)`
                    ELSE NULL
                END AS EBV_5,
                CASE 
                    WHEN INSTR(`SUBSTR(EBV)`, 'ebv in hybridization') != 0
                    THEN `SUBSTR(EBV)`
                    ELSE NULL
                END AS EBV_6,
                CASE 
                    WHEN INSTR(`SUBSTR(EBV)`, 'ebv in size') != 0
                    THEN `SUBSTR(EBV)`
                    ELSE NULL
                END AS EBV_7
            FROM genetic_14_01
        ) a
    ) a
) a