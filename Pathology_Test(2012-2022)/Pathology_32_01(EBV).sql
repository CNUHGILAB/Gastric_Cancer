SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    `SUBSTR(EBV)`
FROM(
    SELECT *,
        CASE 
            WHEN NULLIF(`REPLACE(EBV)`, '') IS NOT NULL
            THEN REGEXP_SUBSTR(
                SUBSTR(`REPLACE(EBV)`, INSTR(`REPLACE(EBV)`, 'EBV in situ hybridization')), '[^\n]+', 1, 1
            )
            ELSE NULL
        END AS `SUBSTR(EBV)`
    FROM(
        SELECT *,
            CASE 
                WHEN NULLIF(`SELECT(EBV)`, '') IS NOT NULL
                THEN REGEXP_REPLACE(
                    REGEXP_REPLACE(
                        REGEXP_REPLACE(
                            REGEXP_REPLACE(
                                REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            REPLACE(
                                                REPLACE(
                                                    BINARY `SELECT(EBV)`, SUBSTR(`SELECT(EBV)`, INSTR(`SELECT(EBV)`, '◈ 검사항목')), ''
                                                ), '[E|e][B|b][V|v]', 'EBV'
                                            ), '.', ','
                                        ), ';', ':'
                                    ), 'positive', '(+)'
                                ), 'negative', '(-)'
                            ), ' {2,}', ' '
                        ), '[(]{2,}', '('
                    ), '[)]{2,}', ')'
                )
                ELSE NULL
            END AS `REPLACE(EBV)`
        FROM(
            SELECT *,
                CASE
                    WHEN REGEXP_INSTR(BINARY 병리진단, '[E|e][B|b][V|v] in situ hybridization') != 0
                    THEN 병리진단
                    ELSE NULL
                END AS `SELECT(EBV)`
            FROM pathology_01
        ) a
    ) a
) a