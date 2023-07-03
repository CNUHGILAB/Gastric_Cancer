SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    `Ki-67`,
    `Ki-67 Percent`
FROM(
    SELECT *
    FROM(
        SELECT *
        FROM(
            SELECT *,
                CASE 
                    WHEN KI67_P2 IS NOT NULL
                    THEN KI67_P2
                    WHEN KI67_P3 IS NOT NULL
                    THEN KI67_P3
                    ELSE NULL
                END AS `Ki-67 Percent`
            FROM(
                SELECT *,
                    CASE 
                        WHEN REGEXP_INSTR(ELSE_KI67_P2, ' [(][<|>][0-9]+| [(][0-9]+') != 0
                        THEN REPLACE(
                            REPLACE(
                                SUBSTR(ELSE_KI67_P2, INSTR(ELSE_KI67_P2, ' (')),
                                SUBSTR(SUBSTR(ELSE_KI67_P2, INSTR(ELSE_KI67_P2, ' (')), INSTR(SUBSTR(ELSE_KI67_P2, INSTR(ELSE_KI67_P2, ' (')), ')')),
                                ''
                            ), ' (', ''
                        )
                        ELSE NULL
                    END AS KI67_P3
                FROM(
                    SELECT *,
                        CASE 
                            WHEN KI67_P1 IS NOT NULL AND KI67_P2 IS NULL
                            THEN KI67_P1
                            WHEN ELSE_KI67_P1 IS NOT NULL AND KI67_P2 IS NULL
                            THEN ELSE_KI67_P1
                            ELSE NULL
                        END AS ELSE_KI67_P2
                    FROM(
                        SELECT *,
                            CASE 
                                WHEN REGEXP_INSTR(KI67_P1, '^[(][<|>][0-9]+|^[(][0-9]+') != 0
                                THEN REGEXP_REPLACE(
                                    REPLACE(
                                        KI67_P1, SUBSTR(KI67_P1, INSTR(KI67_P1, ')')), ''
                                    ), '^[(]', ''
                                )
                                WHEN REGEXP_INSTR(KI67_P1, '^[0-9]+|^[<|>][0-9]+') != 0
                                THEN REPLACE(
                                    KI67_P1, SUBSTR(KI67_P1, INSTR(KI67_P1, ',')), ''
                                )
                                WHEN REGEXP_INSTR(KI67_P1, '^[(][+|-]+[,]') != 0
                                THEN REGEXP_REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            SUBSTR(KI67_P1, INSTR(KI67_P1, ',')), SUBSTR(SUBSTR(KI67_P1, INSTR(KI67_P1, ',')), INSTR(SUBSTR(KI67_P1, INSTR(KI67_P1, ',')), ')')), ''
                                        ), ' ', ''
                                    ), '^[,]', ''
                                )
                                WHEN REGEXP_INSTR(ELSE_KI67_P1, ' [(][0-9]+| [(][<|>][0-9]+') != 0
                                THEN REPLACE(
                                    REPLACE(
                                        SUBSTR(ELSE_KI67_P1, INSTR(ELSE_KI67_P1, ' (')),
                                        SUBSTR(SUBSTR(ELSE_KI67_P1, INSTR(ELSE_KI67_P1, ' (')), INSTR(SUBSTR(ELSE_KI67_P1, INSTR(ELSE_KI67_P1, ' (')), ')')),
                                        ''
                                    ), ' (', ''
                                )
                                WHEN REGEXP_INSTR(ELSE_KI67_P1, '[(][+|-]+[,]') != 0
                                THEN REPLACE(
                                    REPLACE(
                                        SUBSTR(ELSE_KI67_P1, INSTR(ELSE_KI67_P1, ',')),
                                        SUBSTR(SUBSTR(ELSE_KI67_P1, INSTR(ELSE_KI67_P1, ',')), INSTR(SUBSTR(ELSE_KI67_P1, INSTR(ELSE_KI67_P1, ',')), ')')),
                                        ''
                                    ), ',', ''
                                )
                                ELSE NULL
                            END AS KI67_P2
                        FROM(
                            SELECT *,
                                CASE 
                                    WHEN `SUBSTR(Ki67)_2` IS NOT NULL AND KI67_P1 IS NULL
                                    THEN `SUBSTR(Ki67)_2`
                                    ELSE NULL
                                END AS ELSE_KI67_P1
                            FROM(
                                SELECT *,
                                    CASE
                                        WHEN REGEXP_SUBSTR(`SUBSTR(Ki67)_2`, '[^:]+', 1, 2) IS NOT NULL
                                        THEN REGEXP_REPLACE(
                                            REGEXP_SUBSTR(`SUBSTR(Ki67)_2`, '[^:]+', 1, 2), '^ ', ''
                                        )
                                        ELSE NULL
                                    END AS KI67_P1
                                FROM(
                                    SELECT *,
                                        CASE 
                                            WHEN INSTR(`SUBSTR(Ki67)_2`, '(+)') != 0 OR INSTR(`SUBSTR(Ki67)_2`, '(+,') != 0
                                            THEN '+'
                                            WHEN INSTR(`SUBSTR(Ki67)_2`, '(-)') != 0 OR INSTR(`SUBSTR(Ki67)_2`, '(-,') != 0
                                            THEN '-'
                                            WHEN INSTR(`SUBSTR(Ki67)_2`, '(++)') != 0 OR INSTR(`SUBSTR(Ki67)_2`, '(++,') != 0
                                            THEN '++'
                                            WHEN INSTR(`SUBSTR(Ki67)_2`, '(--)') != 0 OR INSTR(`SUBSTR(Ki67)_2`, '(--,') != 0
                                            THEN '--'
                                            WHEN INSTR(`SUBSTR(Ki67)_2`, '(+++)') != 0 OR INSTR(`SUBSTR(Ki67)_2`, '(+++,') != 0
                                            THEN '+++'
                                            WHEN INSTR(`SUBSTR(Ki67)_2`, '(---)') != 0 OR INSTR(`SUBSTR(Ki67)_2`, '(---,') != 0
                                            THEN '---'
                                            ELSE NULL
                                        END AS `Ki-67`
                                    FROM genetic_05_01
                                ) a
                            ) a
                        ) a
                    ) a
                ) a
            ) a
        ) a
    ) a
) a
/*
WHERE (
    Ki67 IS NOT NULL OR `Ki67 Percent` IS NOT NULL
)
*/