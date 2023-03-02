SELECT
    원무접수ID,
    환자번호,
    BLOCK_A,
    SAMPLE_BLOCK
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(SAMPLE_BLOCK2, '') IS NOT NULL)
            THEN SAMPLE_BLOCK2
            ELSE NULL
        END AS BLOCK_A
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(SAMPLE_BLOCK1, '') IS NOT NULL AND INSTR(SAMPLE_BLOCK1, '2.') != 0)
                THEN SUBSTR(SAMPLE_BLOCK1, INSTR(SAMPLE_BLOCK1, '2.'))
                WHEN (NULLIF(SAMPLE_BLOCK1, '') IS NOT NULL AND INSTR(SAMPLE_BLOCK1, '2)') != 0)
                THEN SUBSTR(SAMPLE_BLOCK1, INSTR(SAMPLE_BLOCK1, '2)'))
                ELSE NULL
            END AS SAMPLE_BLOCK
        FROM(
            SELECT *,
                CASE
                    WHEN (NULLIF(SAMPLE_BLOCK0, '') IS NOT NULL AND INSTR(SAMPLE_BLOCK0, 'Block B') != 0)
                    THEN SAMPLE_BLOCK0
                    ELSE NULL
                END AS SAMPLE_BLOCK1,
                CASE
                    WHEN (NULLIF(SAMPLE_BLOCK0, '') IS NOT NULL AND INSTR(SAMPLE_BLOCK0, 'Block B') = 0)
                    THEN SAMPLE_BLOCK0
                    ELSE NULL
                END AS SAMPLE_BLOCK2
            FROM(
                SELECT *,
                    CASE
                        WHEN (NULLIF(Type_4, '') IS NOT NULL AND INSTR(Type_4, 'paraffin') != 0)
                        THEN SUBSTR(Type_4, INSTR(Type_4, 'paraffin'))
                        WHEN (NULLIF(Type_4, '') IS NOT NULL AND INSTR(Type_4, 'Slide') != 0)
                        THEN SUBSTR(Type_4, INSTR(Type_4, 'Slide'))
                        ELSE NULL
                    END AS SAMPLE_BLOCK0
                FROM data_type_4
            ) a
        ) a
    ) a
) a