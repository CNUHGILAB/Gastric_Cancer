SELECT
    원무접수ID,
    환자번호,
    SAMPLE_BLOCK
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(SAMPLE_BLOCK1, '') IS NOT NULL AND INSTR(SAMPLE_BLOCK1, '#2') != 0)
            THEN SUBSTR(SAMPLE_BLOCK1, INSTR(SAMPLE_BLOCK1, '#2'))
            WHEN (NULLIF(SAMPLE_BLOCK1, '') IS NOT NULL AND INSTR(SAMPLE_BLOCK1, 'No2') != 0)
            THEN SUBSTR(SAMPLE_BLOCK1, INSTR(SAMPLE_BLOCK1, 'No2'))
            WHEN (NULLIF(SAMPLE_BLOCK1, '') IS NOT NULL AND INSTR(SAMPLE_BLOCK1, '2)') != 0)
            THEN SUBSTR(SAMPLE_BLOCK1, INSTR(SAMPLE_BLOCK1, '2)'))
            ELSE NULL
        END AS SAMPLE_BLOCK
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(Type_5, '') IS NOT NULL AND INSTR(Type_5, '(B)') != 0)
                THEN Type_5
                WHEN (NULLIF(Type_5, '') IS NOT NULL AND INSTR(Type_5, 'block B') != 0)
                THEN Type_5
                ELSE NULL
            END AS SAMPLE_BLOCK1
        FROM data_type_5
    ) a
) a