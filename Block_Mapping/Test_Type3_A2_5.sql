SELECT
    원무접수ID,
    SLIDE_KEYS_1,
    SLIDE_KEYS_2,
    SLIDE_KEYS_3,
    SLIDE_KEYS_4,
    SLIDE_KEYS_5
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(SLIDE_KEYS1, '') IS NOT NULL)
            THEN SLIDE_KEYS1
            ELSE NULL
        END AS SLIDE_KEYS_1,
        CASE
            WHEN (NULLIF(SLIDE_KEYS2, '') IS NOT NULL)
            THEN SLIDE_KEYS2
            ELSE NULL
        END AS SLIDE_KEYS_2,
        CASE
            WHEN (NULLIF(SLIDE_KEYS3, '') IS NOT NULL AND INSTR(BINARY SLIDE_KEYS3, ' A') != 0)
            THEN REPLACE(BINARY SLIDE_KEYS3, ' A', ';A')
            ELSE SLIDE_KEYS3
        END AS SLIDE_KEYS_3,
        CASE
            WHEN (NULLIF(SLIDE_KEYS4, '') IS NOT NULL)
            THEN SLIDE_KEYS4
            ELSE NULL
        END AS SLIDE_KEYS_4,
        CASE
            WHEN (NULLIF(SLIDE_KEYS5, '') IS NOT NULL)
            THEN SLIDE_KEYS5
            ELSE NULL
        END AS SLIDE_KEYS_5
    FROM test_type3_a2_4
) a