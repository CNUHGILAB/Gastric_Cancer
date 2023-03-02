SELECT
    DISTINCT (원무접수ID),
    PARAFFIN_BLOCK_KEYS_1_1,
    PARAFFIN_BLOCK_KEYS_R1,
    PARAFFIN_BLOCK_KEYS_R2,
    PARAFFIN_BLOCK_KEYS_R3
FROM(
    SELECT *,
        CASE
        /*
            WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_R1, '') IS NOT NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_R1_RE, '') IS NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_R2_RE, '') IS NULL)
            THEN REPLACE(PARAFFIN_BLOCK_KEYS_R1, ' ;', ';')
            */
            WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_R1, '') IS NOT NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_R1_RE, '') IS NOT NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_R2_RE, '') IS NULL)
            THEN REPLACE(PARAFFIN_BLOCK_KEYS_R1_RE, ' ;', ';')
            WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_R1, '') IS NOT NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_R1_RE, '') IS NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_R2_RE, '') IS NOT NULL)
            THEN REPLACE(PARAFFIN_BLOCK_KEYS_R2_RE, ' ;', ';')
            ELSE NULL
        END AS PARAFFIN_BLOCK_KEYS_1_1
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(EX1_A1_1, '') IS NOT NULL AND NULLIF(EX2_A2_1, '') IS NOT NULL AND NULLIF(EX3_A3_1, '') IS NULL AND NULLIF(EX4_A4_1, '') IS NULL AND NULLIF(EX5_A5_1, '') IS NULL AND NULLIF(EX6_A6_1, '') IS NULL AND NULLIF(EX7_A7_1, '') IS NULL AND NULLIF(EX8_A8_1, '') IS NULL AND NULLIF(EX9_A9_1, '') IS NULL AND NULLIF(EX10_A10_1, '') IS NULL)
                THEN CONCAT(
                    CONCAT(
                        EX1_A1_1, ';'
                    ), EX2_A2_1
                )
                WHEN (NULLIF(EX1_A1_1, '') IS NOT NULL AND NULLIF(EX2_A2_1, '') IS NOT NULL AND NULLIF(EX3_A3_1, '') IS NOT NULL AND NULLIF(EX4_A4_1, '') IS NULL AND NULLIF(EX5_A5_1, '') IS NULL AND NULLIF(EX6_A6_1, '') IS NULL AND NULLIF(EX7_A7_1, '') IS NULL AND NULLIF(EX8_A8_1, '') IS NULL AND NULLIF(EX9_A9_1, '') IS NULL AND NULLIF(EX10_A10_1, '') IS NULL)
                THEN CONCAT(
                    CONCAT(
                        CONCAT(
                            CONCAT(
                                EX1_A1_1, ';'
                            ), EX2_A2_1
                        ), ';'
                    ), EX3_A3_1
                )
                WHEN (NULLIF(EX1_A1_1, '') IS NOT NULL AND NULLIF(EX2_A2_1, '') IS NOT NULL AND NULLIF(EX3_A3_1, '') IS NOT NULL AND NULLIF(EX4_A4_1, '') IS NOT NULL AND NULLIF(EX5_A5_1, '') IS NULL AND NULLIF(EX6_A6_1, '') IS NULL AND NULLIF(EX7_A7_1, '') IS NULL AND NULLIF(EX8_A8_1, '') IS NULL AND NULLIF(EX9_A9_1, '') IS NULL AND NULLIF(EX10_A10_1, '') IS NULL)
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
                WHEN (NULLIF(EX1_A1_1, '') IS NOT NULL AND NULLIF(EX2_A2_1, '') IS NOT NULL AND NULLIF(EX3_A3_1, '') IS NOT NULL AND NULLIF(EX4_A4_1, '') IS NOT NULL AND NULLIF(EX5_A5_1, '') IS NOT NULL AND NULLIF(EX6_A6_1, '') IS NULL AND NULLIF(EX7_A7_1, '') IS NULL AND NULLIF(EX8_A8_1, '') IS NULL AND NULLIF(EX9_A9_1, '') IS NULL AND NULLIF(EX10_A10_1, '') IS NULL)
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
                WHEN (NULLIF(EX1_A1_1, '') IS NOT NULL AND NULLIF(EX2_A2_1, '') IS NOT NULL AND NULLIF(EX3_A3_1, '') IS NOT NULL AND NULLIF(EX4_A4_1, '') IS NOT NULL AND NULLIF(EX5_A5_1, '') IS NOT NULL AND NULLIF(EX6_A6_1, '') IS NOT NULL AND NULLIF(EX7_A7_1, '') IS NULL AND NULLIF(EX8_A8_1, '') IS NULL AND NULLIF(EX9_A9_1, '') IS NULL AND NULLIF(EX10_A10_1, '') IS NULL)
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
                WHEN (NULLIF(EX1_A1_1, '') IS NOT NULL AND NULLIF(EX2_A2_1, '') IS NOT NULL AND NULLIF(EX3_A3_1, '') IS NOT NULL AND NULLIF(EX4_A4_1, '') IS NOT NULL AND NULLIF(EX5_A5_1, '') IS NOT NULL AND NULLIF(EX6_A6_1, '') IS NOT NULL AND NULLIF(EX7_A7_1, '') IS NOT NULL AND NULLIF(EX8_A8_1, '') IS NULL AND NULLIF(EX9_A9_1, '') IS NULL AND NULLIF(EX10_A10_1, '') IS NULL)
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
                WHEN (NULLIF(EX1_A1_1, '') IS NOT NULL AND NULLIF(EX2_A2_1, '') IS NOT NULL AND NULLIF(EX3_A3_1, '') IS NOT NULL AND NULLIF(EX4_A4_1, '') IS NOT NULL AND NULLIF(EX5_A5_1, '') IS NOT NULL AND NULLIF(EX6_A6_1, '') IS NOT NULL AND NULLIF(EX7_A7_1, '') IS NOT NULL AND NULLIF(EX8_A8_1, '') IS NOT NULL AND NULLIF(EX9_A9_1, '') IS NULL AND NULLIF(EX10_A10_1, '') IS NULL)
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
                WHEN (NULLIF(EX1_A1_1, '') IS NOT NULL AND NULLIF(EX2_A2_1, '') IS NOT NULL AND NULLIF(EX3_A3_1, '') IS NOT NULL AND NULLIF(EX4_A4_1, '') IS NOT NULL AND NULLIF(EX5_A5_1, '') IS NOT NULL AND NULLIF(EX6_A6_1, '') IS NOT NULL AND NULLIF(EX7_A7_1, '') IS NOT NULL AND NULLIF(EX8_A8_1, '') IS NOT NULL AND NULLIF(EX9_A9_1, '') IS NOT NULL AND NULLIF(EX10_A10_1, '') IS NULL)
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
                WHEN (NULLIF(EX1_A1_1, '') IS NOT NULL AND NULLIF(EX2_A2_1, '') IS NOT NULL AND NULLIF(EX3_A3_1, '') IS NOT NULL AND NULLIF(EX4_A4_1, '') IS NOT NULL AND NULLIF(EX5_A5_1, '') IS NOT NULL AND NULLIF(EX6_A6_1, '') IS NOT NULL AND NULLIF(EX7_A7_1, '') IS NOT NULL AND NULLIF(EX8_A8_1, '') IS NOT NULL AND NULLIF(EX9_A9_1, '') IS NOT NULL AND NULLIF(EX10_A10_1, '') IS NOT NULL AND NULLIF(EX11_A11_1, '') IS NULL AND NULLIF(EX12_A12_1, '') IS NULL AND NULLIF(EX13_A13_1, '') IS NULL AND NULLIF(EX14_A14_1, '') IS NULL)
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
                WHEN (NULLIF(EX1_A1_1, '') IS NOT NULL AND NULLIF(EX2_A2_1, '') IS NOT NULL AND NULLIF(EX3_A3_1, '') IS NOT NULL AND NULLIF(EX4_A4_1, '') IS NOT NULL AND NULLIF(EX5_A5_1, '') IS NOT NULL AND NULLIF(EX6_A6_1, '') IS NOT NULL AND NULLIF(EX7_A7_1, '') IS NOT NULL AND NULLIF(EX8_A8_1, '') IS NOT NULL AND NULLIF(EX9_A9_1, '') IS NOT NULL AND NULLIF(EX10_A10_1, '') IS NOT NULL AND NULLIF(EX11_A11_1, '') IS NOT NULL AND NULLIF(EX12_A12_1, '') IS NULL AND NULLIF(EX13_A13_1, '') IS NULL AND NULLIF(EX14_A14_1, '') IS NULL)
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
                WHEN (NULLIF(EX1_A1_1, '') IS NOT NULL AND NULLIF(EX2_A2_1, '') IS NOT NULL AND NULLIF(EX3_A3_1, '') IS NOT NULL AND NULLIF(EX4_A4_1, '') IS NOT NULL AND NULLIF(EX5_A5_1, '') IS NOT NULL AND NULLIF(EX6_A6_1, '') IS NOT NULL AND NULLIF(EX7_A7_1, '') IS NOT NULL AND NULLIF(EX8_A8_1, '') IS NOT NULL AND NULLIF(EX9_A9_1, '') IS NOT NULL AND NULLIF(EX10_A10_1, '') IS NOT NULL AND NULLIF(EX11_A11_1, '') IS NOT NULL AND NULLIF(EX12_A12_1, '') IS NOT NULL AND NULLIF(EX13_A13_1, '') IS NULL AND NULLIF(EX14_A14_1, '') IS NULL)
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
                WHEN (NULLIF(EX1_A1_1, '') IS NOT NULL AND NULLIF(EX2_A2_1, '') IS NOT NULL AND NULLIF(EX3_A3_1, '') IS NOT NULL AND NULLIF(EX4_A4_1, '') IS NOT NULL AND NULLIF(EX5_A5_1, '') IS NOT NULL AND NULLIF(EX6_A6_1, '') IS NOT NULL AND NULLIF(EX7_A7_1, '') IS NOT NULL AND NULLIF(EX8_A8_1, '') IS NOT NULL AND NULLIF(EX9_A9_1, '') IS NOT NULL AND NULLIF(EX10_A10_1, '') IS NOT NULL AND NULLIF(EX11_A11_1, '') IS NOT NULL AND NULLIF(EX12_A12_1, '') IS NOT NULL AND NULLIF(EX13_A13_1, '') IS NOT NULL AND NULLIF(EX14_A14_1, '') IS NULL)
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
                        ), ';'
                    ), EX13_A13_1
                )
                WHEN (NULLIF(EX1_A1_1, '') IS NOT NULL AND NULLIF(EX2_A2_1, '') IS NOT NULL AND NULLIF(EX3_A3_1, '') IS NOT NULL AND NULLIF(EX4_A4_1, '') IS NOT NULL AND NULLIF(EX5_A5_1, '') IS NOT NULL AND NULLIF(EX6_A6_1, '') IS NOT NULL AND NULLIF(EX7_A7_1, '') IS NOT NULL AND NULLIF(EX8_A8_1, '') IS NOT NULL AND NULLIF(EX9_A9_1, '') IS NOT NULL AND NULLIF(EX10_A10_1, '') IS NOT NULL AND NULLIF(EX11_A11_1, '') IS NOT NULL AND NULLIF(EX12_A12_1, '') IS NOT NULL AND NULLIF(EX13_A13_1, '') IS NOT NULL AND NULLIF(EX14_A14_1, '') IS NOT NULL)
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
                                ), ';'
                            ), EX13_A13_1
                        ), ';'
                    ), EX14_A14_1
                )
                ELSE NULL
            END AS PARAFFIN_BLOCK_KEYS_R1_RE,
            CASE
                WHEN (NULLIF(EX1_A1_2, '') IS NOT NULL AND NULLIF(EX2_A2_2, '') IS NOT NULL AND NULLIF(EX3_A3_2, '') IS NULL AND NULLIF(EX4_A4_2, '') IS NULL AND NULLIF(EX5_A5_2, '') IS NULL AND NULLIF(EX6_A6_2, '') IS NULL AND NULLIF(EX7_A7_2, '') IS NULL AND NULLIF(EX8_A8_2, '') IS NULL)
                THEN CONCAT(
                    CONCAT(
                        EX1_A1_2, ';'
                    ), EX2_A2_2
                )
                WHEN (NULLIF(EX1_A1_2, '') IS NOT NULL AND NULLIF(EX2_A2_2, '') IS NOT NULL AND NULLIF(EX3_A3_2, '') IS NOT NULL AND NULLIF(EX4_A4_2, '') IS NULL AND NULLIF(EX5_A5_2, '') IS NULL AND NULLIF(EX6_A6_2, '') IS NULL AND NULLIF(EX7_A7_2, '') IS NULL AND NULLIF(EX8_A8_2, '') IS NULL)
                THEN CONCAT(
                    CONCAT(
                        CONCAT(
                            CONCAT(
                                EX1_A1_2, ';'
                            ), EX2_A2_2
                        ), ';'
                    ), EX3_A3_2
                )
                WHEN (NULLIF(EX1_A1_2, '') IS NOT NULL AND NULLIF(EX2_A2_2, '') IS NOT NULL AND NULLIF(EX3_A3_2, '') IS NOT NULL AND NULLIF(EX4_A4_2, '') IS NOT NULL AND NULLIF(EX5_A5_2, '') IS NULL AND NULLIF(EX6_A6_2, '') IS NULL AND NULLIF(EX7_A7_2, '') IS NULL AND NULLIF(EX8_A8_2, '') IS NULL)
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
                WHEN (NULLIF(EX1_A1_2, '') IS NOT NULL AND NULLIF(EX2_A2_2, '') IS NOT NULL AND NULLIF(EX3_A3_2, '') IS NOT NULL AND NULLIF(EX4_A4_2, '') IS NOT NULL AND NULLIF(EX5_A5_2, '') IS NOT NULL AND NULLIF(EX6_A6_2, '') IS NULL AND NULLIF(EX7_A7_2, '') IS NULL AND NULLIF(EX8_A8_2, '') IS NULL)
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
                WHEN (NULLIF(EX1_A1_2, '') IS NOT NULL AND NULLIF(EX2_A2_2, '') IS NOT NULL AND NULLIF(EX3_A3_2, '') IS NOT NULL AND NULLIF(EX4_A4_2, '') IS NOT NULL AND NULLIF(EX5_A5_2, '') IS NOT NULL AND NULLIF(EX6_A6_2, '') IS NOT NULL AND NULLIF(EX7_A7_2, '') IS NULL AND NULLIF(EX8_A8_2, '') IS NULL)
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
                WHEN (NULLIF(EX1_A1_2, '') IS NOT NULL AND NULLIF(EX2_A2_2, '') IS NOT NULL AND NULLIF(EX3_A3_2, '') IS NOT NULL AND NULLIF(EX4_A4_2, '') IS NOT NULL AND NULLIF(EX5_A5_2, '') IS NOT NULL AND NULLIF(EX6_A6_2, '') IS NOT NULL AND NULLIF(EX7_A7_2, '') IS NOT NULL AND NULLIF(EX8_A8_2, '') IS NULL)
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
                WHEN (NULLIF(EX1_A1_2, '') IS NOT NULL AND NULLIF(EX2_A2_2, '') IS NOT NULL AND NULLIF(EX3_A3_2, '') IS NOT NULL AND NULLIF(EX4_A4_2, '') IS NOT NULL AND NULLIF(EX5_A5_2, '') IS NOT NULL AND NULLIF(EX6_A6_2, '') IS NOT NULL AND NULLIF(EX7_A7_2, '') IS NOT NULL AND NULLIF(EX8_A8_2, '') IS NOT NULL)
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
                ELSE NULL
            END AS PARAFFIN_BLOCK_KEYS_R2_RE
        FROM(
            SELECT *,
                CASE
                    WHEN (REGEXP_INSTR(BINARY EX1_1, '[A-Z]{1,2}[0-9]{1,3}[a-z]+') != 0)
                    THEN CONCAT(
                        CONCAT(
                            SUBSTR(EX1_1, 1, REGEXP_INSTR(BINARY EX1_1, '[a-z]+')), ';'
                        ), SUBSTR(EX1_1, REGEXP_INSTR(BINARY EX1_1, '[a-z]+'))
                    )
                    ELSE EX1_1
                END AS EX1_A1_1,
                CASE
                    WHEN (REGEXP_INSTR(BINARY EX1_2, '[0-9]{1,3} [a-z]+') != 0)
                    THEN CONCAT(
                        CONCAT(
                            SUBSTR(EX1_2, 1, REGEXP_INSTR(EX1_2, '[0-9] ')), ';'
                        ), SUBSTR(EX1_2, REGEXP_INSTR(BINARY EX1_2, '[a-z]+'))
                    )
                    ELSE EX1_2
                END AS EX1_A1_2,
                CASE
                    WHEN (REGEXP_INSTR(BINARY EX2_1, '[A-Z]{1,2}[0-9]{1,3}[a-z]+') != 0)
                    THEN CONCAT(
                        CONCAT(
                            SUBSTR(EX2_1, 1, REGEXP_INSTR(BINARY EX2_1, '[a-z]+')), ';'
                        ), SUBSTR(EX2_1, REGEXP_INSTR(BINARY EX2_1, '[a-z]+'))
                    )
                    ELSE EX2_1
                END AS EX2_A2_1,
                CASE
                    WHEN (REGEXP_INSTR(BINARY EX2_2, '[A-Z]{1,2}[0-9]{1,3} [a-z]+') != 0)
                    THEN CONCAT(
                        CONCAT(
                            SUBSTR(EX2_2, 1, REGEXP_INSTR(EX2_2, '[0-9] ')), ';'
                        ), SUBSTR(EX2_2, REGEXP_INSTR(BINARY EX2_2, '[a-z]+'))
                    )
                    ELSE EX2_2
                END AS EX2_A2_2,
                CASE
                    WHEN (REGEXP_INSTR(BINARY EX3_1, '[A-Z]{1,2}[0-9]{1,3}[a-z]+') != 0)
                    THEN CONCAT(
                        CONCAT(
                            SUBSTR(EX3_1, 1, REGEXP_INSTR(BINARY EX3_1, '[a-z]+')), ';'
                        ), SUBSTR(EX3_1, REGEXP_INSTR(BINARY EX3_1, '[a-z]+'))
                    )
                    ELSE EX3_1
                END AS EX3_A3_1,
                CASE
                    WHEN (REGEXP_INSTR(BINARY EX3_2, '[A-Z]{1,2}[0-9]{1,3} [a-z]+') != 0)
                    THEN CONCAT(
                        CONCAT(
                            SUBSTR(EX3_2, 1, REGEXP_INSTR(EX3_2, '[0-9] ')), ';'
                        ), SUBSTR(EX3_2, REGEXP_INSTR(BINARY EX3_2, '[a-z]+'))
                    )
                    ELSE EX3_2
                END AS EX3_A3_2,
                CASE
                    WHEN (REGEXP_INSTR(BINARY EX4_1, '[A-Z]{1,2}[0-9]{1,3}[a-z]+') != 0)
                    THEN CONCAT(
                        CONCAT(
                            SUBSTR(EX4_1, 1, REGEXP_INSTR(BINARY EX4_1, '[a-z]+')), ';'
                        ), SUBSTR(EX4_1, REGEXP_INSTR(BINARY EX4_1, '[a-z]+'))
                    )
                    ELSE EX4_1
                END AS EX4_A4_1,
                CASE
                    WHEN (REGEXP_INSTR(BINARY EX4_2, '[A-Z]{1,2}[0-9]{1,3} [a-z]+') != 0)
                    THEN CONCAT(
                        CONCAT(
                            SUBSTR(EX4_2, 1, REGEXP_INSTR(EX4_2, '[0-9] ')), ';'
                        ), SUBSTR(EX4_2, REGEXP_INSTR(BINARY EX4_2, '[a-z]+'))
                    )
                    ELSE EX4_2
                END AS EX4_A4_2,
                CASE
                    WHEN (REGEXP_INSTR(BINARY EX5_1, '[A-Z]{1,2}[0-9]{1,3}[a-z]+') != 0)
                    THEN CONCAT(
                        CONCAT(
                            SUBSTR(EX5_1, 1, REGEXP_INSTR(BINARY EX5_1, '[a-z]+')), ';'
                        ), SUBSTR(EX5_1, REGEXP_INSTR(BINARY EX5_1, '[a-z]+'))
                    )
                    ELSE EX5_1
                END AS EX5_A5_1,
                CASE
                    WHEN (REGEXP_INSTR(BINARY EX5_2, '[A-Z]{1,2}[0-9]{1,3} [a-z]+') != 0)
                    THEN CONCAT(
                        CONCAT(
                            SUBSTR(EX5_2, 1, REGEXP_INSTR(EX5_2, '[0-9] ')), ';'
                        ), SUBSTR(EX5_2, REGEXP_INSTR(BINARY EX5_2, '[a-z]+'))
                    )
                    ELSE EX5_2
                END AS EX5_A5_2,
                CASE
                    WHEN (REGEXP_INSTR(BINARY EX6_1, '[A-Z]{1,2}[0-9]{1,3}[a-z]+') != 0)
                    THEN CONCAT(
                        CONCAT(
                            SUBSTR(EX6_1, 1, REGEXP_INSTR(BINARY EX6_1, '[a-z]+')), ';'
                        ), SUBSTR(EX6_1, REGEXP_INSTR(BINARY EX6_1, '[a-z]+'))
                    )
                    ELSE EX6_1
                END AS EX6_A6_1,
                CASE
                    WHEN (REGEXP_INSTR(BINARY EX6_2, '[A-Z]{1,2}[0-9]{1,3} [a-z]+') != 0)
                    THEN CONCAT(
                        CONCAT(
                            SUBSTR(EX6_2, 1, REGEXP_INSTR(EX6_2, '[0-9] ')), ';'
                        ), SUBSTR(EX6_2, REGEXP_INSTR(BINARY EX6_2, '[a-z]+'))
                    )
                    ELSE EX6_2
                END AS EX6_A6_2,
                CASE
                    WHEN (REGEXP_INSTR(BINARY EX7_1, '[A-Z]{1,2}[0-9]{1,3}[a-z]+') != 0)
                    THEN CONCAT(
                        CONCAT(
                            SUBSTR(EX7_1, 1, REGEXP_INSTR(BINARY EX7_1, '[a-z]+')), ';'
                        ), SUBSTR(EX7_1, REGEXP_INSTR(BINARY EX7_1, '[a-z]+'))
                    )
                    ELSE EX7_1
                END AS EX7_A7_1,
                CASE
                    WHEN (REGEXP_INSTR(BINARY EX7_2, '[A-Z]{1,2}[0-9]{1,3} [a-z]+') != 0)
                    THEN CONCAT(
                        CONCAT(
                            SUBSTR(EX7_2, 1, REGEXP_INSTR(EX7_2, '[0-9] ')), ';'
                        ), SUBSTR(EX7_2, REGEXP_INSTR(BINARY EX7_2, '[a-z]+'))
                    )
                    ELSE EX7_2
                END AS EX7_A7_2,
                CASE
                    WHEN (REGEXP_INSTR(BINARY EX8_1, '[A-Z]{1,2}[0-9]{1,3}[a-z]+') != 0)
                    THEN CONCAT(
                        CONCAT(
                            SUBSTR(EX8_1, 1, REGEXP_INSTR(BINARY EX8_1, '[a-z]+')), ';'
                        ), SUBSTR(EX8_1, REGEXP_INSTR(BINARY EX8_1, '[a-z]+'))
                    )
                    ELSE EX8_1
                END AS EX8_A8_1,
                CASE
                    WHEN (REGEXP_INSTR(BINARY EX8_2, '[A-Z]{1,2}[0-9]{1,3} [a-z]+') != 0)
                    THEN CONCAT(
                        CONCAT(
                            SUBSTR(EX8_2, 1, REGEXP_INSTR(EX8_2, '[0-9] ')), ';'
                        ), SUBSTR(EX8_2, REGEXP_INSTR(BINARY EX8_2, '[a-z]+'))
                    )
                    ELSE EX8_2
                END AS EX8_A8_2,
                CASE
                    WHEN (REGEXP_INSTR(BINARY EX9_1, '[A-Z]{1,2}[0-9]{1,3}[a-z]+') != 0)
                    THEN CONCAT(
                        CONCAT(
                            SUBSTR(EX9_1, 1, REGEXP_INSTR(BINARY EX9_1, '[a-z]+')), ';'
                        ), SUBSTR(EX9_1, REGEXP_INSTR(BINARY EX9_1, '[a-z]+'))
                    )
                    ELSE EX9_1
                END AS EX9_A9_1,
                CASE
                    WHEN (REGEXP_INSTR(BINARY EX10_1, '[A-Z]{1,2}[0-9]{1,3}[a-z]+') != 0)
                    THEN CONCAT(
                        CONCAT(
                            SUBSTR(EX10_1, 1, REGEXP_INSTR(BINARY EX10_1, '[a-z]+')), ';'
                        ), SUBSTR(EX10_1, REGEXP_INSTR(BINARY EX10_1, '[a-z]+'))
                    )
                    ELSE EX10_1
                END AS EX10_A10_1,
                CASE
                    WHEN (REGEXP_INSTR(BINARY EX11_1, '[A-Z]{1,2}[0-9]{1,3}[a-z]+') != 0)
                    THEN CONCAT(
                        CONCAT(
                            SUBSTR(EX11_1, 1, REGEXP_INSTR(BINARY EX11_1, '[a-z]+')), ';'
                        ), SUBSTR(EX11_1, REGEXP_INSTR(BINARY EX11_1, '[a-z]+'))
                    )
                    ELSE EX11_1
                END AS EX11_A11_1,
                CASE
                    WHEN (REGEXP_INSTR(BINARY EX12_1, '[A-Z]{1,2}[0-9]{1,3}[a-z]+') != 0)
                    THEN CONCAT(
                        CONCAT(
                            SUBSTR(EX12_1, 1, REGEXP_INSTR(BINARY EX12_1, '[a-z]+')), ';'
                        ), SUBSTR(EX12_1, REGEXP_INSTR(BINARY EX12_1, '[a-z]+'))
                    )
                    ELSE EX12_1
                END AS EX12_A12_1,
                CASE
                    WHEN (REGEXP_INSTR(BINARY EX13_1, '[A-Z]{1,2}[0-9]{1,3}[a-z]+') != 0)
                    THEN CONCAT(
                        CONCAT(
                            SUBSTR(EX13_1, 1, REGEXP_INSTR(BINARY EX13_1, '[a-z]+')), ';'
                        ), SUBSTR(EX13_1, REGEXP_INSTR(BINARY EX13_1, '[a-z]+'))
                    )
                    ELSE EX13_1
                END AS EX13_A13_1,
                CASE
                    WHEN (REGEXP_INSTR(EX14_1, '[A-Z]{1,2}[0-9]{1,3}[a-z]+') != 0)
                    THEN CONCAT(
                        CONCAT(
                            SUBSTR(EX14_1, 1, REGEXP_INSTR(BINARY EX14_1, '[a-z]+')), ';'
                        ), SUBSTR(EX14_1, REGEXP_INSTR(BINARY EX14_1, '[a-z]+'))
                    )
                    ELSE EX14_1
                END AS EX14_A14_1
            FROM(
                SELECT *,
                    CASE
                        WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_ELSE1, REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE1, '[^;]+', 1, 1)) IS NOT NULL)
                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE1, '[^;]+', 1, 1)
                        ELSE NULL
                    END AS EX1_1,
                    CASE
                        WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_ELSE2, REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE2, '[^;]+', 1, 1)) IS NOT NULL)
                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE2, '[^;]+', 1, 1)
                        ELSE NULL
                    END AS EX1_2,
                    CASE
                        WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_ELSE1, REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE1, '[^;]+', 1, 2)) IS NOT NULL)
                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE1, '[^;]+', 1, 2)
                        ELSE NULL
                    END AS EX2_1,
                    CASE
                        WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_ELSE2, REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE2, '[^;]+', 1, 2)) IS NOT NULL)
                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE2, '[^;]+', 1, 2)
                        ELSE NULL
                    END AS EX2_2,
                    CASE
                        WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_ELSE1, REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE1, '[^;]+', 1, 3)) IS NOT NULL)
                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE1, '[^;]+', 1, 3)
                        ELSE NULL
                    END AS EX3_1,
                    CASE
                        WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_ELSE2, REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE2, '[^;]+', 1, 3)) IS NOT NULL)
                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE2, '[^;]+', 1, 3)
                        ELSE NULL
                    END AS EX3_2,
                    CASE
                        WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_ELSE1, REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE1, '[^;]+', 1, 4)) IS NOT NULL)
                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE1, '[^;]+', 1, 4)
                        ELSE NULL
                    END AS EX4_1,
                    CASE
                        WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_ELSE2, REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE2, '[^;]+', 1, 4)) IS NOT NULL)
                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE2, '[^;]+', 1, 4)
                        ELSE NULL
                    END AS EX4_2,
                    CASE
                        WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_ELSE1, REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE1, '[^;]+', 1, 5)) IS NOT NULL)
                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE1, '[^;]+', 1, 5)
                        ELSE NULL
                    END AS EX5_1,
                    CASE
                        WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_ELSE2, REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE2, '[^;]+', 1, 5)) IS NOT NULL)
                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE2, '[^;]+', 1, 5)
                        ELSE NULL
                    END AS EX5_2,
                    CASE
                        WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_ELSE1, REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE1, '[^;]+', 1, 6)) IS NOT NULL)
                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE1, '[^;]+', 1, 6)
                        ELSE NULL
                    END AS EX6_1,
                    CASE
                        WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_ELSE2, REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE2, '[^;]+', 1, 6)) IS NOT NULL)
                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE2, '[^;]+', 1, 6)
                        ELSE NULL
                    END AS EX6_2,
                    CASE
                        WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_ELSE1, REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE1, '[^;]+', 1, 7)) IS NOT NULL)
                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE1, '[^;]+', 1, 7)
                        ELSE NULL
                    END AS EX7_1,
                    CASE
                        WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_ELSE2, REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE2, '[^;]+', 1, 7)) IS NOT NULL)
                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE2, '[^;]+', 1, 7)
                        ELSE NULL
                    END AS EX7_2,
                    CASE
                        WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_ELSE1, REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE1, '[^;]+', 1, 8)) IS NOT NULL)
                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE1, '[^;]+', 1, 8)
                        ELSE NULL
                    END AS EX8_1,
                    CASE
                        WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_ELSE2, REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE2, '[^;]+', 1, 8)) IS NOT NULL)
                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE2, '[^;]+', 1, 8)
                        ELSE NULL
                    END AS EX8_2,
                    CASE
                        WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_ELSE1, REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE1, '[^;]+', 1, 9)) IS NOT NULL)
                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE1, '[^;]+', 1, 9)
                        ELSE NULL
                    END AS EX9_1,
                    CASE
                        WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_ELSE1, REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE1, '[^;]+', 1, 10)) IS NOT NULL)
                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE1, '[^;]+', 1, 10)
                        ELSE NULL
                    END AS EX10_1,
                    CASE
                        WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_ELSE1, REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE1, '[^;]+', 1, 11)) IS NOT NULL)
                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE1, '[^;]+', 1, 11)
                        ELSE NULL
                    END AS EX11_1,
                    CASE
                        WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_ELSE1, REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE1, '[^;]+', 1, 12)) IS NOT NULL)
                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE1, '[^;]+', 1, 12)
                        ELSE NULL
                    END AS EX12_1,
                    CASE
                        WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_ELSE1, REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE1, '[^;]+', 1, 13)) IS NOT NULL)
                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE1, '[^;]+', 1, 13)
                        ELSE NULL
                    END AS EX13_1,
                    CASE
                        WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_ELSE1, REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE1, '[^;]+', 1, 14)) IS NOT NULL)
                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_ELSE1, '[^;]+', 1, 14)
                        ELSE NULL
                    END AS EX14_1
                FROM(
                    SELECT *,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY PARAFFIN_BLOCK_KEYS_R1, '[A-Z]{1,2}[0-9]{1,3}[a-z]+') != 0 AND REGEXP_INSTR(BINARY PARAFFIN_BLOCK_KEYS_R1, '[A-Z]{1,2}[0-9]{1,3} [a-z]+') = 0)
                            THEN PARAFFIN_BLOCK_KEYS_R1
                            ELSE NULL
                        END AS PARAFFIN_BLOCK_KEYS_ELSE1,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY PARAFFIN_BLOCK_KEYS_R1, '[0-9]{1,3}[a-z]+') = 0 AND REGEXP_INSTR(BINARY PARAFFIN_BLOCK_KEYS_R1, '[A-Z]{1,2}[0-9]{1,3} [a-z]+') != 0 AND REGEXP_INSTR(BINARY PARAFFIN_BLOCK_KEYS_R1, '[A-z] [A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(BINARY PARAFFIN_BLOCK_KEYS_R1, '[A-Z]{1,2}[0-9]{1,3} [and]') = 0)
                            THEN PARAFFIN_BLOCK_KEYS_R1
                            ELSE NULL
                        END AS PARAFFIN_BLOCK_KEYS_ELSE2
                        /*
                        CASE
                            WHEN (REGEXP_INSTR(BINARY PARAFFIN_BLOCK_KEYS_R1, '[A-z] [A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(BINARY PARAFFIN_BLOCK_KEYS_R1, '[A-Z]{1,2}[0-9]{1,3} [a-z]+') = 0 AND REGEXP_INSTR(BINARY PARAFFIN_BLOCK_KEYS_R1, '[A-Z]{1,2}[0-9]{1,3} [and]') = 0)
                            THEN PARAFFIN_BLOCK_KEYS_R1
                            ELSE NULL
                        END AS PARAFFIN_BLOCK_KEYS_ELSE3,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY PARAFFIN_BLOCK_KEYS_R1, '[A-z] [A-Z]{1,2}[0-9]{1,3}') != 0  AND REGEXP_INSTR(BINARY PARAFFIN_BLOCK_KEYS_R1, '[A-Z]{1,2}[0-9]{1,3} [a-z]+') != 0 AND REGEXP_INSTR(BINARY PARAFFIN_BLOCK_KEYS_R1, '[A-Z]{1,2}[0-9]{1,3} [and]') = 0)
                            THEN PARAFFIN_BLOCK_KEYS_R1
                            ELSE NULL
                        END AS PARAFFIN_BLOCK_KEYS_ELSE4
                        */
                    FROM test_type2_a2_3
                ) a
            ) a
        ) a
    ) a
) a