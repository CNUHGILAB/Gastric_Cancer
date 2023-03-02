SELECT
    원무접수ID,
    환자번호,
    BLOCK1,
    BLOCK2,
    BLOCK3,
    BLOCK4,
    BLOCK5,
    BLOCK6,
    BLOCK7,
    BLOCK8,
    BLOCK9
FROM(
    SELECT *,
        CASE
            -- WHEN (REGEXP_INSTR(NUM1, '^[0-9][.]') = 0 OR REGEXP_INSTR(NUM1, '^[0-9][)]') = 0)
            -- THEN CONCAT(NUM1, '★')
            WHEN (REGEXP_INSTR(NUM1, '^[0-9][.]') != 0 OR REGEXP_INSTR(NUM1, '^[0-9][)]') != 0)
            THEN NUM1
            ELSE CONCAT(NUM1, '★')
        END AS BLOCK1
    FROM(
        SELECT *,
            CASE
                WHEN (INSTR(BLOCK3, '★') != 0)
                THEN REPLACE(
                    CONCAT(
                        CONCAT(
                            NUM2, ' '
                        ), BLOCK3
                    ), '★', ''
                )
                ELSE NUM2
            END AS BLOCK2
        FROM(
            SELECT *,
                CASE
                    WHEN (REGEXP_INSTR(NUM3, '^[0-9][.]') != 0 OR REGEXP_INSTR(NUM3, '^[0-9][)]') != 0)
                    THEN NUM3
                    ELSE CONCAT(NUM3, '★')
                END AS BLOCK3
            FROM(
                SELECT *,
                    CASE
                        WHEN (INSTR(BLOCK5, '★') = 0)
                        THEN NUM4
                        WHEN (INSTR(BLOCK5, '★') != 0)
                        THEN REPLACE(
                            CONCAT(
                                CONCAT(
                                    NUM4, ' '
                                ), BLOCK5
                            ), '★', ''
                        )
                        ELSE NULL
                    END AS BLOCK4
                FROM(
                    SELECT *,
                        CASE
                            WHEN (REGEXP_INSTR(NUM5, '^[0-9][.]') != 0 OR REGEXP_INSTR(NUM5, '^[0-9][)]') != 0)
                            THEN NUM5
                            ELSE CONCAT(NUM5, '★')
                        END AS BLOCK5
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (INSTR(BLOCK7, '★') = 0)
                                THEN NUM6
                                WHEN (INSTR(BLOCK7, '★') != 0)
                                THEN REPLACE(
                                    CONCAT(
                                        CONCAT(
                                            NUM6, ' '
                                        ), BLOCK7
                                    ), '★', ''
                                )
                                ELSE NULL
                            END AS BLOCK6
                        FROM(
                            SELECT *,
                                CASE
                                    WHEN (REGEXP_INSTR(NUM7, '^[0-9][.]') != 0 OR REGEXP_INSTR(NUM7, '^[0-9][)]') != 0)
                                    THEN NUM7
                                    ELSE CONCAT(NUM7, '★')
                                END AS BLOCK7
                            FROM(
                                SELECT *,
                                    CASE
                                        WHEN (INSTR(BLOCK9, '★') = 0)
                                        THEN NUM8
                                        WHEN (INSTR(BLOCK9, '★') != 0)
                                        THEN REPLACE(
                                            CONCAT(
                                                CONCAT(
                                                    NUM8, ' '
                                                ), BLOCK9
                                            ), '★', ''
                                        )
                                        ELSE NULL
                                    END AS BLOCK8
                                FROM(
                                    SELECT *,
                                        CASE
                                            WHEN (REGEXP_INSTR(NUM9, '^[0-9][.]') != 0 OR REGEXP_INSTR(NUM9, '^[0-9][)]') != 0)
                                            THEN NUM9
                                            ELSE CONCAT(NUM9, '★')
                                        END AS BLOCK9
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
                                            END AS NUM6,
                                            CASE
                                                WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 7), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 7), '[A-z]+') != 0)
                                                THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 7)
                                                ELSE NULL
                                            END AS NUM7,
                                            CASE
                                                WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 8), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 8), '[A-z]+') != 0)
                                                THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 8)
                                                ELSE NULL
                                            END AS NUM8,
                                            CASE
                                                WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 9), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 9), '[A-z]+') != 0)
                                                THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 9)
                                                ELSE NULL
                                            END AS NUM9
                                        FROM test_type4_block_00
                                    ) a
                                ) a
                            ) a
                        ) a
                    ) a
                ) a
            ) a
        ) a
    ) a
) a