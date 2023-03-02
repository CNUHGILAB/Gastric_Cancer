SELECT
    DISTINCT (원무접수ID),
    SLIDE_KEYS_R1,
    SLIDE_KEYS_R2,
    SLIDE_KEYS_R3,
    PARAFFIN_BLOCK_KEYS
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(SLIDE_KEYS_R, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_R2, '') IS NULL AND NULLIF(SLIDE_KEYS_R3, '') IS NULL)
            THEN SLIDE_KEYS_R
            ELSE NULL
        END AS SLIDE_KEYS_R1
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(SLIDE_KEYS_R, '') IS NOT NULL AND REGEXP_INSTR(SLIDE_KEYS_R, '^[(]') != 0 AND NULLIF(SLIDE_KEYS_R3, '') IS NULL)
                THEN SLIDE_KEYS_R
                ELSE NULL
            END AS SLIDE_KEYS_R2
        FROM(
            SELECT *,
                CASE
                    WHEN (REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_R, '[^;]+', 1, 1), '^[A-Z]') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_R, '[^;]+', 1, 1), '[0-9]$') != 0)
                    THEN SLIDE_KEYS_R
                    ELSE NULL
                END AS SLIDE_KEYS_R3
            FROM(
                SELECT *,
                    CASE
                        WHEN INSTR(BINARY SLIDE_KEYS, ';RG;') != 0
                        THEN REPLACE(BINARY SLIDE_KEYS, ';RG;', ';RG0;')
                        WHEN REGEXP_SUBSTR(BINARY SLIDE_KEYS, '[^;]*$') = 'RG'
                        THEN CONCAT(SLIDE_KEYS, '0')
                        WHEN INSTR(BINARY SLIDE_KEYS, ';A;') != 0
                        THEN REPLACE(BINARY SLIDE_KEYS, ';A;', ';A0;')
                        WHEN REGEXP_SUBSTR(BINARY SLIDE_KEYS, '[^;]*$') = 'A'
                        THEN CONCAT(SLIDE_KEYS, '0')
                        ELSE SLIDE_KEYS
                    END AS SLIDE_KEYS_R
                FROM(
                    SELECT *,
                        CASE
                            WHEN (REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) = 's')
                            THEN SUBSTR(Slide_keys_Re, INSTR(Slide_keys_Re, REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 2)))
                            WHEN (REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) != 's')
                            THEN SUBSTR(Slide_keys_Re, INSTR(Slide_keys_Re, REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 1)))
                            ELSE NULL
                        END AS SLIDE_KEYS,
                        CASE
                            WHEN (NULLIF(Re_Paraffin_block_keys, '') IS NOT NULL)
                            THEN SUBSTR(Re_Paraffin_block_keys, INSTR(Re_Paraffin_block_keys, REGEXP_SUBSTR(Re_Paraffin_block_keys, '[^;]+', 2, 1)))
                            ELSE NULL
                        END AS PARAFFIN_BLOCK_KEYS
                    FROM test_type1_a2_2
                ) a
            ) a
        ) a
    ) a
) a