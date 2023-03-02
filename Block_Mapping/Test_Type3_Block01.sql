SELECT
    원무접수ID,
    환자번호,
    BLOCK_A,
    BLOCK_2,
    BLOCK_3,
    BLOCK_4
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(BLOCK_3_3, '') IS NOT NULL AND NULLIF(NUM5, '') IS NOT NULL)
            THEN CONCAT(
                CONCAT(
                    BLOCK_3_3, '\n'
                ), NUM5
            )
            ELSE BLOCK_3_3
        END AS BLOCK_3
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(BLOCK_3_2, '') IS NOT NULL AND NULLIF(NUM4, '') IS NOT NULL)
                THEN CONCAT(
                    CONCAT(
                        BLOCK_3_2, '\n'
                    ), NUM4
                )
                ELSE BLOCK_3_2
            END AS BLOCK_3_3
        FROM(
            SELECT *,
                CASE
                    WHEN (NULLIF(BLOCK_3_1, '') IS NOT NULL AND NULLIF(NUM3, '') IS NOT NULL)
                    THEN CONCAT(
                        CONCAT(
                            BLOCK_3_1, '\n'
                        ), NUM3
                    )
                    ELSE BLOCK_3_1
                END AS BLOCK_3_2
            FROM(
                SELECT *,
                    CASE
                        WHEN (NULLIF(NUM1, '') IS NOT NULL AND INSTR(BINARY NUM1, 'B') != 0)
                        THEN NUM1
                        ELSE NULL
                    END AS BLOCK_2,
                    CASE
                        WHEN (NULLIF(NUM1, '') IS NOT NULL AND INSTR(BINARY NUM1, 'C') != 0)
                        THEN NUM1
                        WHEN (NULLIF(NUM2, '') IS NOT NULL AND INSTR(BINARY NUM2, 'C') != 0)
                        THEN NUM2
                        ELSE NULL
                    END AS BLOCK_3_1,
                    CASE
                        WHEN (NULLIF(NUM1, '') IS NOT NULL AND INSTR(BINARY NUM1, 'D') != 0)
                        THEN NUM1
                        WHEN (NULLIF(NUM6, '') IS NOT NULL AND INSTR(BINARY NUM6, 'D') != 0)
                        THEN NUM6
                        ELSE NULL
                    END AS BLOCK_4
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
                    FROM test_type3_block_00
                ) a
            ) a
        ) a
    ) a
) a