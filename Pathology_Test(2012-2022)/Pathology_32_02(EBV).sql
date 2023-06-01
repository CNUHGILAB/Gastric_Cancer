SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    EBV,
    `ELSE(EBV)`
FROM(
    SELECT *,
        CASE 
            WHEN (INSTR(REGEXP_SUBSTR(EBV_1, '[^:]+', 1, 2), '(+)') != 0 OR INSTR(REGEXP_SUBSTR(EBV_1, '[^:]+', 1, 2), '(+ ') != 0 OR INSTR(REGEXP_SUBSTR(EBV_1, '[^:]+', 1, 2), ' +)') != 0 OR INSTR(REGEXP_SUBSTR(EBV_1, '[^:]+', 1, 2), '(+,') != 0)
            THEN '+'
            WHEN (INSTR(REGEXP_SUBSTR(EBV_1, '[^:]+',1, 2), '(-)') != 0 OR INSTR(REGEXP_SUBSTR(EBV_1, '[^:]+', 1, 2), '(- ') != 0 OR INSTR(REGEXP_SUBSTR(EBV_1, '[^:]+', 1, 2), ' -)') != 0 OR INSTR(REGEXP_SUBSTR(EBV_1, '[^:]+', 1, 2), '(-,') != 0)
            THEN '-'
            WHEN (INSTR(EBV_2, '(+)') != 0 OR INSTR(EBV_2, '(+ ') != 0 OR INSTR(EBV_2, ' +)') != 0 OR INSTR(EBV_2, '(+,') != 0)
            THEN '+'
            WHEN (INSTR(EBV_2, '(-)') != 0 OR INSTR(EBV_2, '(- ') != 0 OR INSTR(EBV_2, ' -)') != 0 OR INSTR(EBV_2, '(-,') != 0)
            THEN '-'
            ELSE NULL
        END AS EBV
    FROM(
        SELECT *,
            CASE 
                WHEN (NULLIF(`SUBSTR(EBV)`, '') IS NOT NULL AND NULLIF(EBV_1, '') IS NULL AND NULLIF(EBV_2, '') IS NULL)
                THEN `SUBSTR(EBV)`
                ELSE NULL
            END AS `ELSE(EBV)`
        FROM(
            SELECT *,
                CASE 
                    WHEN INSTR(`SUBSTR(EBV)`, ':') != 0
                    THEN `SUBSTR(EBV)`
                    ELSE NULL
                END AS EBV_1,
                CASE 
                    WHEN INSTR(`SUBSTR(EBV)`, ':') = 0
                    THEN `SUBSTR(EBV)`
                    ELSE NULL
                END AS EBV_2
            FROM pathology_32_01
        ) a
    ) a
) a