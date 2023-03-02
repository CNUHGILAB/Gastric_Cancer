SELECT
    DISTINCT (원무접수ID),
    PARAFFIN_BLOCK_KEYS_1,
    PARAFFIN_BLOCK_KEYS_2,
    PARAFFIN_BLOCK_KEYS_3
FROM(
    SELECT *,
        CASE
            WHEN INSTR(BINARY PARAFFIN_BLOCK_KEYS4, '-AA') != 0
            THEN REPLACE(BINARY PARAFFIN_BLOCK_KEYS4, '-AA', '-A')
            ELSE PARAFFIN_BLOCK_KEYS4
        END AS PARAFFIN_BLOCK_KEYS_1
    FROM(
        SELECT *,
            CASE
                WHEN INSTR(BINARY PARAFFIN_BLOCK_KEYS3, 'A-') != 0
                THEN REPLACE(BINARY PARAFFIN_BLOCK_KEYS3, 'A-', 'A1-')
                ELSE PARAFFIN_BLOCK_KEYS3
            END AS PARAFFIN_BLOCK_KEYS4
        FROM(
            SELECT *,
                CASE
                    WHEN INSTR(BINARY PARAFFIN_BLOCK_KEYS2, 'AA-') != 0
                    THEN REPLACE(BINARY PARAFFIN_BLOCK_KEYS2, 'AA', 'A1')
                    ELSE PARAFFIN_BLOCK_KEYS2
                END AS PARAFFIN_BLOCK_KEYS3
            FROM(
                SELECT *,
                    CASE
                        WHEN INSTR(BINARY PARAFFIN_BLOCK_KEYS1, '8A') != 0
                        THEN REPLACE(BINARY PARAFFIN_BLOCK_KEYS1, '8A', 'A8')
                        ELSE PARAFFIN_BLOCK_KEYS1
                    END AS PARAFFIN_BLOCK_KEYS2
                FROM(
                    SELECT *,
                        CASE
                            WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_R1, '') IS NOT NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_1_1, '') IS NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_1_2, '') IS NULL)
                            THEN REPLACE(PARAFFIN_BLOCK_KEYS_R1, ' ;', ';')
                            WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_R1, '') IS NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_1_1, '') IS NOT NULL)
                            THEN PARAFFIN_BLOCK_KEYS_1_1
                            WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_R1, '') IS NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_1_2, '') IS NOT NULL)
                            THEN PARAFFIN_BLOCK_KEYS_1_2
                            ELSE NULL
                        END AS PARAFFIN_BLOCK_KEYS1,
                        CASE
                            WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_R2, '') IS NOT NULL)
                            THEN PARAFFIN_BLOCK_KEYS_R2
                            ELSE NULL
                        END AS PARAFFIN_BLOCK_KEYS_2,
                        CASE
                            WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_R3, '') IS NOT NULL)
                            THEN PARAFFIN_BLOCK_KEYS_R3
                            ELSE NULL
                        END AS PARAFFIN_BLOCK_KEYS_3
                    FROM test_type2_a2_5
                ) a
            ) a
        ) a
    ) a
) a