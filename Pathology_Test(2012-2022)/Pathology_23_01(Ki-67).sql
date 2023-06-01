SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    `SUBSTR(Ki-67)`
FROM(
    SELECT *,
        CASE 
            WHEN NULLIF(`REPLACE(Ki-67)_2`, '') IS NOT NULL
            THEN REGEXP_SUBSTR(
                SUBSTR(`REPLACE(Ki-67)_2`, INSTR(`REPLACE(Ki-67)_2`, 'Ki-67')), '[^\n]+', 1, 1
            )
            ELSE NULL
        END AS `SUBSTR(Ki-67)`
    FROM(
        SELECT *,
            CASE 
                WHEN NULLIF(`SELECT(Ki-67)`, '') IS NOT NULL
                THEN REPLACE(
                    REPLACE(
                        REPLACE(
                            REPLACE(
                                REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            REPLACE(
                                                REPLACE(
                                                    REGEXP_REPLACE(
                                                        REGEXP_REPLACE(
                                                            REPLACE(
                                                                REPLACE(
                                                                    BINARY `SELECT(Ki-67)`, SUBSTR(`SELECT(Ki-67)`, INSTR(`SELECT(Ki-67)`, '◈ 검사항목')), ''
                                                                ), '[K|k][I|i][-]67', 'Ki-67'
                                                            ), ';', ':'
                                                        ), ' {2,}', ' '
                                                    ), 'positive', '(+)'
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
            END AS `REPLACE(Ki-67)`
        FROM(
            SELECT *,
                CASE
                    WHEN REGEXP_INSTR(BINARY 병리진단, '[K|k][I|i][-]67') != 0
                    THEN 병리진단
                    ELSE NULL
                END AS `SELECT(Ki-67)`
            FROM pathology_01
        ) a
    ) a
) a