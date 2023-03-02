SELECT
    DISTINCT (원무접수ID),
    PARAFFIN_BLOCK_KEYS_R1,
    PARAFFIN_BLOCK_KEYS_R2,
    PARAFFIN_BLOCK_KEYS_R3
FROM(
    SELECT *,
        #'설명;A+숫자'로 시작하는 Paraffin Block Keys
        CASE
            WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_R, '') IS NOT NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_R2, '') IS NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_R3, '') IS NULL)
            THEN PARAFFIN_BLOCK_KEYS_R
            ELSE NULL
        END AS PARAFFIN_BLOCK_KEYS_R1
    FROM(
        SELECT *,
            #'A+숫자'로 시작하는 Paraffin Block Keys
            CASE
                WHEN (REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_R, '[^;]+', 1, 1), '^[A-Z]') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_R, '[^;]+', 1, 1), '[0-9]$') != 0)
                THEN PARAFFIN_BLOCK_KEYS_R
                ELSE NULL
            END AS PARAFFIN_BLOCK_KEYS_R2
        FROM(
            SELECT *,
                CASE
                    WHEN INSTR(BINARY PARAFFIN_BLOCK_KEYS, ';RG;') != 0
                    THEN REPLACE(BINARY PARAFFIN_BLOCK_KEYS, ';RG;', ';RG0;')
                    WHEN REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS, '[^;]*$') = 'RG'
                    THEN CONCAT(PARAFFIN_BLOCK_KEYS, '0')
                    WHEN INSTR(BINARY PARAFFIN_BLOCK_KEYS, ';A;') != 0
                    THEN REPLACE(BINARY PARAFFIN_BLOCK_KEYS, ';A;', ';A0;')
                    WHEN REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS, '[^;]*$') = 'A'
                    THEN CONCAT(PARAFFIN_BLOCK_KEYS, '0')
                    ELSE PARAFFIN_BLOCK_KEYS
                END AS PARAFFIN_BLOCK_KEYS_R
            FROM(
                SELECT *,
                    CASE
                        WHEN INSTR(BINARY Paraffin_Block_keys_Re, 'A') != 0
                        THEN Paraffin_Block_keys_Re
                        ELSE NULL
                    END AS PARAFFIN_BLOCK_KEYS,
                    #A 없이 명시되어 있는 Paraffin Block Keys
                    CASE
                        WHEN INSTR(BINARY Paraffin_Block_keys_Re, 'A') = 0
                        THEN Paraffin_Block_keys_Re
                        ELSE NULL
                    END AS PARAFFIN_BLOCK_KEYS_R3
                FROM test_type2_a2_2
            ) a
        ) a
    ) a
) a