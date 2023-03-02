SELECT
    원무접수ID,
    PARAFFIN_BLOCK_KEYS_R1,
    PARAFFIN_BLOCK_KEYS_R2,
    SLIDE_KEYS_R1,
    SLIDE_KEYS_R2
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(Paraffin_block_keys_Re, '') IS NOT NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_R1, '') IS NULL)
            THEN Paraffin_block_keys_Re
            ELSE NULL
        END AS PARAFFIN_BLOCK_KEYS_R2,
        CASE
            WHEN (NULLIF(Slide_keys_Re, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_R2, '') IS NULL)
            THEN Slide_keys_Re
            ELSE NULL
        END AS SLIDE_KEYS_R1
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(Paraffin_block_keys_Re, '') IS NOT NULL AND REGEXP_INSTR(BINARY Paraffin_block_keys_Re, 'A') != 0 AND REGEXP_INSTR(BINARY Paraffin_block_keys_Re, '[;][0-9][-][A]') = 0)
                THEN Paraffin_block_keys_Re
                ELSE NULL
            END AS PARAFFIN_BLOCK_KEYS_R1,
            CASE
                WHEN (NULLIF(Slide_keys_Re, '') IS NOT NULL AND REGEXP_INSTR(BINARY Slide_keys_Re, 'A') = 0)
                THEN Slide_keys_Re
                ELSE NULL
            END AS SLIDE_KEYS_R2
        FROM test_type4_a2_2
    ) a
) a