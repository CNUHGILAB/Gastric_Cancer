SELECT
    원무접수ID,
    RE1_SLIDE_KEYS,
    RE2_SLIDE_KEYS
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(SLIDE_ELSE_2, '') IS NOT NULL)
            THEN SLIDE_ELSE_2
            ELSE NULL
        END AS ELSE_A6,
        CASE
            WHEN (NULLIF(RE1_SLIDE_KEY_5, '') IS NOT NULL)
            THEN RE1_SLIDE_KEY_5
            WHEN (NULLIF(SLIDE_ELSE_5, '') IS NOT NULL)
            THEN SLIDE_ELSE_5
            ELSE NULL
        END AS RE1_SLIDE_KEYS
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(RE1_SLIDE_KEY_4, '') IS NOT NULL)
                THEN REPLACE(RE1_SLIDE_KEY_4, ' ;', ';')
                ELSE RE1_SLIDE_KEY_4
            END AS RE1_SLIDE_KEY_5,
            CASE
                WHEN (NULLIF(SLIDE_ELSE_4, '') IS NOT NULL AND INSTR(SLIDE_ELSE_4, '; ') != 0)
                THEN REPLACE(SLIDE_ELSE_4, '; ', ';')
                ELSE SLIDE_ELSE_4
            END AS SLIDE_ELSE_5
        FROM(
            SELECT *,
                CASE
                    WHEN (NULLIF(RE1_SLIDE_KEY_3, '') IS NOT NULL AND INSTR(RE1_SLIDE_KEY_3, '; ') != 0)
                    THEN REPLACE(RE1_SLIDE_KEY_3, '; ', ';')
                    ELSE RE1_SLIDE_KEY_3
                END AS RE1_SLIDE_KEY_4,
                CASE
                    WHEN (NULLIF(SLIDE_ELSE_3, '') IS NOT NULL AND REGEXP_INSTR(SLIDE_ELSE_3, '[.]') != 0)
                    THEN REGEXP_REPLACE(SLIDE_ELSE_3, '[.]', ';')
                    ELSE SLIDE_ELSE_3
                END AS SLIDE_ELSE_4
            FROM(
                SELECT *,
                    CASE
                        WHEN (NULLIF(RE1_SLIDE_KEY_2, '') IS NOT NULL AND REGEXP_INSTR(RE1_SLIDE_KEY_2, ']') != 0)
                        THEN REGEXP_REPLACE(RE1_SLIDE_KEY_2, ']', '')
                        ELSE RE1_SLIDE_KEY_2
                    END AS RE1_SLIDE_KEY_3,
                    CASE
                        WHEN (NULLIF(SLIDE_ELSE_1, '') IS NOT NULL AND REGEXP_INSTR(SLIDE_ELSE_1, '[,]') != 0)
                        THEN REGEXP_REPLACE(SLIDE_ELSE_1, '[,]', ';')
                        ELSE SLIDE_ELSE_1
                    END AS SLIDE_ELSE_3,
                    CASE
                        WHEN (NULLIF(RE2_SLIDE_KEY_2, '') IS NOT NULL AND INSTR(RE2_SLIDE_KEY_2, '; ') != 0)
                        THEN REPLACE(RE2_SLIDE_KEY_2, '; ', ';')
                        ELSE RE2_SLIDE_KEY_2
                    END AS RE2_SLIDE_KEYS
                FROM(
                    SELECT *,
                        CASE
                            WHEN (NULLIF(RE1_SLIDE_KEY_1, '') IS NOT NULL AND INSTR(RE1_SLIDE_KEY_1, '(Lee;CS)') != 0)
                            THEN REPLACE(RE1_SLIDE_KEY_1, '(Lee;CS)', '')
                            ELSE RE1_SLIDE_KEY_1
                        END AS RE1_SLIDE_KEY_2,
                        CASE
                            WHEN (NULLIF(SLIDE_ELSE, '') IS NOT NULL AND REGEXP_INSTR(BINARY SLIDE_ELSE, '[(][A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN SLIDE_ELSE
                            ELSE NULL
                        END AS SLIDE_ELSE_2,
                        CASE
                            WHEN (NULLIF(RE2_SLIDE_KEY_1, '') IS NOT NULL AND INSTR(RE2_SLIDE_KEY_1, ' ;') != 0)
                            THEN REPLACE(RE2_SLIDE_KEY_1, ' ;', ';')
                            ELSE RE2_SLIDE_KEY_1
                        END AS RE2_SLIDE_KEY_2
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (NULLIF(RE1_SLIDE_KEY, '') IS NOT NULL AND REGEXP_INSTR(RE1_SLIDE_KEY, '[\n]') != 0)
                                THEN REGEXP_REPLACE(RE1_SLIDE_KEY, '[\n]+', '')
                                ELSE RE1_SLIDE_KEY
                            END AS RE1_SLIDE_KEY_1,
                            CASE
                                WHEN (NULLIF(SLIDE_ELSE, '') IS NOT NULL AND REGEXP_INSTR(BINARY SLIDE_ELSE, '[(][A-Z]{1,2}[0-9]{1,3}') = 0)
                                THEN SUBSTR(BINARY SLIDE_ELSE, REGEXP_INSTR(BINARY SLIDE_ELSE, '[A-Z]{1,2}[0-9]{1,3}'))
                                ELSE NULL
                            END AS SLIDE_ELSE_1,
                            CASE
                                WHEN (NULLIF(RE2_SLIDE_KEY, '') IS NOT NULL AND INSTR(RE2_SLIDE_KEY, '(Park;MI)') != 0)
                                THEN REPLACE(RE2_SLIDE_KEY, '(Park;MI)', '')
                                WHEN (NULLIF(RE2_SLIDE_KEY, '') IS NOT NULL AND INSTR(RE2_SLIDE_KEY, '(Song;KS)') != 0)
                                THEN REPLACE(RE2_SLIDE_KEY, '(Song;KS)', '')
                                WHEN (NULLIF(RE2_SLIDE_KEY, '') IS NOT NULL AND INSTR(RE2_SLIDE_KEY, '(Kim;YB)') != 0)
                                THEN REPLACE(RE2_SLIDE_KEY, '(Kim;YB)', '')
                                ELSE RE2_SLIDE_KEY
                            END AS RE2_SLIDE_KEY_1
                        FROM test_type6_a2_1
                    ) a
                ) a
            ) a
        ) a
    ) a
) a
WHERE (RE1_SLIDE_KEYS IS NOT NULL OR RE2_SLIDE_KEYS IS NOT NULL)