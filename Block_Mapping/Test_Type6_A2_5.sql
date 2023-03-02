SELECT
    원무접수ID,
    A1,
    A2,
    A3,
    A4,
    A5,
    A6,
    A7,
    A8,
    A9,
    A10
FROM(
    SELECT *
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(SLIDE_KEYS_1, '') IS NOT NULL AND NULLIF(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 1), '') IS NOT NULL)
                THEN REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 1)
                ELSE NULL
            END AS A1,
            CASE
                WHEN (NULLIF(SLIDE_KEYS_1, '') IS NOT NULL AND NULLIF(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 2), '') IS NOT NULL)
                THEN REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 2)
                ELSE NULL
            END AS A2,
            CASE
                WHEN (NULLIF(SLIDE_KEYS_1, '') IS NOT NULL AND NULLIF(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 3), '') IS NOT NULL)
                THEN REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 3)
                ELSE NULL
            END AS A3,
            CASE
                WHEN (NULLIF(SLIDE_KEYS_1, '') IS NOT NULL AND NULLIF(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 4), '') IS NOT NULL)
                THEN REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 4)
                ELSE NULL
            END AS A4,
            CASE
                WHEN (NULLIF(SLIDE_KEYS_1, '') IS NOT NULL AND NULLIF(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 5), '') IS NOT NULL)
                THEN REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 5)
                ELSE NULL
            END AS A5,
            CASE
                WHEN (NULLIF(SLIDE_KEYS_1, '') IS NOT NULL AND NULLIF(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 6), '') IS NOT NULL)
                THEN REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 6)
                ELSE NULL
            END AS A6,
            CASE
                WHEN (NULLIF(SLIDE_KEYS_1, '') IS NOT NULL AND NULLIF(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 7), '') IS NOT NULL)
                THEN REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 7)
                ELSE NULL
            END AS A7,
            CASE
                WHEN (NULLIF(SLIDE_KEYS_1, '') IS NOT NULL AND NULLIF(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 8), '') IS NOT NULL)
                THEN REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 8)
                ELSE NULL
            END AS A8,
            CASE
                WHEN (NULLIF(SLIDE_KEYS_1, '') IS NOT NULL AND NULLIF(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 9), '') IS NOT NULL)
                THEN REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 9)
                ELSE NULL
            END AS A9,
            CASE
                WHEN (NULLIF(SLIDE_KEYS_1, '') IS NOT NULL AND NULLIF(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 10), '') IS NOT NULL)
                THEN REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 10)
                ELSE NULL
            END AS A10
        FROM test_type6_a2_4
    ) a
) a