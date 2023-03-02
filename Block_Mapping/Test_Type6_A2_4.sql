SELECT
    원무접수ID,
    SLIDE_KEYS_1,
    SLIDE_KEYS_2,
    SLIDE_KEYS_3,
    SLIDE_KEYS_4,
    SLIDE_KEYS_5,
    SLIDE_KEYS_6,
    SLIDE_KEYS_7
FROM(
    SELECT *,
        #'설명;A+숫자'인 Slide Keys
        CASE
            WHEN (NULLIF(RE2_SLIDE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_3, '') IS NULL AND INSTR(BINARY RE2_SLIDE_KEYS, ';Fr;') != 0)
            THEN REPLACE(BINARY RE2_SLIDE_KEYS, ';Fr;', ';FR0;')
            WHEN (NULLIF(RE2_SLIDE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_3, '') IS NULL AND INSTR(BINARY RE2_SLIDE_KEYS, ';Fr;') = 0)
            THEN REPLACE(BINARY RE2_SLIDE_KEYS, 'Fr', 'FR')
            ELSE NULL
        END AS SLIDE_KEYS_1
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(RE1_SLIDE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_4, '') IS NULL AND NULLIF(SLIDE_KEYS_5, '') IS NULL AND NULLIF(SLIDE_KEYS_6, '') IS NULL AND NULLIF(SLIDE_KEYS_7, '') IS NULL)
                THEN REPLACE(BINARY RE1_SLIDE_KEYS, 'Fr', 'FR')
                ELSE NULL
            END AS SLIDE_KEYS_2
        FROM(
            SELECT *,
                #'A+숫자'로 시작하는 Slide Keys
                CASE
                    WHEN (NULLIF(RE2_SLIDE_KEYS, '') IS NOT NULL AND INSTR(BINARY RE2_SLIDE_KEYS, 'A') = 0)
                    THEN REPLACE(BINARY RE2_SLIDE_KEYS, 'Fr', 'FR')
                    ELSE NULL
                END AS SLIDE_KEYS_3
            FROM(
                SELECT *,
                    CASE
                        WHEN (NULLIF(RE1_SLIDE_KEYS, '') IS NOT NULL AND REGEXP_INSTR(BINARY RE1_SLIDE_KEYS, '^[A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(RE1_SLIDE_KEYS, '[A-Z]{1,2}[0-9]{1,3} [(]') = 0)
                        THEN REPLACE(BINARY RE1_SLIDE_KEYS, 'Fr', 'FR')
                        ELSE NULL
                    END AS SLIDE_KEYS_4
                FROM(
                    SELECT *,
                        #'A+숫자'가 없는 Slide Keys
                        CASE
                            WHEN (NULLIF(RE1_SLIDE_KEYS, '') IS NOT NULL AND REGEXP_INSTR(BINARY RE1_SLIDE_KEYS, '^[A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(RE1_SLIDE_KEYS, '[A-Z]{1,2}[0-9]{1,3} [(]') != 0)
                            THEN REPLACE(BINARY RE1_SLIDE_KEYS, 'Fr', 'FR')
                            ELSE NULL
                        END AS SLIDE_KEYS_5
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (NULLIF(RE1_SLIDE_KEYS, '') IS NOT NULL AND INSTR(BINARY RE1_SLIDE_KEYS, 'A') = 0 AND REGEXP_INSTR(RE1_SLIDE_KEYS, '[0-9]{1,3} [(]') = 0)
                                THEN REPLACE(BINARY RE1_SLIDE_KEYS, 'Fr', 'FR')
                                ELSE NULL
                            END AS SLIDE_KEYS_6
                        FROM(
                            SELECT *,
                                CASE
                                    WHEN (NULLIF(RE1_SLIDE_KEYS, '') IS NOT NULL AND INSTR(BINARY RE1_SLIDE_KEYS, 'A') = 0 AND REGEXP_INSTR(RE1_SLIDE_KEYS, '[0-9]{1,3} [(]') != 0)
                                    THEN REPLACE(BINARY RE1_SLIDE_KEYS, 'Fr', 'FR')
                                    ELSE NULL
                                END AS SLIDE_KEYS_7
                            FROM test_type6_a2_3
                        ) a
                    ) a
                ) a
            ) a
        ) a
    ) a
) a