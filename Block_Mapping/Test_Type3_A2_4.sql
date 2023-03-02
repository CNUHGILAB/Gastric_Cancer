SELECT
    원무접수ID,
    SLIDE_KEYS1,
    SLIDE_KEYS2,
    SLIDE_KEYS3,
    SLIDE_KEYS4,
    SLIDE_KEYS5
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(SLIDE_KEYS_R1, '') IS NOT NULL AND NULLIF(SLIDE_KEYS1, '') IS NULL)
            THEN SLIDE_KEYS_R1
            ELSE NULL
        END AS SLIDE_KEYS5
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(SLIDE_KEYS_R1_2, '') IS NOT NULL)
                THEN SLIDE_KEYS_R1_2
                ELSE NULL
            END AS SLIDE_KEYS1,
            CASE
                WHEN (NULLIF(SLIDE_KEYS_R2_2, '') IS NOT NULL AND INSTR(SLIDE_KEYS_R2_2, ' - ') != 0)
                THEN REPLACE(SLIDE_KEYS_R2_2, ' - ', '')
                ELSE SLIDE_KEYS_R2_2
            END AS SLIDE_KEYS2,
            CASE
                WHEN (NULLIF(SLIDE_KEYS_R3_2, '') IS NOT NULL AND INSTR(SLIDE_KEYS_R3_2, '- ') != 0)
                THEN REPLACE(SLIDE_KEYS_R3_2, '- ', '')
                ELSE SLIDE_KEYS_R3_2
            END AS SLIDE_KEYS3,
            CASE
                WHEN (NULLIF(SLIDE_KEYS_R4_2, '') IS NOT NULL AND INSTR(SLIDE_KEYS_R4_2, ' - ') != 0)
                THEN REPLACE(SLIDE_KEYS_R4_2, ' - ', '')
                ELSE SLIDE_KEYS_R4_2
            END AS SLIDE_KEYS4
        FROM(
            SELECT *,
                CASE
                    WHEN (NULLIF(SLIDE_KEYS_R1_1, '') IS NOT NULL)
                    THEN REPLACE(SLIDE_KEYS_R1_1, '; ', ';')
                    WHEN (NULLIF(SLIDE_KEYS_R1_1, '') IS NOT NULL)
                    THEN REPLACE(SLIDE_KEYS_R1_1, ' ;', ';')
                    ELSE NULL
                END AS SLIDE_KEYS_R1_2,
                CASE
                    WHEN (NULLIF(SLIDE_KEYS_R2_1, '') IS NOT NULL)
                    THEN REPLACE(SLIDE_KEYS_R2_1, '; ', ';')
                    WHEN (NULLIF(SLIDE_KEYS_R2_1, '') IS NOT NULL)
                    THEN REPLACE(SLIDE_KEYS_R2_1, ' ;', ';')
                    ELSE NULL
                END AS SLIDE_KEYS_R2_2,
                CASE
                    WHEN (NULLIF(SLIDE_KEYS_R3_1, '') IS NOT NULL)
                    THEN REPLACE(SLIDE_KEYS_R3_1, '; ', ';')
                    WHEN (NULLIF(SLIDE_KEYS_R3_1, '') IS NOT NULL)
                    THEN REPLACE(SLIDE_KEYS_R3_1, ' ;', ';')
                    ELSE NULL
                END AS SLIDE_KEYS_R3_2,
                CASE
                    WHEN (NULLIF(SLIDE_KEYS_R4_1, '') IS NOT NULL)
                    THEN REPLACE(SLIDE_KEYS_R4_1, '; ', ';')
                    WHEN (NULLIF(SLIDE_KEYS_R4_1, '') IS NOT NULL)
                    THEN REPLACE(SLIDE_KEYS_R4_1, ' ;', ';')
                    ELSE NULL
                END AS SLIDE_KEYS_R4_2
            FROM(
                SELECT *,
                    CASE
                        WHEN (NULLIF(SLIDE_KEYS_R1, '') IS NOT NULL)
                        THEN SUBSTR(SLIDE_KEYS_R1, INSTR(SLIDE_KEYS_R1, REGEXP_SUBSTR(SLIDE_KEYS_R1, '[^\n]+', 1, 2)))
                        ELSE NULL
                    END AS SLIDE_KEYS_R1_1,
                    CASE
                        WHEN (NULLIF(SLIDE_KEYS_R2, '') IS NOT NULL)
                        THEN SUBSTR(SLIDE_KEYS_R2, INSTR(SLIDE_KEYS_R2, REGEXP_SUBSTR(SLIDE_KEYS_R2, '[^\n]+', 1, 2)))
                        ELSE NULL
                    END AS SLIDE_KEYS_R2_1,
                    CASE
                        WHEN (NULLIF(SLIDE_KEYS_R3, '') IS NOT NULL)
                        THEN REGEXP_SUBSTR(SLIDE_KEYS_R3, '[^\n]+', 1, 2)
                        #THEN SUBSTR(SLIDE_KEYS_R3, INSTR(SLIDE_KEYS_R3, REGEXP_SUBSTR(SLIDE_KEYS_R3, '[^\n]+', 1, 2)))
                        ELSE NULL
                    END AS SLIDE_KEYS_R3_1,
                    CASE
                        WHEN (NULLIF(SLIDE_KEYS_R4, '') IS NOT NULL)
                        THEN REGEXP_SUBSTR(SLIDE_KEYS_R4, '[^\n]+', 1, 2)
                        #THEN SUBSTR(SLIDE_KEYS_R4, INSTR(SLIDE_KEYS_R4, REGEXP_SUBSTR(SLIDE_KEYS_R4, '[^\n]+', 1, 2)))
                        ELSE NULL
                    END AS SLIDE_KEYS_R4_1
                FROM test_type3_a2_3
            ) a
        ) a
    ) a
) a