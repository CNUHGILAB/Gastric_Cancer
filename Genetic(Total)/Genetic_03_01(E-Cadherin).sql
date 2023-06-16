SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    `SUBSTR(E-Cadherin)_2`
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
                WHEN NULLIF(`REPLACE(E-Cadherin)_3`, '') IS NOT NULL
                THEN SUBSTR(`REPLACE(E-Cadherin)_3`, INSTR(`REPLACE(E-Cadherin)_3`, 'E-Cadherin'))
                ELSE NULL
            END AS `SUBSTR(E-Cadherin)_1`
        FROM(
            SELECT *,
                CASE 
                    WHEN NULLIF(`REPLACE(E-Cadherin)_2`, '') IS NOT NULL
                    THEN REPLACE(
                        REPLACE(
                            REGEXP_REPLACE(
                                REGEXP_REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            REPLACE(
                                                REPLACE(
                                                    REPLACE(
                                                        `REPLACE(E-Cadherin)_2`, 'positive', '(+)'
                                                    ), 'negative', '(-)'
                                                ), '3+', '(+++)'
                                            ), '2+', '(++)'
                                        ), '1+', '(+)'
                                    ), '[(]{2,}', '('
                                ), '[)]{2,}', ')'
                            ), '( ', '('
                        ), ' )', ')'
                    )
                    ELSE NULL
                END AS `REPLACE(E-Cadherin)_3`
            FROM(
                SELECT *,
                    CASE 
                        WHEN NULLIF(`REPLACE(E-Cadherin)_1`, '') IS NOT NULL
                        THEN REGEXP_REPLACE(
                            REGEXP_REPLACE(
                                REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            BINARY `REPLACE(E-Cadherin)_1`, SUBSTR(`REPLACE(E-Cadherin)_1`, INSTR(`REPLACE(E-Cadherin)_1`, '◈')), ''
                                        ), 'e cadherin', 'E-Cadherin'
                                    ), 'e-cadherin', 'E-Cadherin'
                                ), ';', ':'
                            ), ' {2,}', ' '
                        )
                        ELSE NULL
                    END AS `REPLACE(E-Cadherin)_2`
                FROM(
                    SELECT *,
                        CASE 
                            WHEN NULLIF(`SELECT(E-Cadherin)`, '') IS NOT NULL
                            THEN LOWER(`SELECT(E-Cadherin)`)
                            ELSE NULL
                        END AS `REPLACE(E-Cadherin)_1`
                    FROM(
                        SELECT *,
                            CASE
                                WHEN INSTR(병리진단, 'E-Cadherin') != 0 OR INSTR(병리진단, 'E Cadherin') != 0
                                #WHEN REGEXP_INSTR(BINARY 병리진단, '[E|e]-[C|c]adherin') != 0 OR REGEXP_INSTR(BINARY 병리진단, '[E|e] [C|c]adherin') != 0
                                THEN 병리진단
                                ELSE NULL
                            END AS `SELECT(E-Cadherin)`
                        FROM genetic_01
                    ) a
                ) a
            ) a
        ) a
    ) a
) a