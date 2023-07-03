SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    `E-Cadherin`,
    `E-Cadherin Comment`
    #`ELSE(E-Cadherin)`
FROM(
    SELECT *,
        CASE 
            WHEN NULLIF(ELSE_ECadherin1, '') IS NOT NULL
            THEN REPLACE(
                REPLACE(
                    REGEXP_SUBSTR(ELSE_ECadherin1, '[^:]+', 1, 2), SUBSTR(ELSE_ECadherin1, INSTR(ELSE_ECadherin1, ')')), ''
                ), '(', ''
            )
            WHEN NULLIF(ELSE_ECadherin2, '') IS NOT NULL
            THEN REGEXP_REPLACE(
                REPLACE(
                    REPLACE(
                        REGEXP_SUBSTR(ELSE_ECadherin2, '[^:]+', 1, 2), SUBSTR(ELSE_ECadherin2, INSTR(ELSE_ECadherin2, ')')), ''
                    ), '(', ''
                ), '^ ', ''
            )
            WHEN NULLIF(ELSE1_ECadherin, '') IS NOT NULL
            THEN REGEXP_REPLACE(
                REGEXP_SUBSTR(ELSE1_ECadherin, '[^:]+', 1, 2), '[,|.]', ''
            )
            WHEN NULLIF(ELSE1_ECadherin, '') IS NOT NULL
            THEN REGEXP_REPLACE(
                REGEXP_REPLACE(
                    REGEXP_SUBSTR(ELSE1_ECadherin, '[^:]+', 1, 2), '^ ', ''
                ), '[,|.]', ''
            )
            ELSE NULL
        END AS `E-Cadherin Comment`
    FROM(
        SELECT *,
            CASE 
                WHEN NULLIF(ECadherin1, '') IS NOT NULL AND NULLIF(`E-Cadherin`, '') IS NULL
                THEN ECadherin1
                ELSE NULL
            END AS ELSE_ECadherin1,
            CASE 
                WHEN NULLIF(ECadherin2, '') IS NOT NULL AND NULLIF(`E-Cadherin`, '') IS NULL
                THEN ECadherin2
                ELSE NULL
            END AS ELSE_ECadherin2,
            CASE 
                WHEN REGEXP_INSTR(ELSE_ECadherin, 'e[-]cadherin[:][A-z]+') != 0
                THEN ELSE_ECadherin
                ELSE NULL
            END AS ELSE1_ECadherin,
            CASE 
                WHEN REGEXP_INSTR(ELSE_ECadherin, 'e[-]cadherin[:] [A-z]+') != 0
                THEN ELSE_ECadherin
                ELSE NULL
            END AS ELSE2_ECadherin
        FROM(
            SELECT *,
                CASE 
                    WHEN INSTR(ECadherin1, 'e-cadherin:(+)') != 0 OR INSTR(ECadherin1, 'e-cadherin:(+,') != 0
                    THEN '+'
                    WHEN INSTR(ECadherin1, 'e-cadherin:(-)') != 0 OR INSTR(ECadherin1, 'e-cadherin:(-,') != 0
                    THEN '-'
                    WHEN INSTR(ECadherin2, 'e-cadherin: (+)') != 0 OR INSTR(ECadherin2, 'e-cadherin: (+,') != 0
                    THEN '+'
                    WHEN INSTR(ECadherin2, 'e-cadherin: (-)') != 0 OR INSTR(ECadherin2, 'e-cadherin: (-,') != 0
                    THEN '-'
                    WHEN INSTR(ECadherin1, 'e-cadherin:(++)') != 0 OR INSTR(ECadherin1, 'e-cadherin:(++,') != 0
                    THEN '++'
                    WHEN INSTR(ECadherin1, 'e-cadherin:(--)') != 0 OR INSTR(ECadherin1, 'e-cadherin:(--,') != 0
                    THEN '--'
                    WHEN INSTR(ECadherin2, 'e-cadherin: (++)') != 0 OR INSTR(ECadherin2, 'e-cadherin: (++,') != 0
                    THEN '++'
                    WHEN INSTR(ECadherin2, 'e-cadherin: (--)') != 0 OR INSTR(ECadherin2, 'e-cadherin: (--,') != 0
                    THEN '--'
                    WHEN INSTR(ECadherin1, 'e-cadherin:(+++)') != 0 OR INSTR(ECadherin1, 'e-cadherin:(+++,') != 0
                    THEN '+++'
                    WHEN INSTR(ECadherin1, 'e-cadherin:(---)') != 0 OR INSTR(ECadherin1, 'e-cadherin:(---,') != 0
                    THEN '---'
                    WHEN INSTR(ECadherin2, 'e-cadherin: (+++)') != 0 OR INSTR(ECadherin2, 'e-cadherin: (+++,') != 0
                    THEN '+++'
                    WHEN INSTR(ECadherin2, 'e-cadherin: (---)') != 0 OR INSTR(ECadherin2, 'e-cadherin: (---,') != 0
                    THEN '---'
                    ELSE NULL
                END AS `E-Cadherin`
            FROM(
                SELECT *,
                    CASE 
                        WHEN NULLIF(`SUBSTR(ECadherin)_2`, '') IS NOT NULL AND NULLIF(ECadherin1, '') IS NULL AND NULLIF(ECadherin2, '') IS NULL
                        THEN `SUBSTR(ECadherin)_2`
                        ELSE NULL
                    END AS ELSE_ECadherin
                FROM(
                    SELECT *,
                        CASE 
                            WHEN INSTR(`SUBSTR(ECadherin)_2`, 'e-cadherin:(') != 0
                            THEN `SUBSTR(ECadherin)_2`
                            ELSE NULL
                        END AS ECadherin1,
                        CASE 
                            WHEN INSTR(`SUBSTR(ECadherin)_2`, 'e-cadherin: (') != 0
                            THEN `SUBSTR(ECadherin)_2`
                            ELSE NULL
                        END AS ECadherin2
                    FROM genetic_03_01
                ) a
            ) a
        ) a
    ) a
) a
WHERE (
    `E-Cadherin` IS NOT NULL OR `E-Cadherin Comment` IS NOT NULL
)