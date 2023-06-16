SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    `E-Cadherin`,
    `E-Cadherin Comment`,
    `ELSE(E-Cadherin)`
FROM(
    SELECT *,
        CASE 
            WHEN REGEXP_INSTR(`E-Cadherin1`, '[(][+|-]+[,]') != 0
            THEN REPLACE(
                REGEXP_SUBSTR(`E-Cadherin1`, '[^,]+', 1, 2),
                SUBSTR(`E-Cadherin1`, INSTR(`E-Cadherin1`, ')')),
                ''
            )
            WHEN NULLIF(`E-Cadherin2`, '') IS NOT NULL
            THEN REPLACE(
                REPLACE(
                    SUBSTR(`E-Cadherin2`, INSTR(`E-Cadherin2`, '(')), '(', ''
                ), ')', ''
            )
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(`E-Cadherin3`, '[^:]+', 1, 2), '[(][+|-]+[,]') != 0
            THEN REPLACE(
                REGEXP_SUBSTR(`E-Cadherin3`, '[^,]+', 1, 2),
                SUBSTR(`E-Cadherin3`, INSTR(`E-Cadherin3`, ')')),
                ''
            )
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(`E-Cadherin4`, '[^:]+', 1, 2), '^ [(]') != 0
            THEN REPLACE(
                REPLACE(
                    SUBSTR(REGEXP_SUBSTR(`E-Cadherin4`, '[^:]+', 1, 2), INSTR(REGEXP_SUBSTR(`E-Cadherin4`, '[^:]+', 1, 2), '(')), '(', ''
                ), ')', ''
            )
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(`E-Cadherin4`, '[^:]+', 1, 2), '^ [(]') = 0
            THEN REGEXP_SUBSTR(`E-Cadherin4`, '[^:]+', 1, 2)
            ELSE NULL
        END AS `E-Cadherin Comment`
    FROM(
        SELECT *,
            CASE 
                WHEN NULLIF(`E-Cadherin(1)`, '') IS NOT NULL
                THEN `E-Cadherin(1)`
                WHEN NULLIF(`E-Cadherin(2)`, '') IS NOT NULL
                THEN `E-Cadherin(2)`
                WHEN NULLIF(`E-Cadherin(3)`, '') IS NOT NULL
                THEN `E-Cadherin(3)`
                ELSE NULL
            END AS `E-Cadherin`
        FROM(
            SELECT *,
                CASE 
                    WHEN INSTR(`E-Cadherin1`, '(+)') != 0 OR INSTR(`E-Cadherin1`, '(+,') != 0
                    THEN '+'
                    WHEN INSTR(`E-Cadherin1`, '(-)') != 0 OR INSTR(`E-Cadherin1`, '(-,') != 0
                    THEN '-'
                    WHEN INSTR(REGEXP_SUBSTR(`E-Cadherin3`, '[^:]+', 1, 2), '(+)') != 0 OR INSTR(REGEXP_SUBSTR(`E-Cadherin3`, '[^:]+', 1, 2), '(+,') != 0
                    THEN '+'
                    WHEN INSTR(REGEXP_SUBSTR(`E-Cadherin3`, '[^:]+', 1, 2), '(-)') != 0 OR INSTR(REGEXP_SUBSTR(`E-Cadherin3`, '[^:]+', 1, 2), '(-,') != 0
                    THEN '-'
                    ELSE NULL
                END AS `E-Cadherin(1)`,
                CASE 
                    WHEN INSTR(`E-Cadherin1`, '(++)') != 0 OR INSTR(`E-Cadherin1`, '(++,') != 0
                    THEN '++'
                    WHEN INSTR(`E-Cadherin1`, '(--)') != 0 OR INSTR(`E-Cadherin1`, '(--,') != 0
                    THEN '--'
                    WHEN INSTR(REGEXP_SUBSTR(`E-Cadherin3`, '[^:]+', 1, 2), '(++)') != 0 OR INSTR(REGEXP_SUBSTR(`E-Cadherin3`, '[^:]+', 1, 2), '(++,') != 0
                    THEN '++'
                    WHEN INSTR(REGEXP_SUBSTR(`E-Cadherin3`, '[^:]+', 1, 2), '(--)') != 0 OR INSTR(REGEXP_SUBSTR(`E-Cadherin3`, '[^:]+', 1, 2), '(--,') != 0
                    THEN '--'
                    ELSE NULL
                END AS `E-Cadherin(2)`,
                CASE 
                    WHEN INSTR(`E-Cadherin1`, '(+++)') != 0 OR INSTR(`E-Cadherin1`, '(+++,') != 0
                    THEN '+++'
                    WHEN INSTR(`E-Cadherin1`, '(---)') != 0 OR INSTR(`E-Cadherin1`, '(---,') != 0
                    THEN '---'
                    WHEN INSTR(REGEXP_SUBSTR(`E-Cadherin3`, '[^:]+', 1, 2), '(+++)') != 0 OR INSTR(REGEXP_SUBSTR(`E-Cadherin3`, '[^:]+', 1, 2), '(+++,') != 0
                    THEN '+++'
                    WHEN INSTR(REGEXP_SUBSTR(`E-Cadherin3`, '[^:]+', 1, 2), '(---)') != 0 OR INSTR(REGEXP_SUBSTR(`E-Cadherin3`, '[^:]+', 1, 2), '(---,') != 0
                    THEN '---'
                    ELSE NULL
                END AS `E-Cadherin(3)`
            FROM(
                SELECT *,
                    CASE 
                        WHEN NULLIF(`ELSE(E-Cadherin)_2`, '') IS NOT NULL AND NULLIF(`E-Cadherin3`, '') IS NULL AND NULLIF(`E-Cadherin4`, '') IS NULL
                        THEN `ELSE(E-Cadherin)_2`
                        ELSE NULL
                    END AS `ELSE(E-Cadherin)`
                FROM(
                    SELECT *,
                        CASE 
                            WHEN REGEXP_INSTR(`ELSE(E-Cadherin)_2`, ':') != 0 AND REGEXP_INSTR(`ELSE(E-Cadherin)_2`, '[(][+|-]+') != 0
                            THEN `ELSE(E-Cadherin)_2`
                            ELSE NULL
                        END AS `E-Cadherin3`,
                        CASE 
                            WHEN REGEXP_INSTR(`ELSE(E-Cadherin)_2`, ':') != 0 AND REGEXP_INSTR(`ELSE(E-Cadherin)_2`, '[(][+|-]+') = 0
                            THEN `ELSE(E-Cadherin)_2`
                            ELSE NULL
                        END AS `E-Cadherin4`
                    FROM(
                        SELECT *,
                            CASE 
                                WHEN (NULLIF(`ELSE(E-Cadherin)_1`, '') IS NOT NULL AND NULLIF(`E-Cadherin2`, '') IS NULL)
                                THEN `ELSE(E-Cadherin)_1`
                                ELSE NULL
                            END AS `ELSE(E-Cadherin)_2`
                        FROM(
                            SELECT *,
                                CASE 
                                    WHEN INSTR(`ELSE(E-Cadherin)_1`, 'E-Cadherin (') != 0
                                    THEN `ELSE(E-Cadherin)_1`
                                    ELSE NULL
                                END AS `E-Cadherin2`
                            FROM(
                                SELECT *,
                                    CASE 
                                        WHEN NULLIF(`SUBSTR(E-Cadherin)_2`, '') IS NOT NULL AND NULLIF(`E-Cadherin1`, '') IS NULL
                                        THEN `SUBSTR(E-Cadherin)_2`
                                        ELSE NULL
                                    END AS `ELSE(E-Cadherin)_1`
                                FROM(
                                    SELECT *,
                                        CASE 
                                            WHEN REGEXP_INSTR(`SUBSTR(E-Cadherin)_2`, 'E-Cadherin [(][-|+]+') != 0
                                            THEN `SUBSTR(E-Cadherin)_2`
                                            ELSE NULL
                                        END AS `E-Cadherin1`
                                    FROM genetic_03_01
                                ) a
                            ) a
                        ) a
                    ) a
                ) a
            ) a
        ) a
    ) a
) a