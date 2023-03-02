SELECT
    원무접수ID,
    환자번호,
    BLOCK_A,
    BLOCK_B,
    B1,
    B2,
    BLOCK_C,
    C1,
    C2,
    C3,
    C4,
    BLOCK_D
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(BLOCK_B1, '') IS NOT NULL)
            THEN BLOCK_B1
            ELSE NULL
        END AS BLOCK_B,
        CASE
            WHEN (NULLIF(BLOCK_C1, '') IS NOT NULL)
            THEN BLOCK_C1
            ELSE NULL
        END AS BLOCK_C,
        CASE
            WHEN (NULLIF(BLOCK_D1, '') IS NOT NULL)
            THEN BLOCK_D1
            ELSE NULL
        END AS BLOCK_D
    FROM(
        SELECT *,
            CASE
                WHEN (INSTR(BLOCK_3, ':') != 0 AND REGEXP_INSTR(BINARY BLOCK_3, 'C[0-9]') != 0)
                THEN REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY BLOCK_3, '[^\n]+', 1, 2), '[^:]+', 1, 2)
                WHEN (INSTR(BLOCK_3, ':') = 0 AND REGEXP_INSTR(BINARY BLOCK_3, 'C[0-9]') != 0)
                THEN REPLACE(
                    REPLACE(BLOCK_3, SUBSTR(BINARY BLOCK_3, INSTR(BINARY BLOCK_3, '(')), ''), SUBSTR(BLOCK_3, 1, INSTR(BLOCK_3, ')')), ''
                )
                ELSE NULL
            END AS C1,
            CASE
                WHEN (INSTR(BLOCK_3, ':') != 0 AND REGEXP_INSTR(BINARY BLOCK_3, 'C[0-9]') != 0)
                THEN REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY BLOCK_3, '[^\n]+', 1, 3), '[^:]+', 1, 2)
                WHEN (INSTR(BLOCK_3, ':') = 0 AND REGEXP_INSTR(BINARY BLOCK_3, 'C[0-9]') != 0)
                THEN REPLACE(
                    REPLACE(BLOCK_3, SUBSTR(BINARY BLOCK_3, INSTR(BINARY BLOCK_3, '(')), ''), SUBSTR(BLOCK_3, 1, INSTR(BLOCK_3, ')')), ''
                )
                ELSE NULL
            END AS C2,
            CASE
                WHEN (INSTR(BLOCK_3, ':') != 0 AND REGEXP_INSTR(BINARY BLOCK_3, 'C[0-9]') != 0)
                THEN REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY BLOCK_3, '[^\n]+', 1, 3), '[^:]+', 1, 2)
                ELSE NULL
            END AS C3,
            CASE
                WHEN (INSTR(BLOCK_3, ':') != 0 AND REGEXP_INSTR(BINARY BLOCK_3, 'C[0-9]') != 0)
                THEN REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY BLOCK_3, '[^\n]+', 1, 4), '[^:]+', 1, 2)
                ELSE NULL
            END AS C4
        FROM(
            SELECT *,
                CASE
                    WHEN (NULLIF(BLOCK_2, '') IS NOT NULL AND REGEXP_INSTR(BINARY BLOCK_2, 'B[0-9]') != 0)
                    THEN REPLACE(
                            REPLACE(BLOCK_2, SUBSTR(BLOCK_2, REGEXP_INSTR(BINARY BLOCK_2, '[(]')), ''), SUBSTR(BLOCK_2, 1, INSTR(BLOCK_2, ') ')), ''
                        )
                    ELSE NULL
                END AS B1,
                CASE
                    WHEN (NULLIF(BLOCK_2, '') IS NOT NULL AND REGEXP_INSTR(BINARY BLOCK_2, 'B[0-9]') != 0)
                    THEN REPLACE(
                            REPLACE(BLOCK_2, SUBSTR(BLOCK_2, REGEXP_INSTR(BINARY BLOCK_2, '[(]')), ''), SUBSTR(BLOCK_2, 1, INSTR(BLOCK_2, ') ')), ''
                        )
                    ELSE NULL
                END AS B2
            FROM(
                SELECT *,
                    CASE
                        WHEN (NULLIF(BLOCK_2, '') IS NOT NULL AND REGEXP_INSTR(BINARY BLOCK_2, 'B[0-9]') = 0)
                        THEN REPLACE(
                            REPLACE(BLOCK_2, SUBSTR(BLOCK_2, REGEXP_INSTR(BINARY BLOCK_2, '[(]')), ''), SUBSTR(BLOCK_2, 1, INSTR(BLOCK_2, ') ')), ''
                        )
                        ELSE NULL
                    END AS BLOCK_B1,
                    CASE
                        WHEN (NULLIF(BLOCK_3, '') IS NOT NULL AND REGEXP_INSTR(BINARY BLOCK_3, 'C[0-9]') = 0)
                        THEN REPLACE(
                            REPLACE(BLOCK_3, SUBSTR(BLOCK_3, REGEXP_INSTR(BINARY BLOCK_3, '[(]')), ''), SUBSTR(BLOCK_3, 1, INSTR(BLOCK_3, ') ')), ''
                        )
                        ELSE NULL
                    END AS BLOCK_C1,
                    CASE
                        WHEN (NULLIF(BLOCK_4, '') IS NOT NULL)
                        THEN REPLACE(
                            REPLACE(BLOCK_4, SUBSTR(BLOCK_4, REGEXP_INSTR(BINARY BLOCK_4, '[(]')), ''), SUBSTR(BLOCK_4, 1, INSTR(BLOCK_4, ') ')), ''
                        )
                        ELSE NULL
                    END AS BLOCK_D1
                FROM test_type3_block_01
            ) a
        ) a
    ) a
) a