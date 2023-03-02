SELECT
    DISTINCT (원무접수ID),
    SLIDE_KEYS_R1,
    SLIDE_KEYS_R2,
    SLIDE_KEYS_R3,
    SLIDE_KEYS_R4
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(Re_Slide_keys, '') IS NOT NULL AND REGEXP_INSTR(BINARY Re_Slide_keys, 'A') != 0 AND NULLIF(SLIDE_KEYS_R3, '') IS NULL)
            THEN Re_Slide_keys
            ELSE NULL
        END AS SLIDE_KEYS_R1
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(Re_Slide_keys, '') IS NOT NULL AND REGEXP_INSTR(BINARY Re_Slide_keys, 'A') = 0 AND NULLIF(SLIDE_KEYS_R4, '') IS NULL)
                THEN Re_Slide_keys
                ELSE NULL
            END AS SLIDE_KEYS_R2
        FROM(
            SELECT *,
                #'\n'으로 구분된 Slide Keys
                CASE
                    WHEN (NULLIF(Re_Slide_keys, '') IS NOT NULL AND REGEXP_INSTR(BINARY Re_Slide_keys, 'A') != 0 AND REGEXP_INSTR(BINARY Re_Slide_keys, '[-] [A-z]+') != 0)
                    THEN Re_Slide_keys
                    ELSE NULL
                END AS SLIDE_KEYS_R3
            FROM(
                SELECT *,
                    #';'으로 구분된 Slide Keys
                    CASE
                        WHEN (NULLIF(Re_Slide_keys, '') IS NOT NULL AND REGEXP_INSTR(BINARY Re_Slide_keys, 'A') = 0 AND REGEXP_INSTR(BINARY Re_Slide_keys, '[-] [A-z]+') != 0)
                        THEN Re_Slide_keys
                        ELSE NULL
                    END AS SLIDE_KEYS_R4
                FROM test_type3_a2_2
            ) a
        ) a
    ) a
) a