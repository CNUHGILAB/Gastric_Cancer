SELECT
    DISTINCT (원무접수ID),
    SLIDE_KEYS_R1,
    SLIDE_KEYS_R2,
    SLIDE_KEYS_R3,
    SLIDE_KEYS_R4
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(Slide_keys_Re, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_R2, '') IS NULL AND NULLIF(SLIDE_KEYS_R3, '') IS NULL AND NULLIF(SLIDE_KEYS_R4, '') IS NULL)
            THEN Slide_keys_Re
            ELSE NULL
        END AS SLIDE_KEYS_R1
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(Slide_keys_Re, '') IS NOT NULL AND REGEXP_INSTR(BINARY Slide_keys_Re, 'A') != 0 AND REGEXP_INSTR(BINARY Slide_keys_Re, '[A-z]+ [(]') = 0)
                THEN Slide_keys_Re
                ELSE NULL
            END AS SLIDE_KEYS_R2
        FROM(
            SELECT *,
                #숫자만 있는 Slide Keys
                CASE
                    WHEN (NULLIF(Slide_keys_Re, '') IS NOT NULL AND REGEXP_INSTR(BINARY Slide_keys_Re, '^[0-9]') != 0)
                    THEN Slide_keys_Re
                    ELSE NULL
                END AS SLIDE_KEYS_R3
            FROM(
                SELECT *,
                    #'A+숫자'가 있는 Slide Keys
                    CASE
                        WHEN (NULLIF(Slide_keys_Re, '') IS NOT NULL AND REGEXP_INSTR(BINARY Slide_keys_Re, '[A-z]+ [(]') != 0)
                        THEN Slide_keys_Re
                        ELSE NULL
                    END AS SLIDE_KEYS_R4
                FROM test_type5_a2_2
            ) a
        ) a
    ) a
) a