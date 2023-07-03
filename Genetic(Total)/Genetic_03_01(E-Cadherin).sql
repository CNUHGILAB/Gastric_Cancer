SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    `SUBSTR(ECadherin)_2`
FROM(
    SELECT *,
        CASE 
            WHEN NULLIF(`SUBSTR(ECadherin)_1`, '') IS NOT NULL
            THEN REGEXP_SUBSTR(`SUBSTR(ECadherin)_1`, '[^\n]+', 1, 1)
            ELSE NULL
        END AS `SUBSTR(ECadherin)_2`
    FROM(
        SELECT *,
            CASE 
                WHEN NULLIF(`REPLACE(ECadherin)_2`, '') IS NOT NULL
                THEN SUBSTR(`REPLACE(ECadherin)_2`, INSTR(`REPLACE(ECadherin)_2`, 'e-cadherin'))
                ELSE NULL
            END AS `SUBSTR(ECadherin)_1`
        FROM(
            SELECT *,
                CASE 
                    WHEN NULLIF(`REPLACE(ECadherin)_1`, '') IS NOT NULL
                    THEN REPLACE(
                        REPLACE(
                            REGEXP_REPLACE(
                                REGEXP_REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            REPLACE(
                                                REPLACE(
                                                    REPLACE(
                                                        `REPLACE(ECadherin)_1`, 'positive', '(+)'
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
                END AS `REPLACE(ECadherin)_2`
            FROM(
                SELECT *,
                    CASE 
                        WHEN NULLIF(`SELECT(ECadherin)`, '') IS NOT NULL
                        THEN REGEXP_REPLACE(
                            REGEXP_REPLACE(
                                REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            REGEXP_REPLACE(
                                                `SELECT(ECadherin)`, ' {2,}', ' '
                                            ), 'e-cadherin ', 'e-cadherin'
                                        ), ';', ':'
                                    ), 'e-cadherin', 'e-cadherin:'
                                ), ':{2,}', ':'
                            ), ' {2,}', ' '
                        )
                        ELSE NULL
                    END AS `REPLACE(ECadherin)_1`
                FROM(
                    SELECT *,
                        CASE
                            WHEN INSTR(LOWER(병리진단_ECadherin), 'e-cadherin') != 0
                            THEN LOWER(병리진단_ECadherin)
                            ELSE NULL
                        END AS `SELECT(ECadherin)`
                    FROM genetic_03_00
                ) a
            ) a
        ) a
    ) a
) a