#Slide keys 전처리 과정 2 + 항목별로 구분하기
SELECT
    원무접수ID,
    SA1,
    SA2,
    SA3,
    SA4,
    SA5,
    SA6,
    SA7,
    SA8,
    SA9,
    Re_Slide_keys
    /*
    SA_Else
    */
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 1), '') IS NOT NULL AND REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 1) != ' ')
            THEN REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 1)
            WHEN (NULLIF(REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 1), '') IS NOT NULL AND REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 1) = ' ')
            THEN NULL
            ELSE REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 1)
            /*
            WHEN REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 1) = 's' AND REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 2) = REGEXP_SUBSTR(Re_Slide_keys, '[^;]*$')
            THEN REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 2)
            WHEN REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 1) != 's' AND REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 2, 1) != REGEXP_SUBSTR(Re_Slide_keys, '[^;]*$')
            THEN CONCAT(
                CONCAT(
                    REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 2, 1), ','
                ), REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 2, 2)
            )
            WHEN REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 1) != 's' AND REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 2, 1) = REGEXP_SUBSTR(Re_Slide_keys, '[^;]*$')
            THEN REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 2, 1)
            ELSE NULL
            */
        END AS SA1,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 2), '') IS NOT NULL AND REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 2) != ' ')
            THEN REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 2)
            WHEN (NULLIF(REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 2), '') IS NOT NULL AND REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 2) = ' ')
            THEN NULL
            ELSE REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 2)
        END AS SA2,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 3), '') IS NOT NULL AND REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 3) != ' ')
            THEN REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 3)
            WHEN (NULLIF(REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 3), '') IS NOT NULL AND REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 3) = ' ')
            THEN NULL
            ELSE REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 3)
        END AS SA3,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 4), '') IS NOT NULL AND REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 4) != ' ')
            THEN REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 4)
            WHEN (NULLIF(REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 4), '') IS NOT NULL AND REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 4) = ' ')
            THEN NULL
            ELSE REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 4)
        END AS SA4,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 5), '') IS NOT NULL AND REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 5) != ' ')
            THEN REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 5)
            WHEN (NULLIF(REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 5), '') IS NOT NULL AND REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 5) = ' ')
            THEN NULL
            ELSE REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 5)
        END AS SA5,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 6), '') IS NOT NULL AND REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 6) != ' ')
            THEN REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 6)
            WHEN (NULLIF(REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 6), '') IS NOT NULL AND REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 6) = ' ')
            THEN NULL
            ELSE REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 6)
        END AS SA6,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 7), '') IS NOT NULL AND REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 7) != ' ')
            THEN REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 7)
            WHEN (NULLIF(REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 7), '') IS NOT NULL AND REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 7) = ' ')
            THEN NULL
            ELSE REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 7)
        END AS SA7,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 8), '') IS NOT NULL AND REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 8) != ' ')
            THEN REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 8)
            WHEN (NULLIF(REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 8), '') IS NOT NULL AND REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 8) = ' ')
            THEN NULL
            ELSE REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 8)
        END AS SA8,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 9), '') IS NOT NULL AND REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 9) != ' ')
            THEN REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 9)
            WHEN (NULLIF(REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 9), '') IS NOT NULL AND REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 9) = ' ')
            THEN NULL
            ELSE REGEXP_SUBSTR(Re_Slide_keys, '[^\n]+', 1, 9)
        END AS SA9,
        CASE
            WHEN RIGHT(Re_Slide_keys, 1) != ';'
            THEN REGEXP_SUBSTR(Re_Slide_keys, '[^;]*$')
            WHEN RIGHT(Re_Slide_keys, 1) = ';'
            THEN CONCAT(REGEXP_SUBSTR(Re_Slide_keys, '[^;]*$'), '+')
        END AS SA_Else
    FROM test_type3_a2_1
) a