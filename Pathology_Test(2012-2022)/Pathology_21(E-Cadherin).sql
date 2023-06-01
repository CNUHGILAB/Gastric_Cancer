SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    `E-Cadherin`,
    `E-Cadherin Comment`
FROM(
    SELECT *,
        CASE 
            WHEN NULLIF(`E-Cadherin2`, '') IS NOT NULL
            THEN REPLACE(
                REGEXP_SUBSTR(`E-Cadherin2`, '[^,]+', 1, 2),
                SUBSTR(REGEXP_SUBSTR(`E-Cadherin2`, '[^,]+', 1, 2), INSTR(REGEXP_SUBSTR(`E-Cadherin2`, '[^,]+', 1, 2), ')')),
                ''
            )
            WHEN NULLIF(`E-Cadherin4`, '') IS NOT NULL
            THEN REGEXP_SUBSTR(`E-Cadherin4`, '[^:]+', 1, 2)
            WHEN NULLIF(`E-Cadherin5`, '') IS NOT NULL
            THEN REPLACE(
                REGEXP_SUBSTR(`E-Cadherin5`, '[^(]+', 1, 2),
                SUBSTR(`E-Cadherin5`, INSTR(`E-Cadherin5`, ')')),
                ''
            )
            WHEN NULLIF(`E-Cadherin6`, '') IS NOT NULL
            THEN REPLACE(
                REGEXP_SUBSTR(`E-Cadherin6`, '[^(]+', 1, 2),
                SUBSTR(`E-Cadherin6`, INSTR(`E-Cadherin6`, ')')),
                ''
            )
            ELSE NULL
        END AS `E-Cadherin Comment`
    FROM(
        SELECT *,
            CASE 
                #E-Cadherin_1
                WHEN INSTR(`E-Cadherin1`, 'Cadherin (+)') != 0
                THEN '+'
                WHEN INSTR(`E-Cadherin1`, 'Cadherin (++)') != 0
                THEN '++'
                WHEN INSTR(`E-Cadherin1`, 'Cadherin (+++)') != 0
                THEN '+++'
                WHEN INSTR(`E-Cadherin1`, 'Cadherin (-)') != 0
                THEN '-'
                WHEN INSTR(`E-Cadherin1`, 'Cadherin (--)') != 0
                THEN '--'
                WHEN INSTR(`E-Cadherin1`, 'Cadherin (---)') != 0
                THEN '---'
                #E-Cadherin_2
                WHEN INSTR(`E-Cadherin2`, '(+,') != 0
                THEN '+'
                WHEN INSTR(`E-Cadherin2`, '(++,') != 0
                THEN '++'
                WHEN INSTR(`E-Cadherin2`, '(+++,') != 0
                THEN '+++'
                WHEN INSTR(`E-Cadherin2`, '(-,') != 0
                THEN '-'
                WHEN INSTR(`E-Cadherin2`, '(--,') != 0
                THEN '--'
                WHEN INSTR(`E-Cadherin2`, '(---,') != 0
                THEN '---'
                #E-Cadherin_3
                WHEN INSTR(`E-Cadherin3`, '(+)') != 0
                THEN '+'
                WHEN INSTR(`E-Cadherin3`, '(++)') != 0
                THEN '++'
                WHEN INSTR(`E-Cadherin3`, '(+++)') != 0
                THEN '+++'
                WHEN INSTR(`E-Cadherin3`, '(-)') != 0
                THEN '-'
                WHEN INSTR(`E-Cadherin3`, '(--)') != 0
                THEN '--'
                WHEN INSTR(`E-Cadherin3`, '(---)') != 0
                THEN '---'
                ELSE NULL
            END AS `E-Cadherin`
        FROM(
            SELECT *,
                CASE 
                    WHEN INSTR(`ELSE(E-Cadherin)_3`, 'E-Cadherin (') != 0
                    THEN `ELSE(E-Cadherin)_3`
                    ELSE NULL
                END AS `E-Cadherin6`
            FROM(
                SELECT *,
                    CASE 
                        WHEN NULLIF(`ELSE(E-Cadherin)_2`, '') IS NOT NULL AND NULLIF(`E-Cadherin4`, '') IS NULL AND NULLIF(`E-Cadherin5`, '') IS NULL
                        THEN `ELSE(E-Cadherin)_2`
                        ELSE NULL
                    END AS `ELSE(E-Cadherin)_3`
                FROM(
                    SELECT *,
                        CASE 
                            WHEN REGEXP_INSTR(BINARY `ELSE(E-Cadherin)_2`, ': [A-z]+') != 0
                            THEN `ELSE(E-Cadherin)_2`
                            ELSE NULL
                        END AS `E-Cadherin4`,
                        CASE 
                            WHEN INSTR(`ELSE(E-Cadherin)_2`, ': (') != 0
                            THEN `ELSE(E-Cadherin)_2`
                            ELSE NULL
                        END AS `E-Cadherin5`
                    FROM(
                        SELECT *,
                            CASE 
                                WHEN NULLIF(`ELSE(E-Cadherin)_1`, '') IS NOT NULL AND NULLIF(`E-Cadherin3`, '') IS NULL
                                THEN `ELSE(E-Cadherin)_1`
                                ELSE NULL
                            END AS `ELSE(E-Cadherin)_2`
                        FROM(
                            SELECT *,
                                CASE 
                                    WHEN REGEXP_INSTR(`ELSE(E-Cadherin)_1`, '[(][-|+]+[)]') != 0
                                    THEN `ELSE(E-Cadherin)_1`
                                    ELSE NULL
                                END AS `E-Cadherin3`
                            FROM(
                                SELECT *,
                                    CASE 
                                        WHEN (NULLIF(`SUBSTR(E-Cadherin)_2`, '') IS NOT NULL AND NULLIF(`E-Cadherin1`, '') IS NULL AND NULLIF(`E-Cadherin2`, '') IS NULL)
                                        THEN `SUBSTR(E-Cadherin)_2`
                                        ELSE NULL
                                    END AS `ELSE(E-Cadherin)_1`
                                FROM(
                                    SELECT *,
                                        CASE 
                                            WHEN REGEXP_INSTR(`SUBSTR(E-Cadherin)_2`, 'E-Cadherin [(][-|+]+[)]') != 0
                                            THEN `SUBSTR(E-Cadherin)_2`
                                            ELSE NULL
                                        END AS `E-Cadherin1`,
                                        CASE 
                                            WHEN REGEXP_INSTR(`SUBSTR(E-Cadherin)_2`, '[(][-|+]+[,]') != 0
                                            THEN `SUBSTR(E-Cadherin)_2`
                                            ELSE NULL
                                        END AS `E-Cadherin2`
                                    FROM(
                                        SELECT *,
                                            CASE 
                                                WHEN NULLIF(`SUBSTR(E-Cadherin)_1`, '') IS NOT NULL
                                                THEN REGEXP_SUBSTR(`SUBSTR(E-Cadherin)_1`, '[^\n]+', 1, 1)
                                                ELSE NULL
                                            END AS `SUBSTR(E-Cadherin)_2`
                                        FROM(
                                            SELECT *,
                                                CASE 
                                                    WHEN NULLIF(`REPLACE(E-Cadherin)_2`, '') IS NOT NULL
                                                    THEN SUBSTR(`REPLACE(E-Cadherin)_2`, INSTR(`REPLACE(E-Cadherin)_2`, 'E-Cadherin'))
                                                    ELSE NULL
                                                END AS `SUBSTR(E-Cadherin)_1`
                                            FROM(
                                                SELECT *,
                                                    CASE 
                                                        WHEN NULLIF(`REPLACE(E-Cadherin)_1`, '') IS NOT NULL
                                                        THEN REPLACE(
                                                            REPLACE(
                                                                REPLACE(
                                                                    REPLACE(
                                                                        REPLACE(
                                                                            REPLACE(
                                                                                REPLACE(
                                                                                    REPLACE(
                                                                                        REPLACE(
                                                                                            `REPLACE(E-Cadherin)_1`, 'positive', '(+)'
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
                                                    END AS `REPLACE(E-Cadherin)_2`
                                                FROM(
                                                    SELECT *,
                                                        CASE 
                                                            WHEN NULLIF(`SELECT(E-Cadherin)`, '') IS NOT NULL
                                                            THEN REGEXP_REPLACE(
                                                                REGEXP_REPLACE(
                                                                    REPLACE(
                                                                        REPLACE(
                                                                            BINARY `SELECT(E-Cadherin)`, SUBSTR(`SELECT(E-Cadherin)`, INSTR(`SELECT(E-Cadherin)`, '◈ 검사항목')), ''
                                                                        ), '[E|e] [C|c]adherin', 'E-Cadherin'
                                                                    ), ';', ':'
                                                                ), ' {2,}', ' '
                                                            )
                                                            ELSE NULL
                                                        END AS `REPLACE(E-Cadherin)_1`
                                                    FROM(
                                                        SELECT *,
                                                            CASE
                                                                WHEN REGEXP_INSTR(BINARY 병리진단, '[E|e]-[C|c]adherin') != 0 OR REGEXP_INSTR(BINARY 병리진단, '[E|e] [C|c]adherin') != 0
                                                                THEN 병리진단
                                                                ELSE NULL
                                                            END AS `SELECT(E-Cadherin)`
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
) a