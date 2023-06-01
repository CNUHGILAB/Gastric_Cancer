SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    `SUBSTR(p53)`
FROM(
    SELECT *,
        CASE 
            WHEN NULLIF(`REPLACE(p53)`, '') IS NOT NULL
            THEN REGEXP_SUBSTR(
                SUBSTR(`REPLACE(p53)`, INSTR(`REPLACE(p53)`, 'p53')), '[^\n]+', 1, 1
            )
            ELSE NULL
        END AS `SUBSTR(p53)`
    FROM(
        SELECT *,
            CASE 
                WHEN NULLIF(`SELECT(p53)`, '') IS NOT NULL
                THEN REGEXP_REPLACE(
                    REGEXP_REPLACE(
                        REGEXP_REPLACE(
                            REGEXP_REPLACE(
                                REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            REPLACE(
                                                REPLACE(
                                                    REPLACE(
                                                        BINARY `SELECT(p53)`, SUBSTR(`SELECT(p53)`, INSTR(`SELECT(p53)`, '◈ 검사항목')), ''
                                                    ), '[P|p]53', 'p53'
                                                ), '.', ','
                                            ), '),', ')'
                                        ), ';', ':'
                                    ), 'positive', '(+)'
                                ), 'negative', '(-)'
                            ), ' {2,}', ' '
                        ), '[(]{2,}', '('
                    ), '[)]{2,}', ')'
                )
                ELSE NULL
            END AS `REPLACE(p53)`
        FROM(
            SELECT *,
                CASE
                    WHEN REGEXP_INSTR(BINARY 병리진단, '[P|p]53') != 0
                    THEN 병리진단
                    ELSE NULL
                END AS `SELECT(p53)`
            FROM pathology_01
        ) a
    ) a
) a