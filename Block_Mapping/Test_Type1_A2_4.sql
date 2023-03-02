SELECT
    DISTINCT (원무접수ID),
    SLIDE_KEYS1,
    SLIDE_KEYS2,
    SLIDE_KEYS3,
    SLIDE_KEYS4,
    PARAFFIN_BLOCK_KEYS_1
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(SLIDE_KEYS_R1, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_R1_RE, '') IS NOT NULL)
            THEN SLIDE_KEYS_R1_RE
            WHEN (NULLIF(SLIDE_KEYS_R1, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_RE_3, '') IS NOT NULL)
            THEN REPLACE(SLIDE_KEYS_RE_3, ' ;', ';')
            WHEN (NULLIF(SLIDE_KEYS_R1, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_R1_RE3, '') IS NOT NULL)
            THEN SLIDE_KEYS_R1_RE3
            WHEN (NULLIF(SLIDE_KEYS_R1, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_RE2, '') IS NOT NULL)
            THEN NULL
            ELSE SLIDE_KEYS_R1
        END AS SLIDE_KEYS1,
        CASE
            WHEN (NULLIF(SLIDE_KEYS_ELSE3_3, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_RE2, '') IS NOT NULL)
            THEN NULL
            ELSE SLIDE_KEYS_RE2
        END AS SLIDE_KEYS2
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(SLIDE_KEYS_ELSE3_3, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_RE2, '') IS NOT NULL)
                THEN LEFT(SLIDE_KEYS_ELSE3_3, LENGTH(SLIDE_KEYS_ELSE3_3) - 1)
                ELSE NULL
            END AS SLIDE_KEYS_R1_RE3,
            CASE
                WHEN (NULLIF(SLIDE_KEYS_RE_2, '') IS NOT NULL)
                THEN REPLACE(SLIDE_KEYS_R1_RE2, '; ', ';')
                ELSE NULL
            END AS SLIDE_KEYS_RE_3
        FROM(
            SELECT *,
                CASE
                    WHEN (NULLIF(SLIDE_KEYS_R1, '') IS NOT NULL AND REGEXP_INSTR(BINARY REGEXP_SUBSTR(SLIDE_KEYS_R1, '[^;]*$'), '[A-Z]{1,2}[0-9]{1,3}') = 0 AND NULLIF(SLIDE_KEYS_R1_RE, '') IS NULL)
                    THEN SLIDE_KEYS_R1
                    ELSE NULL
                END AS SLIDE_KEYS_RE2,
                CASE
                    WHEN (NULLIF(SLIDE_KEYS_R1, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_R1_RE2, '') IS NOT NULL)
                    THEN REPLACE(SLIDE_KEYS_R1_RE2, ' ;', ';')
                    WHEN (NULLIF(SLIDE_KEYS_R1, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_R1_RE, '') IS NOT NULL)
                    THEN NULL
                    ELSE NULL
                END AS SLIDE_KEYS_RE_2,
                CASE
                    WHEN (NULLIF(SLIDE_KEYS_R2, '') IS NOT NULL)
                    THEN SLIDE_KEYS_R2
                    ELSE NULL
                END AS SLIDE_KEYS3,
                CASE
                    WHEN (NULLIF(SLIDE_KEYS_R3, '') IS NOT NULL)
                    THEN SLIDE_KEYS_R3
                    ELSE NULL
                END AS SLIDE_KEYS4,
                CASE
                    WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_RE, '') IS NOT NULL)
                    THEN REPLACE(PARAFFIN_BLOCK_KEYS_RE, ' ;', ';')
                    ELSE PARAFFIN_BLOCK_KEYS
                END AS PARAFFIN_BLOCK_KEYS_1
            FROM(
                SELECT *,
                    CASE
                        WHEN (NULLIF(EX1_A1_1, '') IS NOT NULL AND NULLIF(EX2_A2_1, '') IS NOT NULL AND NULLIF(EX3_A3_1, '') IS NULL AND NULLIF(EX4_A4_1, '') IS NULL AND NULLIF(EX5_A5_1, '') IS NULL AND NULLIF(EX6_A6_1, '') IS NULL AND NULLIF(EX7_A7_1, '') IS NULL AND NULLIF(EX8_A8_1, '') IS NULL AND NULLIF(EX9_A9_1, '') IS NULL AND NULLIF(EX10_A10_1, '') IS NULL AND NULLIF(EX11_A11_1, '') IS NULL AND NULLIF(EX12_A12_1, '') IS NULL)
                        THEN CONCAT(
                            CONCAT(
                                EX1_A1_1, ';'
                            ), EX2_A2_1
                        )
                        WHEN (NULLIF(EX1_A1_1, '') IS NOT NULL AND NULLIF(EX2_A2_1, '') IS NOT NULL AND NULLIF(EX3_A3_1, '') IS NOT NULL AND NULLIF(EX4_A4_1, '') IS NULL AND NULLIF(EX5_A5_1, '') IS NULL AND NULLIF(EX6_A6_1, '') IS NULL AND NULLIF(EX7_A7_1, '') IS NULL AND NULLIF(EX8_A8_1, '') IS NULL AND NULLIF(EX9_A9_1, '') IS NULL AND NULLIF(EX10_A10_1, '') IS NULL AND NULLIF(EX11_A11_1, '') IS NULL AND NULLIF(EX12_A12_1, '') IS NULL)
                        THEN CONCAT(
                            CONCAT(
                                CONCAT(
                                    CONCAT(
                                        EX1_A1_1, ';'
                                    ), EX2_A2_1
                                ), ';'
                            ), EX3_A3_1
                        )
                        WHEN (NULLIF(EX1_A1_1, '') IS NOT NULL AND NULLIF(EX2_A2_1, '') IS NOT NULL AND NULLIF(EX3_A3_1, '') IS NOT NULL AND NULLIF(EX4_A4_1, '') IS NOT NULL AND NULLIF(EX5_A5_1, '') IS NULL AND NULLIF(EX6_A6_1, '') IS NULL AND NULLIF(EX7_A7_1, '') IS NULL AND NULLIF(EX8_A8_1, '') IS NULL AND NULLIF(EX9_A9_1, '') IS NULL AND NULLIF(EX10_A10_1, '') IS NULL AND NULLIF(EX11_A11_1, '') IS NULL AND NULLIF(EX12_A12_1, '') IS NULL)
                        THEN CONCAT(
                            CONCAT(
                                CONCAT(
                                    CONCAT(
                                        CONCAT(
                                            CONCAT(
                                                EX1_A1_1, ';'
                                            ), EX2_A2_1
                                        ), ';'
                                    ), EX3_A3_1
                                ), ';'
                            ), EX4_A4_1
                        )
                        WHEN (NULLIF(EX1_A1_1, '') IS NOT NULL AND NULLIF(EX2_A2_1, '') IS NOT NULL AND NULLIF(EX3_A3_1, '') IS NOT NULL AND NULLIF(EX4_A4_1, '') IS NOT NULL AND NULLIF(EX5_A5_1, '') IS NOT NULL AND NULLIF(EX6_A6_1, '') IS NULL AND NULLIF(EX7_A7_1, '') IS NULL AND NULLIF(EX8_A8_1, '') IS NULL AND NULLIF(EX9_A9_1, '') IS NULL AND NULLIF(EX10_A10_1, '') IS NULL AND NULLIF(EX11_A11_1, '') IS NULL AND NULLIF(EX12_A12_1, '') IS NULL)
                        THEN CONCAT(
                            CONCAT(
                                CONCAT(
                                    CONCAT(
                                        CONCAT(
                                            CONCAT(
                                                CONCAT(
                                                    CONCAT(
                                                        EX1_A1_1, ';'
                                                    ), EX2_A2_1
                                                ), ';'
                                            ), EX3_A3_1
                                        ), ';'
                                    ), EX4_A4_1
                                ), ';'
                            ), EX5_A5_1
                        )
                        WHEN (NULLIF(EX1_A1_1, '') IS NOT NULL AND NULLIF(EX2_A2_1, '') IS NOT NULL AND NULLIF(EX3_A3_1, '') IS NOT NULL AND NULLIF(EX4_A4_1, '') IS NOT NULL AND NULLIF(EX5_A5_1, '') IS NOT NULL AND NULLIF(EX6_A6_1, '') IS NOT NULL AND NULLIF(EX7_A7_1, '') IS NULL AND NULLIF(EX8_A8_1, '') IS NULL AND NULLIF(EX9_A9_1, '') IS NULL AND NULLIF(EX10_A10_1, '') IS NULL AND NULLIF(EX11_A11_1, '') IS NULL AND NULLIF(EX12_A12_1, '') IS NULL)
                        THEN CONCAT(
                            CONCAT(
                                CONCAT(
                                    CONCAT(
                                        CONCAT(
                                            CONCAT(
                                                CONCAT(
                                                    CONCAT(
                                                        CONCAT(
                                                            CONCAT(
                                                                EX1_A1_1, ';'
                                                            ), EX2_A2_1
                                                        ), ';'
                                                    ), EX3_A3_1
                                                ), ';'
                                            ), EX4_A4_1
                                        ), ';'
                                    ), EX5_A5_1
                                ), ';'
                            ), EX6_A6_1
                        )
                        WHEN (NULLIF(EX1_A1_1, '') IS NOT NULL AND NULLIF(EX2_A2_1, '') IS NOT NULL AND NULLIF(EX3_A3_1, '') IS NOT NULL AND NULLIF(EX4_A4_1, '') IS NOT NULL AND NULLIF(EX5_A5_1, '') IS NOT NULL AND NULLIF(EX6_A6_1, '') IS NOT NULL AND NULLIF(EX7_A7_1, '') IS NOT NULL AND NULLIF(EX8_A8_1, '') IS NULL AND NULLIF(EX9_A9_1, '') IS NULL AND NULLIF(EX10_A10_1, '') IS NULL AND NULLIF(EX11_A11_1, '') IS NULL AND NULLIF(EX12_A12_1, '') IS NULL)
                        THEN CONCAT(
                            CONCAT(
                                CONCAT(
                                    CONCAT(
                                        CONCAT(
                                            CONCAT(
                                                CONCAT(
                                                    CONCAT(
                                                        CONCAT(
                                                            CONCAT(
                                                                CONCAT(
                                                                    CONCAT(
                                                                        EX1_A1_1, ';'
                                                                    ), EX2_A2_1
                                                                ), ';'
                                                            ), EX3_A3_1
                                                        ), ';'
                                                    ), EX4_A4_1
                                                ), ';'
                                            ), EX5_A5_1
                                        ), ';'
                                    ), EX6_A6_1
                                ), ';'
                            ), EX7_A7_1
                        )
                        WHEN (NULLIF(EX1_A1_1, '') IS NOT NULL AND NULLIF(EX2_A2_1, '') IS NOT NULL AND NULLIF(EX3_A3_1, '') IS NOT NULL AND NULLIF(EX4_A4_1, '') IS NOT NULL AND NULLIF(EX5_A5_1, '') IS NOT NULL AND NULLIF(EX6_A6_1, '') IS NOT NULL AND NULLIF(EX7_A7_1, '') IS NOT NULL AND NULLIF(EX8_A8_1, '') IS NOT NULL AND NULLIF(EX9_A9_1, '') IS NULL AND NULLIF(EX10_A10_1, '') IS NULL AND NULLIF(EX11_A11_1, '') IS NULL AND NULLIF(EX12_A12_1, '') IS NULL)
                        THEN CONCAT(
                            CONCAT(
                                CONCAT(
                                    CONCAT(
                                        CONCAT(
                                            CONCAT(
                                                CONCAT(
                                                    CONCAT(
                                                        CONCAT(
                                                            CONCAT(
                                                                CONCAT(
                                                                    CONCAT(
                                                                        CONCAT(
                                                                            CONCAT(
                                                                                EX1_A1_1, ';'
                                                                            ), EX2_A2_1
                                                                        ), ';'
                                                                    ), EX3_A3_1
                                                                ), ';'
                                                            ), EX4_A4_1
                                                        ), ';'
                                                    ), EX5_A5_1
                                                ), ';'
                                            ), EX6_A6_1
                                        ), ';'
                                    ), EX7_A7_1
                                ), ';'
                            ), EX8_A8_1
                        )
                        WHEN (NULLIF(EX1_A1_1, '') IS NOT NULL AND NULLIF(EX2_A2_1, '') IS NOT NULL AND NULLIF(EX3_A3_1, '') IS NOT NULL AND NULLIF(EX4_A4_1, '') IS NOT NULL AND NULLIF(EX5_A5_1, '') IS NOT NULL AND NULLIF(EX6_A6_1, '') IS NOT NULL AND NULLIF(EX7_A7_1, '') IS NOT NULL AND NULLIF(EX8_A8_1, '') IS NOT NULL AND NULLIF(EX9_A9_1, '') IS NOT NULL AND NULLIF(EX10_A10_1, '') IS NULL AND NULLIF(EX11_A11_1, '') IS NULL AND NULLIF(EX12_A12_1, '') IS NULL)
                        THEN CONCAT(
                            CONCAT(
                                CONCAT(
                                    CONCAT(
                                        CONCAT(
                                            CONCAT(
                                                CONCAT(
                                                    CONCAT(
                                                        CONCAT(
                                                            CONCAT(
                                                                CONCAT(
                                                                    CONCAT(
                                                                        CONCAT(
                                                                            CONCAT(
                                                                                CONCAT(
                                                                                    CONCAT(
                                                                                        EX1_A1_1, ';'
                                                                                    ), EX2_A2_1
                                                                                ), ';'
                                                                            ), EX3_A3_1
                                                                        ), ';'
                                                                    ), EX4_A4_1
                                                                ), ';'
                                                            ), EX5_A5_1
                                                        ), ';'
                                                    ), EX6_A6_1
                                                ), ';'
                                            ), EX7_A7_1
                                        ), ';'
                                    ), EX8_A8_1
                                ), ';'
                            ), EX9_A9_1
                        )
                        WHEN (NULLIF(EX1_A1_1, '') IS NOT NULL AND NULLIF(EX2_A2_1, '') IS NOT NULL AND NULLIF(EX3_A3_1, '') IS NOT NULL AND NULLIF(EX4_A4_1, '') IS NOT NULL AND NULLIF(EX5_A5_1, '') IS NOT NULL AND NULLIF(EX6_A6_1, '') IS NOT NULL AND NULLIF(EX7_A7_1, '') IS NOT NULL AND NULLIF(EX8_A8_1, '') IS NOT NULL AND NULLIF(EX9_A9_1, '') IS NOT NULL AND NULLIF(EX10_A10_1, '') IS NOT NULL AND NULLIF(EX11_A11_1, '') IS NULL AND NULLIF(EX12_A12_1, '') IS NULL)
                        THEN CONCAT(
                            CONCAT(
                                CONCAT(
                                    CONCAT(
                                        CONCAT(
                                            CONCAT(
                                                CONCAT(
                                                    CONCAT(
                                                        CONCAT(
                                                            CONCAT(
                                                                CONCAT(
                                                                    CONCAT(
                                                                        CONCAT(
                                                                            CONCAT(
                                                                                CONCAT(
                                                                                    CONCAT(
                                                                                        CONCAT(
                                                                                            CONCAT(
                                                                                                EX1_A1_1, ';'
                                                                                            ), EX2_A2_1
                                                                                        ), ';'
                                                                                    ), EX3_A3_1
                                                                                ), ';'
                                                                            ), EX4_A4_1
                                                                        ), ';'
                                                                    ), EX5_A5_1
                                                                ), ';'
                                                            ), EX6_A6_1
                                                        ), ';'
                                                    ), EX7_A7_1
                                                ), ';'
                                            ), EX8_A8_1
                                        ), ';'
                                    ), EX9_A9_1
                                ), ';'
                            ), EX10_A10_1
                        )
                        WHEN (NULLIF(EX1_A1_1, '') IS NOT NULL AND NULLIF(EX2_A2_1, '') IS NOT NULL AND NULLIF(EX3_A3_1, '') IS NOT NULL AND NULLIF(EX4_A4_1, '') IS NOT NULL AND NULLIF(EX5_A5_1, '') IS NOT NULL AND NULLIF(EX6_A6_1, '') IS NOT NULL AND NULLIF(EX7_A7_1, '') IS NOT NULL AND NULLIF(EX8_A8_1, '') IS NOT NULL AND NULLIF(EX9_A9_1, '') IS NOT NULL AND NULLIF(EX10_A10_1, '') IS NOT NULL AND NULLIF(EX11_A11_1, '') IS NOT NULL AND NULLIF(EX12_A12_1, '') IS NULL)
                        THEN CONCAT(
                            CONCAT(
                                CONCAT(
                                    CONCAT(
                                        CONCAT(
                                            CONCAT(
                                                CONCAT(
                                                    CONCAT(
                                                        CONCAT(
                                                            CONCAT(
                                                                CONCAT(
                                                                    CONCAT(
                                                                        CONCAT(
                                                                            CONCAT(
                                                                                CONCAT(
                                                                                    CONCAT(
                                                                                        CONCAT(
                                                                                            CONCAT(
                                                                                                CONCAT(
                                                                                                    CONCAT(
                                                                                                        EX1_A1_1, ';'
                                                                                                    ), EX2_A2_1
                                                                                                ), ';'
                                                                                            ), EX3_A3_1
                                                                                        ), ';'
                                                                                    ), EX4_A4_1
                                                                                ), ';'
                                                                            ), EX5_A5_1
                                                                        ), ';'
                                                                    ), EX6_A6_1
                                                                ), ';'
                                                            ), EX7_A7_1
                                                        ), ';'
                                                    ), EX8_A8_1
                                                ), ';'
                                            ), EX9_A9_1
                                        ), ';'
                                    ), EX10_A10_1
                                ), ';'
                            ), EX11_A11_1
                        )
                        WHEN (NULLIF(EX1_A1_1, '') IS NOT NULL AND NULLIF(EX2_A2_1, '') IS NOT NULL AND NULLIF(EX3_A3_1, '') IS NOT NULL AND NULLIF(EX4_A4_1, '') IS NOT NULL AND NULLIF(EX5_A5_1, '') IS NOT NULL AND NULLIF(EX6_A6_1, '') IS NOT NULL AND NULLIF(EX7_A7_1, '') IS NOT NULL AND NULLIF(EX8_A8_1, '') IS NOT NULL AND NULLIF(EX9_A9_1, '') IS NOT NULL AND NULLIF(EX10_A10_1, '') IS NOT NULL AND NULLIF(EX11_A11_1, '') IS NOT NULL AND NULLIF(EX12_A12_1, '') IS NOT NULL)
                        THEN CONCAT(
                            CONCAT(
                                CONCAT(
                                    CONCAT(
                                        CONCAT(
                                            CONCAT(
                                                CONCAT(
                                                    CONCAT(
                                                        CONCAT(
                                                            CONCAT(
                                                                CONCAT(
                                                                    CONCAT(
                                                                        CONCAT(
                                                                            CONCAT(
                                                                                CONCAT(
                                                                                    CONCAT(
                                                                                        CONCAT(
                                                                                            CONCAT(
                                                                                                CONCAT(
                                                                                                    CONCAT(
                                                                                                        CONCAT(
                                                                                                            CONCAT(
                                                                                                                EX1_A1_1, ';'
                                                                                                            ), EX2_A2_1
                                                                                                        ), ';'
                                                                                                    ), EX3_A3_1
                                                                                                ), ';'
                                                                                            ), EX4_A4_1
                                                                                        ), ';'
                                                                                    ), EX5_A5_1
                                                                                ), ';'
                                                                            ), EX6_A6_1
                                                                        ), ';'
                                                                    ), EX7_A7_1
                                                                ), ';'
                                                            ), EX8_A8_1
                                                        ), ';'
                                                    ), EX9_A9_1
                                                ), ';'
                                            ), EX10_A10_1
                                        ), ';'
                                    ), EX11_A11_1
                                ), ';'
                            ), EX12_A12_1
                        )
                        ELSE NULL
                    END AS SLIDE_KEYS_R1_RE,
                    CASE
                        WHEN (NULLIF(EX1_A1_2, '') IS NOT NULL AND NULLIF(EX2_A2_2, '') IS NOT NULL AND NULLIF(EX3_A3_2, '') IS NULL AND NULLIF(EX4_A4_2, '') IS NULL AND NULLIF(EX5_A5_2, '') IS NULL AND NULLIF(EX6_A6_2, '') IS NULL AND NULLIF(EX7_A7_2, '') IS NULL AND NULLIF(EX8_A8_2, '') IS NULL AND NULLIF(EX9_A9_2, '') IS NULL)
                        THEN CONCAT(
                            CONCAT(
                                EX1_A1_2, ';'
                            ), EX2_A2_2
                        )
                        WHEN (NULLIF(EX1_A1_2, '') IS NOT NULL AND NULLIF(EX2_A2_2, '') IS NOT NULL AND NULLIF(EX3_A3_2, '') IS NOT NULL AND NULLIF(EX4_A4_2, '') IS NULL AND NULLIF(EX5_A5_2, '') IS NULL AND NULLIF(EX6_A6_2, '') IS NULL AND NULLIF(EX7_A7_2, '') IS NULL AND NULLIF(EX8_A8_2, '') IS NULL AND NULLIF(EX9_A9_2, '') IS NULL)
                        THEN CONCAT(
                            CONCAT(
                                CONCAT(
                                    CONCAT(
                                        EX1_A1_2, ';'
                                    ), EX2_A2_2
                                ), ';'
                            ), EX3_A3_2
                        )
                        WHEN (NULLIF(EX1_A1_2, '') IS NOT NULL AND NULLIF(EX2_A2_2, '') IS NOT NULL AND NULLIF(EX3_A3_2, '') IS NOT NULL AND NULLIF(EX4_A4_2, '') IS NOT NULL AND NULLIF(EX5_A5_2, '') IS NULL AND NULLIF(EX6_A6_2, '') IS NULL AND NULLIF(EX7_A7_2, '') IS NULL AND NULLIF(EX8_A8_2, '') IS NULL AND NULLIF(EX9_A9_2, '') IS NULL)
                        THEN CONCAT(
                            CONCAT(
                                CONCAT(
                                    CONCAT(
                                        CONCAT(
                                            CONCAT(
                                                EX1_A1_2, ';'
                                            ), EX2_A2_2
                                        ), ';'
                                    ), EX3_A3_2
                                ), ';'
                            ), EX4_A4_2
                        )
                        WHEN (NULLIF(EX1_A1_2, '') IS NOT NULL AND NULLIF(EX2_A2_2, '') IS NOT NULL AND NULLIF(EX3_A3_2, '') IS NOT NULL AND NULLIF(EX4_A4_2, '') IS NOT NULL AND NULLIF(EX5_A5_2, '') IS NOT NULL AND NULLIF(EX6_A6_2, '') IS NULL AND NULLIF(EX7_A7_2, '') IS NULL AND NULLIF(EX8_A8_2, '') IS NULL AND NULLIF(EX9_A9_2, '') IS NULL)
                        THEN CONCAT(
                            CONCAT(
                                CONCAT(
                                    CONCAT(
                                        CONCAT(
                                            CONCAT(
                                                CONCAT(
                                                    CONCAT(
                                                        EX1_A1_2, ';'
                                                    ), EX2_A2_2
                                                ), ';'
                                            ), EX3_A3_2
                                        ), ';'
                                    ), EX4_A4_2
                                ), ';'
                            ), EX5_A5_2
                        )
                        WHEN (NULLIF(EX1_A1_2, '') IS NOT NULL AND NULLIF(EX2_A2_2, '') IS NOT NULL AND NULLIF(EX3_A3_2, '') IS NOT NULL AND NULLIF(EX4_A4_2, '') IS NOT NULL AND NULLIF(EX5_A5_2, '') IS NOT NULL AND NULLIF(EX6_A6_2, '') IS NOT NULL AND NULLIF(EX7_A7_2, '') IS NULL AND NULLIF(EX8_A8_2, '') IS NULL AND NULLIF(EX9_A9_2, '') IS NULL)
                        THEN CONCAT(
                            CONCAT(
                                CONCAT(
                                    CONCAT(
                                        CONCAT(
                                            CONCAT(
                                                CONCAT(
                                                    CONCAT(
                                                        CONCAT(
                                                            CONCAT(
                                                                EX1_A1_2, ';'
                                                            ), EX2_A2_2
                                                        ), ';'
                                                    ), EX3_A3_2
                                                ), ';'
                                            ), EX4_A4_2
                                        ), ';'
                                    ), EX5_A5_2
                                ), ';'
                            ), EX6_A6_2
                        )
                        WHEN (NULLIF(EX1_A1_2, '') IS NOT NULL AND NULLIF(EX2_A2_2, '') IS NOT NULL AND NULLIF(EX3_A3_2, '') IS NOT NULL AND NULLIF(EX4_A4_2, '') IS NOT NULL AND NULLIF(EX5_A5_2, '') IS NOT NULL AND NULLIF(EX6_A6_2, '') IS NOT NULL AND NULLIF(EX7_A7_2, '') IS NOT NULL AND NULLIF(EX8_A8_2, '') IS NULL AND NULLIF(EX9_A9_2, '') IS NULL)
                        THEN CONCAT(
                            CONCAT(
                                CONCAT(
                                    CONCAT(
                                        CONCAT(
                                            CONCAT(
                                                CONCAT(
                                                    CONCAT(
                                                        CONCAT(
                                                            CONCAT(
                                                                CONCAT(
                                                                    CONCAT(
                                                                        EX1_A1_2, ';'
                                                                    ), EX2_A2_2
                                                                ), ';'
                                                            ), EX3_A3_2
                                                        ), ';'
                                                    ), EX4_A4_2
                                                ), ';'
                                            ), EX5_A5_2
                                        ), ';'
                                    ), EX6_A6_2
                                ), ';'
                            ), EX7_A7_2
                        )
                        WHEN (NULLIF(EX1_A1_2, '') IS NOT NULL AND NULLIF(EX2_A2_2, '') IS NOT NULL AND NULLIF(EX3_A3_2, '') IS NOT NULL AND NULLIF(EX4_A4_2, '') IS NOT NULL AND NULLIF(EX5_A5_2, '') IS NOT NULL AND NULLIF(EX6_A6_2, '') IS NOT NULL AND NULLIF(EX7_A7_2, '') IS NOT NULL AND NULLIF(EX8_A8_2, '') IS NOT NULL AND NULLIF(EX9_A9_2, '') IS NULL)
                        THEN CONCAT(
                            CONCAT(
                                CONCAT(
                                    CONCAT(
                                        CONCAT(
                                            CONCAT(
                                                CONCAT(
                                                    CONCAT(
                                                        CONCAT(
                                                            CONCAT(
                                                                CONCAT(
                                                                    CONCAT(
                                                                        CONCAT(
                                                                            CONCAT(
                                                                                EX1_A1_2, ';'
                                                                            ), EX2_A2_2
                                                                        ), ';'
                                                                    ), EX3_A3_2
                                                                ), ';'
                                                            ), EX4_A4_2
                                                        ), ';'
                                                    ), EX5_A5_2
                                                ), ';'
                                            ), EX6_A6_2
                                        ), ';'
                                    ), EX7_A7_2
                                ), ';'
                            ), EX8_A8_2
                        )
                        WHEN (NULLIF(EX1_A1_2, '') IS NOT NULL AND NULLIF(EX2_A2_2, '') IS NOT NULL AND NULLIF(EX3_A3_2, '') IS NOT NULL AND NULLIF(EX4_A4_2, '') IS NOT NULL AND NULLIF(EX5_A5_2, '') IS NOT NULL AND NULLIF(EX6_A6_2, '') IS NOT NULL AND NULLIF(EX7_A7_2, '') IS NOT NULL AND NULLIF(EX8_A8_2, '') IS NOT NULL AND NULLIF(EX9_A9_2, '') IS NOT NULL)
                        THEN CONCAT(
                            CONCAT(
                                CONCAT(
                                    CONCAT(
                                        CONCAT(
                                            CONCAT(
                                                CONCAT(
                                                    CONCAT(
                                                        CONCAT(
                                                            CONCAT(
                                                                CONCAT(
                                                                    CONCAT(
                                                                        CONCAT(
                                                                            CONCAT(
                                                                                CONCAT(
                                                                                    CONCAT(
                                                                                        EX1_A1_2, ';'
                                                                                    ), EX2_A2_2
                                                                                ), ';'
                                                                            ), EX3_A3_2
                                                                        ), ';'
                                                                    ), EX4_A4_2
                                                                ), ';'
                                                            ), EX5_A5_2
                                                        ), ';'
                                                    ), EX6_A6_2
                                                ), ';'
                                            ), EX7_A7_2
                                        ), ';'
                                    ), EX8_A8_2
                                ), ';'
                            ), EX9_A9_2
                        )
                        ELSE NULL
                    END AS SLIDE_KEYS_R1_RE2,
                    CASE
                        WHEN (NULLIF(EX1_A1_3, '') IS NOT NULL AND NULLIF(EX2_A2_3, '') IS NOT NULL AND NULLIF(EX3_A3_3, '') IS NULL AND NULLIF(EX4_A4_3, '') IS NULL AND NULLIF(EX5_A5_3, '') IS NULL)
                        THEN CONCAT(
                            CONCAT(
                                EX1_A1_3, ';'
                            ), EX2_A2_3
                        )
                        WHEN (NULLIF(EX1_A1_3, '') IS NOT NULL AND NULLIF(EX2_A2_3, '') IS NOT NULL AND NULLIF(EX3_A3_3, '') IS NOT NULL AND NULLIF(EX4_A4_3, '') IS NULL AND NULLIF(EX5_A5_3, '') IS NULL)
                        THEN CONCAT(
                            CONCAT(
                                CONCAT(
                                    CONCAT(
                                        EX1_A1_3, ';'
                                    ), EX2_A2_3
                                ), ';'
                            ), EX3_A3_3
                        )
                        WHEN (NULLIF(EX1_A1_3, '') IS NOT NULL AND NULLIF(EX2_A2_3, '') IS NOT NULL AND NULLIF(EX3_A3_3, '') IS NOT NULL AND NULLIF(EX4_A4_3, '') IS NOT NULL AND NULLIF(EX5_A5_3, '') IS NULL)
                        THEN CONCAT(
                            CONCAT(
                                CONCAT(
                                    CONCAT(
                                        CONCAT(
                                            CONCAT(
                                                EX1_A1_3, ';'
                                            ), EX2_A2_3
                                        ), ';'
                                    ), EX3_A3_3
                                ), ';'
                            ), EX4_A4_3
                        )
                        WHEN (NULLIF(EX1_A1_3, '') IS NOT NULL AND NULLIF(EX2_A2_3, '') IS NOT NULL AND NULLIF(EX3_A3_3, '') IS NOT NULL AND NULLIF(EX4_A4_3, '') IS NOT NULL AND NULLIF(EX5_A5_3, '') IS NOT NULL)
                        THEN CONCAT(
                            CONCAT(
                                CONCAT(
                                    CONCAT(
                                        CONCAT(
                                            CONCAT(
                                                CONCAT(
                                                    CONCAT(
                                                        EX1_A1_3, ';'
                                                    ), EX2_A2_3
                                                ), ';'
                                            ), EX3_A3_3
                                        ), ';'
                                    ), EX4_A4_3
                                ), ';'
                            ), EX5_A5_3
                        )
                        ELSE NULL
                    END AS PARAFFIN_BLOCK_KEYS_RE,
                    CASE
                        WHEN (NULLIF(SLIDE_KEYS_ELSE3_2, '') IS NOT NULL)
                        THEN SLIDE_KEYS_ELSE3_2
                        ELSE NULL
                    END AS SLIDE_KEYS_ELSE3_3
                FROM(
                    SELECT *,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX1_1, '^[A-Z]') = 0 AND REGEXP_INSTR(BINARY EX1_1, '[a-z]+') = 0 AND REGEXP_INSTR(BINARY EX1_1, '[0-9]') != 0)
                            THEN CONCAT('A', EX1_1)
                            ELSE EX1_1
                        END AS EX1_A1_1,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX1_2, '[A-z]+ [A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SUBSTR(EX1_2, 1, REGEXP_INSTR(BINARY EX1_2, ' [A-Z]{1,2}[0-9]{1,3}')), ';'
                                ), SUBSTR(EX1_2, REGEXP_INSTR(BINARY EX1_2, '[A-Z]{1,2}[0-9]{1,3}'))
                            )
                            WHEN (REGEXP_INSTR(BINARY EX1_2, '[0-9]{1,3} [A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SUBSTR(EX1_2, 1, REGEXP_INSTR(BINARY EX1_2, ' ')), ';'
                                ), SUBSTR(EX1_2, REGEXP_INSTR(BINARY EX1_2, ' [A-Z]{1,2}[0-9]{1,3}'))
                            )
                            ELSE EX1_2
                        END AS EX1_A1_2,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX1_3, ' [(][A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SUBSTR(EX1_3, 1, REGEXP_INSTR(BINARY EX1_3, ' [(]')), ';'
                                ), SUBSTR(EX1_3, REGEXP_INSTR(BINARY EX1_3, '[(]'))
                            )
                            ELSE EX1_3
                        END AS EX1_A1_3,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX2_1, '^[A-Z]') = 0 AND REGEXP_INSTR(BINARY EX2_1, '[a-z]+') = 0 AND REGEXP_INSTR(BINARY EX2_1, '[0-9]') != 0)
                            THEN CONCAT('A', EX2_1)
                            ELSE EX2_1
                        END AS EX2_A2_1,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX2_2, '[A-z]+ [A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SUBSTR(EX2_2, 1, REGEXP_INSTR(BINARY EX2_2, ' [A-Z]{1,2}[0-9]{1,3}')), ';'
                                ), SUBSTR(EX2_2, REGEXP_INSTR(BINARY EX2_2, '[A-Z]{1,2}[0-9]{1,3}'))
                            )
                            WHEN (REGEXP_INSTR(BINARY EX2_2, '[0-9]{1,3} [A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SUBSTR(EX2_2, 1, REGEXP_INSTR(BINARY EX2_2, ' ')), ';'
                                ), SUBSTR(EX2_2, REGEXP_INSTR(BINARY EX2_2, ' [A-Z]{1,2}[0-9]{1,3}'))
                            )
                            ELSE EX2_2
                        END AS EX2_A2_2,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX2_3, ' [(][A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SUBSTR(EX2_3, 1, REGEXP_INSTR(BINARY EX2_3, ' [(]')), ';'
                                ), SUBSTR(EX2_3, REGEXP_INSTR(BINARY EX2_3, '[(]'))
                            )
                            ELSE EX2_3
                        END AS EX2_A2_3,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX3_1, '^[A-Z]') = 0 AND REGEXP_INSTR(BINARY EX3_1, '[a-z]+') = 0 AND REGEXP_INSTR(BINARY EX3_1, '[0-9]') != 0)
                            THEN CONCAT('A', EX3_1)
                            ELSE EX3_1
                        END AS EX3_A3_1,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX3_2, '[A-z]+ [A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SUBSTR(EX3_2, 1, REGEXP_INSTR(BINARY EX3_2, ' [A-Z]{1,2}[0-9]{1,3}')), ';'
                                ), SUBSTR(EX3_2, REGEXP_INSTR(BINARY EX3_2, '[A-Z]{1,2}[0-9]{1,3}'))
                            )
                            WHEN (REGEXP_INSTR(BINARY EX3_2, '[0-9]{1,3} [A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SUBSTR(EX3_2, 1, REGEXP_INSTR(BINARY EX3_2, ' ')), ';'
                                ), SUBSTR(EX3_2, REGEXP_INSTR(BINARY EX3_2, ' [A-Z]{1,2}[0-9]{1,3}'))
                            )
                            ELSE EX3_2
                        END AS EX3_A3_2,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX3_3, ' [(][A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SUBSTR(EX3_3, 1, REGEXP_INSTR(BINARY EX3_3, ' [(]')), ';'
                                ), SUBSTR(EX3_3, REGEXP_INSTR(BINARY EX3_3, '[(]'))
                            )
                            ELSE EX3_3
                        END AS EX3_A3_3,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX4_1, '^[A-Z]') = 0 AND REGEXP_INSTR(BINARY EX4_1, '[a-z]+') = 0 AND REGEXP_INSTR(BINARY EX4_1, '[0-9]') != 0)
                            THEN CONCAT('A', EX4_1)
                            ELSE EX4_1
                        END AS EX4_A4_1,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX4_2, '[A-z]+ [A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SUBSTR(EX4_2, 1, REGEXP_INSTR(BINARY EX4_2, ' [A-Z]{1,2}[0-9]{1,3}')), ';'
                                ), SUBSTR(EX4_2, REGEXP_INSTR(BINARY EX4_2, '[A-Z]{1,2}[0-9]{1,3}'))
                            )
                            WHEN (REGEXP_INSTR(BINARY EX4_2, '[0-9]{1,3} [A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SUBSTR(EX4_2, 1, REGEXP_INSTR(BINARY EX4_2, ' ')), ';'
                                ), SUBSTR(EX4_2, REGEXP_INSTR(BINARY EX4_2, ' [A-Z]{1,2}[0-9]{1,3}'))
                            )
                            ELSE EX4_2
                        END AS EX4_A4_2,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX4_3, ' [(][A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SUBSTR(EX4_3, 1, REGEXP_INSTR(BINARY EX4_3, ' [(]')), ';'
                                ), SUBSTR(EX4_3, REGEXP_INSTR(BINARY EX4_3, '[(]'))
                            )
                            ELSE EX4_3
                        END AS EX4_A4_3,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX5_1, '^[A-Z]') = 0 AND REGEXP_INSTR(BINARY EX5_1, '[a-z]+') = 0 AND REGEXP_INSTR(BINARY EX5_1, '[0-9]') != 0)
                            THEN CONCAT('A', EX5_1)
                            ELSE EX5_1
                        END AS EX5_A5_1,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX5_2, '[A-z]+ [A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SUBSTR(EX5_2, 1, REGEXP_INSTR(BINARY EX5_2, ' [A-Z]{1,2}[0-9]{1,3}')), ';'
                                ), SUBSTR(EX5_2, REGEXP_INSTR(BINARY EX5_2, '[A-Z]{1,2}[0-9]{1,3}'))
                            )
                            WHEN (REGEXP_INSTR(BINARY EX5_2, '[0-9]{1,3} [A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SUBSTR(EX5_2, 1, REGEXP_INSTR(BINARY EX5_2, ' ')), ';'
                                ), SUBSTR(EX5_2, REGEXP_INSTR(BINARY EX5_2, ' [A-Z]{1,2}[0-9]{1,3}'))
                            )
                            ELSE EX5_2
                        END AS EX5_A5_2,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX5_3, ' [(][A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SUBSTR(EX5_3, 1, REGEXP_INSTR(BINARY EX5_3, ' [(]')), ';'
                                ), SUBSTR(EX5_3, REGEXP_INSTR(BINARY EX5_3, '[(]'))
                            )
                            ELSE EX5_3
                        END AS EX5_A5_3,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX6_1, '^[A-Z]') = 0 AND REGEXP_INSTR(BINARY EX6_1, '[a-z]+') = 0 AND REGEXP_INSTR(BINARY EX6_1, '[0-9]') != 0)
                            THEN CONCAT('A', EX6_1)
                            ELSE EX6_1
                        END AS EX6_A6_1,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX6_2, '[A-z]+ [A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SUBSTR(EX6_2, 1, REGEXP_INSTR(BINARY EX6_2, ' [A-Z]{1,2}[0-9]{1,3}')), ';'
                                ), SUBSTR(EX6_2, REGEXP_INSTR(BINARY EX6_2, '[A-Z]{1,2}[0-9]{1,3}'))
                            )
                            WHEN (REGEXP_INSTR(BINARY EX6_2, '[0-9]{1,3} [A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SUBSTR(EX6_2, 1, REGEXP_INSTR(BINARY EX6_2, ' ')), ';'
                                ), SUBSTR(EX6_2, REGEXP_INSTR(BINARY EX6_2, ' [A-Z]{1,2}[0-9]{1,3}'))
                            )
                            ELSE EX6_2
                        END AS EX6_A6_2,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX7_1, '^[A-Z]') = 0 AND REGEXP_INSTR(BINARY EX7_1, '[a-z]+') = 0 AND REGEXP_INSTR(BINARY EX7_1, '[0-9]') != 0)
                            THEN CONCAT('A', EX7_1)
                            ELSE EX7_1
                        END AS EX7_A7_1,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX7_2, '[A-z]+ [A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SUBSTR(EX7_2, 1, REGEXP_INSTR(BINARY EX7_2, ' [A-Z]{1,2}[0-9]{1,3}')), ';'
                                ), SUBSTR(EX7_2, REGEXP_INSTR(BINARY EX7_2, '[A-Z]{1,2}[0-9]{1,3}'))
                            )
                            WHEN (REGEXP_INSTR(BINARY EX7_2, '[0-9]{1,3} [A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SUBSTR(EX7_2, 1, REGEXP_INSTR(BINARY EX7_2, ' ')), ';'
                                ), SUBSTR(EX7_2, REGEXP_INSTR(BINARY EX7_2, ' [A-Z]{1,2}[0-9]{1,3}'))
                            )
                            ELSE EX7_2
                        END AS EX7_A7_2,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX8_1, '^[A-Z]') = 0 AND REGEXP_INSTR(BINARY EX8_1, '[a-z]+') = 0 AND REGEXP_INSTR(BINARY EX8_1, '[0-9]') != 0)
                            THEN CONCAT('A', EX8_1)
                            ELSE EX8_1
                        END AS EX8_A8_1,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX8_2, '[A-z]+ [A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SUBSTR(EX8_2, 1, REGEXP_INSTR(BINARY EX8_2, ' [A-Z]{1,2}[0-9]{1,3}')), ';'
                                ), SUBSTR(EX8_2, REGEXP_INSTR(BINARY EX8_2, '[A-Z]{1,2}[0-9]{1,3}'))
                            )
                            WHEN (REGEXP_INSTR(BINARY EX8_2, '[0-9]{1,3} [A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SUBSTR(EX8_2, 1, REGEXP_INSTR(BINARY EX8_2, ' ')), ';'
                                ), SUBSTR(EX8_2, REGEXP_INSTR(BINARY EX8_2, ' [A-Z]{1,2}[0-9]{1,3}'))
                            )
                            ELSE EX8_2
                        END AS EX8_A8_2,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX9_1, '^[A-Z]') = 0 AND REGEXP_INSTR(BINARY EX9_1, '[a-z]+') = 0 AND REGEXP_INSTR(BINARY EX9_1, '[0-9]') != 0)
                            THEN CONCAT('A', EX9_1)
                            ELSE EX9_1
                        END AS EX9_A9_1,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX9_2, ' [A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SUBSTR(EX9_2, 1, REGEXP_INSTR(BINARY EX9_2, ' [A-Z]{1,2}[0-9]{1,3}')), ';'
                                ), SUBSTR(EX9_2, REGEXP_INSTR(BINARY EX9_2, '[A-Z]{1,2}[0-9]{1,3}'))
                            )
                            WHEN (REGEXP_INSTR(BINARY EX9_2, '[0-9]{1,3} [A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SUBSTR(EX9_2, 1, REGEXP_INSTR(BINARY EX9_2, ' ')), ';'
                                ), SUBSTR(EX9_2, REGEXP_INSTR(BINARY EX9_2, ' [A-Z]{1,2}[0-9]{1,3}'))
                            )
                            ELSE EX9_2
                        END AS EX9_A9_2,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX10_1, '^[A-Z]') = 0 AND REGEXP_INSTR(BINARY EX10_1, '[a-z]+') = 0 AND REGEXP_INSTR(BINARY EX10_1, '[0-9]') != 0)
                            THEN CONCAT('A', EX10_1)
                            ELSE EX10_1
                        END AS EX10_A10_1,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX11_1, '^[A-Z]') = 0 AND REGEXP_INSTR(BINARY EX11_1, '[a-z]+') = 0 AND REGEXP_INSTR(BINARY EX11_1, '[0-9]') != 0)
                            THEN CONCAT('A', EX11_1)
                            ELSE EX11_1
                        END AS EX11_A11_1,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX12_1, '^[A-Z]') = 0 AND REGEXP_INSTR(BINARY EX12_1, '[a-z]+') = 0 AND REGEXP_INSTR(BINARY EX12_1, '[0-9]') != 0)
                            THEN CONCAT('A', EX12_1)
                            ELSE EX12_1
                        END AS EX12_A12_1,
                        CASE
                            WHEN (NULLIF(SLIDE_KEYS_ELSE3, '') IS NOT NULL)
                            THEN REPLACE(SLIDE_KEYS_ELSE3, REGEXP_SUBSTR(SLIDE_KEYS_ELSE3, '[^;]*$'), '')
                            ELSE NULL
                        END AS SLIDE_KEYS_ELSE3_2
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (NULLIF(SLIDE_KEYS_ELSE, REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 1)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 1)
                                ELSE NULL
                            END AS EX1_1,
                            CASE
                                WHEN (NULLIF(SLIDE_KEYS_ELSE2, REGEXP_SUBSTR(SLIDE_KEYS_ELSE2, '[^;]+', 1, 1)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(SLIDE_KEYS_ELSE2, '[^;]+', 1, 1)
                                ELSE NULL
                            END AS EX1_2,
                            CASE
                                WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_ELSE, REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE, '[^;]+', 1, 1)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE, '[^;]+', 1, 1)
                                ELSE NULL
                            END AS EX1_3,
                            CASE
                                WHEN (NULLIF(SLIDE_KEYS_ELSE, REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 2)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 2)
                                ELSE NULL
                            END AS EX2_1,
                            CASE
                                WHEN (NULLIF(SLIDE_KEYS_ELSE2, REGEXP_SUBSTR(SLIDE_KEYS_ELSE2, '[^;]+', 1, 2)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(SLIDE_KEYS_ELSE2, '[^;]+', 1, 2)
                                ELSE NULL
                            END AS EX2_2,
                            CASE
                                WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_ELSE, REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE, '[^;]+', 1, 2)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE, '[^;]+', 1, 2)
                                ELSE NULL
                            END AS EX2_3,
                            CASE
                                WHEN (NULLIF(SLIDE_KEYS_ELSE, REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 3)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 3)
                                ELSE NULL
                            END AS EX3_1,
                            CASE
                                WHEN (NULLIF(SLIDE_KEYS_ELSE2, REGEXP_SUBSTR(SLIDE_KEYS_ELSE2, '[^;]+', 1, 3)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(SLIDE_KEYS_ELSE2, '[^;]+', 1, 3)
                                ELSE NULL
                            END AS EX3_2,
                            CASE
                                WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_ELSE, REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE, '[^;]+', 1, 3)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE, '[^;]+', 1, 3)
                                ELSE NULL
                            END AS EX3_3,
                            CASE
                                WHEN (NULLIF(SLIDE_KEYS_ELSE, REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 4)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 4)
                                ELSE NULL
                            END AS EX4_1,
                            CASE
                                WHEN (NULLIF(SLIDE_KEYS_ELSE2, REGEXP_SUBSTR(SLIDE_KEYS_ELSE2, '[^;]+', 1, 4)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(SLIDE_KEYS_ELSE2, '[^;]+', 1, 4)
                                ELSE NULL
                            END AS EX4_2,
                            CASE
                                WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_ELSE, REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE, '[^;]+', 1, 4)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE, '[^;]+', 1, 4)
                                ELSE NULL
                            END AS EX4_3,
                            CASE
                                WHEN (NULLIF(SLIDE_KEYS_ELSE, REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 5)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 5)
                                ELSE NULL
                            END AS EX5_1,
                            CASE
                                WHEN (NULLIF(SLIDE_KEYS_ELSE2, REGEXP_SUBSTR(SLIDE_KEYS_ELSE2, '[^;]+', 1, 5)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(SLIDE_KEYS_ELSE2, '[^;]+', 1, 5)
                                ELSE NULL
                            END AS EX5_2,
                            CASE
                                WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_ELSE, REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE, '[^;]+', 1, 5)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE, '[^;]+', 1, 5)
                                ELSE NULL
                            END AS EX5_3,
                            CASE
                                WHEN (NULLIF(SLIDE_KEYS_ELSE, REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 6)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 6)
                                ELSE NULL
                            END AS EX6_1,
                            CASE
                                WHEN (NULLIF(SLIDE_KEYS_ELSE2, REGEXP_SUBSTR(SLIDE_KEYS_ELSE2, '[^;]+', 1, 6)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(SLIDE_KEYS_ELSE2, '[^;]+', 1, 6)
                                ELSE NULL
                            END AS EX6_2,
                            CASE
                                WHEN (NULLIF(SLIDE_KEYS_ELSE, REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 7)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 7)
                                ELSE NULL
                            END AS EX7_1,
                            CASE
                                WHEN (NULLIF(SLIDE_KEYS_ELSE2, REGEXP_SUBSTR(SLIDE_KEYS_ELSE2, '[^;]+', 1, 7)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(SLIDE_KEYS_ELSE2, '[^;]+', 1, 7)
                                ELSE NULL
                            END AS EX7_2,
                            CASE
                                WHEN (NULLIF(SLIDE_KEYS_ELSE, REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 8)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 8)
                                ELSE NULL
                            END AS EX8_1,
                            CASE
                                WHEN (NULLIF(SLIDE_KEYS_ELSE2, REGEXP_SUBSTR(SLIDE_KEYS_ELSE2, '[^;]+', 1, 8)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(SLIDE_KEYS_ELSE2, '[^;]+', 1, 8)
                                ELSE NULL
                            END AS EX8_2,
                            CASE
                                WHEN (NULLIF(SLIDE_KEYS_ELSE, REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 9)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 9)
                                ELSE NULL
                            END AS EX9_1,
                            CASE
                                WHEN (NULLIF(SLIDE_KEYS_ELSE2, REGEXP_SUBSTR(SLIDE_KEYS_ELSE2, '[^;]+', 1, 9)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(SLIDE_KEYS_ELSE2, '[^;]+', 1, 9)
                                ELSE NULL
                            END AS EX9_2,
                            CASE
                                WHEN (NULLIF(SLIDE_KEYS_ELSE, REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 10)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 10)
                                ELSE NULL
                            END AS EX10_1,
                            CASE
                                WHEN (NULLIF(SLIDE_KEYS_ELSE, REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 11)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 11)
                                ELSE NULL
                            END AS EX11_1,
                            CASE
                                WHEN (NULLIF(SLIDE_KEYS_ELSE, REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 12)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 12)
                                ELSE NULL
                            END AS EX12_1,
                            CASE
                                WHEN (INSTR(BINARY SLIDE_KEYS_R1, ';B;') != 0)
                                THEN SUBSTR(SLIDE_KEYS_R1, 1, REGEXP_INSTR(BINARY SLIDE_KEYS_R1, '[A-z]+[;]B[;]'))
                                ELSE NULL
                            END AS SLIDE_KEYS_ELSE3
                        FROM(
                            SELECT *,
                                CASE
                                    WHEN (REGEXP_INSTR(SLIDE_KEYS_R1, '[;][0-9]{1,3}[;]') != 0)
                                    THEN SLIDE_KEYS_R1
                                    ELSE NULL
                                END AS SLIDE_KEYS_ELSE,
                                CASE
                                    WHEN (REGEXP_INSTR(BINARY SLIDE_KEYS_R1, ' [A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(BINARY SLIDE_KEYS_R1, '[A-Z]{1,2}[0-9]{1,3} [and] [A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(BINARY SLIDE_KEYS_R1, '[A-Z]{1,2}[0-9]{1,3} [&] [A-Z]{1,2}[0-9]{1,3}') = 0)
                                    THEN SLIDE_KEYS_R1
                                    ELSE NULL
                                END AS SLIDE_KEYS_ELSE2,
                                CASE
                                    WHEN (NULLIF(PARAFFIN_BLOCK_KEYS, '') IS NOT NULL)
                                    THEN PARAFFIN_BLOCK_KEYS
                                    ELSE NULL
                                END AS PARAFFIN_BLOCK_KEYS_ELSE
                            FROM test_type1_a2_3
                        ) a
                    ) a
                ) a
            ) a
        ) a
    ) a
) a