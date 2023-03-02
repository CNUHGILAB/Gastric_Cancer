SELECT
    원무접수ID,
    환자번호,
    NUM1,
    NUM2,
    NUM3,
    NUM4,
    NUM5,
    NUM6
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 1), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 1), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 1)
            ELSE NULL
        END AS NUM1,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 2), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 2), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 2)
            ELSE NULL
        END AS NUM2,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 3), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 3), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 3)
            ELSE NULL
        END AS NUM3,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 4), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 4), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 4)
            ELSE NULL
        END AS NUM4,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 5), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 5), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 5)
            ELSE NULL
        END AS NUM5,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 6), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 6), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 6)
            ELSE NULL
        END AS NUM6
    FROM test_type5_block_00
) a