SELECT
    원무접수ID,
    환자번호,
    SAMPLE_BLOCK,
    BLOCK_A
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(SAMPLE_ONLY_A, '') IS NOT NULL)
            THEN SAMPLE_ONLY_A
            WHEN (NULLIF(SAMPLE_BLOCK1, '') IS NOT NULL)
            THEN REPLACE(SAMPLE_BLOCK1, SUBSTR(BINARY SAMPLE_BLOCK1, INSTR(BINARY SAMPLE_BLOCK1, 'B')), '')
            ELSE NULL
        END AS BLOCK_A
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(SAMPLE_BLOCK1, '') IS NOT NULL)
                THEN REPLACE(SUBSTR(BINARY SAMPLE_BLOCK1, INSTR(BINARY SAMPLE_BLOCK1, 'B')), SUBSTR(SAMPLE_BLOCK1, INSTR(BINARY SAMPLE_BLOCK1, 'Gross')), '')
                ELSE NULL
            END AS SAMPLE_BLOCK
        FROM(
            SELECT *,
                CASE
                    WHEN (NULLIF(SAMPLE_BLOCK1, '') IS NULL)
                    THEN SAMPLE_BLOCK0
                    ELSE NULL
                END AS SAMPLE_ONLY_A
            FROM(
                SELECT *,
                    CASE
                        WHEN (INSTR(BINARY SAMPLE_BLOCK0, 'A)') != 0 AND INSTR(BINARY SAMPLE_BLOCK0, 'B') != 0)
                        THEN SAMPLE_BLOCK0
                        ELSE NULL
                    END AS SAMPLE_BLOCK1
                FROM(
                    SELECT *,
                        CASE
                            WHEN (NULLIF(SAMPLE_BLOCK0, '') IS NULL)
                            THEN Type_3
                            ELSE NULL
                        END AS SAMPLE_BLOCK_ELSE
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (INSTR(Type_3, 'Slide key') != 0)
                                THEN SUBSTR(Type_3, INSTR(Type_3, 'Slide key'))
                                ELSE NULL
                            END AS SAMPLE_BLOCK0
                        FROM data_type_3
                    ) a
                ) a
            ) a
        ) a
    ) a
) a