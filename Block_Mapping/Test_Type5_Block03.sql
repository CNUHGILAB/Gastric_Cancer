SELECT
    원무접수ID,
    환자번호,
    E_BLOCK_B,
    L_BLOCK_B,
    C_BLOCK_B,
    E_BLOCK_C,
    L_BLOCK_C,
    C_BLOCK_C,
    E_BLOCK_D,
    L_BLOCK_D,
    C_BLOCK_D,
    E_BLOCK_E,
    L_BLOCK_E,
    C_BLOCK_E
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(BLOCK1_4, '') IS NOT NULL)
            THEN BLOCK1_4
            ELSE NULL
        END AS E_BLOCK_B,
        CASE
            WHEN (NULLIF(BLOCK1_2, '') IS NOT NULL)
            THEN BLOCK1_2
            ELSE NULL
        END AS L_BLOCK_B,
        CASE
            WHEN (NULLIF(BLOCK1_3, '') IS NOT NULL)
            THEN REPLACE(BLOCK1_3, ' consists of ', '')
            ELSE NULL
        END AS C_BLOCK_B,
        CASE
            WHEN (NULLIF(BLOCK2_5, '') IS NOT NULL)
            THEN BLOCK2_5
            ELSE NULL
        END AS E_BLOCK_C,
        CASE
            WHEN (NULLIF(BLOCK2_3, '') IS NOT NULL)
            THEN BLOCK2_3
            ELSE NULL
        END AS L_BLOCK_C,
        CASE
            WHEN (NULLIF(BLOCK2_4, '') IS NOT NULL)
            THEN REPLACE(BLOCK2_4, ' consists of ', '')
            ELSE NULL
        END AS C_BLOCK_C,
        CASE
            WHEN (NULLIF(BLOCK3_5, '') IS NOT NULL)
            THEN BLOCK3_5
            ELSE NULL
        END AS E_BLOCK_D,
        CASE
            WHEN (NULLIF(BLOCK3_3, '') IS NOT NULL)
            THEN BLOCK3_3
            ELSE NULL
        END AS L_BLOCK_D,
        CASE
            WHEN (NULLIF(BLOCK3_4, '') IS NOT NULL)
            THEN REPLACE(BLOCK3_4, ' consists of ', '')
            ELSE NULL
        END AS C_BLOCK_D,
        CASE
            WHEN (NULLIF(BLOCK4_5, '') IS NOT NULL)
            THEN BLOCK4_5
            ELSE NULL
        END AS E_BLOCK_E,
        CASE
            WHEN (NULLIF(BLOCK4_3, '') IS NOT NULL)
            THEN BLOCK4_3
            ELSE NULL
        END AS L_BLOCK_E,
        CASE
            WHEN (NULLIF(BLOCK4_4, '') IS NOT NULL)
            THEN REPLACE(BLOCK4_4, ' consists of ', '')
            ELSE NULL
        END AS C_BLOCK_E
    FROM(
        -- Explain
        SELECT*,
            CASE
                WHEN (NULLIF(BLOCK1_1, '') IS NOT NULL AND REGEXP_INSTR(BLOCK1_1, '^No[0-9]') != 0)
                THEN REPLACE(REGEXP_SUBSTR(BLOCK1_1, '[^,]+', 1, 1), 'No2. ', '')
                WHEN (NULLIF(BLOCK1_1, '') IS NOT NULL AND REGEXP_INSTR(BLOCK1_1, '^[0-9][)]') != 0)
                THEN REPLACE(REGEXP_SUBSTR(BLOCK1_1, '[^,]+', 1, 1), '2) ', '')
                WHEN (NULLIF(BLOCK1_1, '') IS NOT NULL AND REGEXP_INSTR(BLOCK1_1, '^[#][0-9]') != 0)
                THEN REPLACE(REGEXP_SUBSTR(BLOCK1_1, '[^:]+', 1, 2), BLOCK1_3, '')
                ELSE NULL
            END AS BLOCK1_4,
            CASE
                WHEN (NULLIF(BLOCK2_2, '') IS NOT NULL AND REGEXP_INSTR(BLOCK2_2, '^[0-9][)]') != 0)
                THEN REPLACE(REGEXP_SUBSTR(BLOCK2_2, '[^,]+', 1, 1), '3) ', '')
                WHEN (NULLIF(BLOCK2_2, '') IS NOT NULL AND REGEXP_INSTR(BLOCK2_2, '^[#][0-9]') != 0)
                THEN REPLACE(REGEXP_SUBSTR(BLOCK2_2, '[^:]+', 1, 2), BLOCK2_4, '')
                ELSE NULL
            END AS BLOCK2_5,
            CASE
                WHEN (NULLIF(BLOCK3_2, '') IS NOT NULL AND REGEXP_INSTR(BLOCK3_2, '^[#][0-9]') != 0)
                THEN REPLACE(REGEXP_SUBSTR(BLOCK3_2, '[^:]+', 1, 2), BLOCK3_4, '')
                ELSE NULL
            END AS BLOCK3_5,
            CASE
                WHEN (NULLIF(BLOCK4_2, '') IS NOT NULL AND REGEXP_INSTR(BLOCK4_2, '^[#][0-9]') != 0)
                THEN REPLACE(REGEXP_SUBSTR(BLOCK4_2, '[^:]+', 1, 2), BLOCK4_4, '')
                ELSE NULL
            END AS BLOCK4_5
        FROM(
            -- Cosists of
            SELECT *,
                CASE
                    WHEN (NULLIF(BLOCK1_1, '') IS NOT NULL AND REGEXP_INSTR(BLOCK1_1, '^[#][0-9]') != 0)
                    THEN SUBSTR(REGEXP_SUBSTR(BLOCK1_1, '[^:]+', 1, 2), INSTR(REGEXP_SUBSTR(BLOCK1_1, '[^:]+', 1, 2), ' consists of'))
                    ELSE NULL
                END AS BLOCK1_3,
                CASE
                    WHEN (NULLIF(BLOCK2_2, '') IS NOT NULL AND REGEXP_INSTR(BLOCK2_2, '^[#][0-9]') != 0)
                    THEN SUBSTR(REGEXP_SUBSTR(BLOCK2_2, '[^:]+', 1, 2), INSTR(REGEXP_SUBSTR(BLOCK2_2, '[^:]+', 1, 2), ' consists of'))
                    ELSE NULL
                END AS BLOCK2_4,
                CASE
                    WHEN (NULLIF(BLOCK3_2, '') IS NOT NULL AND REGEXP_INSTR(BLOCK3_2, '^[#][0-9]') != 0)
                    THEN SUBSTR(REGEXP_SUBSTR(BLOCK3_2, '[^:]+', 1, 2), INSTR(REGEXP_SUBSTR(BLOCK3_2, '[^:]+', 1, 2), ' consists of'))
                    ELSE NULL
                END AS BLOCK3_4,
                CASE
                    WHEN (NULLIF(BLOCK4_2, '') IS NOT NULL AND REGEXP_INSTR(BLOCK4_2, '^[#][0-9]') != 0)
                    THEN SUBSTR(REGEXP_SUBSTR(BLOCK4_2, '[^:]+', 1, 2), INSTR(REGEXP_SUBSTR(BLOCK4_2, '[^:]+', 1, 2), ' consists of'))
                    ELSE NULL
                END AS BLOCK4_4
            FROM(
                -- Label
                SELECT *,
                    CASE
                        WHEN (NULLIF(BLOCK1_1, '') IS NOT NULL AND REGEXP_INSTR(BLOCK1_1, '^No[0-9]') != 0)
                        THEN SUBSTR(REGEXP_SUBSTR(BLOCK1_1, '[^,]+', 1, 2), REGEXP_INSTR(REGEXP_SUBSTR(BLOCK1_1, '[^,]+', 1, 2), ' \"'))
                        WHEN (NULLIF(BLOCK1_1, '') IS NOT NULL AND REGEXP_INSTR(BLOCK1_1, '^[0-9][)]') != 0)
                        THEN SUBSTR(REGEXP_SUBSTR(BLOCK1_1, '[^,]+', 1, 2), REGEXP_INSTR(REGEXP_SUBSTR(BLOCK1_1, '[^,]+', 1, 2), ' \"'))
                        WHEN (NULLIF(BLOCK1_1, '') IS NOT NULL AND REGEXP_INSTR(BLOCK1_1, '^[#][0-9]') != 0)
                        THEN REPLACE(REGEXP_SUBSTR(BLOCK1_1, '[^:]+', 1, 1), '#2 ', '')
                        ELSE NULL
                    END AS BLOCK1_2,
                    CASE
                        WHEN (NULLIF(BLOCK2_2, '') IS NOT NULL AND REGEXP_INSTR(BLOCK2_2, '^[0-9][)]') != 0)
                        THEN SUBSTR(REGEXP_SUBSTR(BLOCK2_2, '[^,]+', 1, 2), REGEXP_INSTR(REGEXP_SUBSTR(BLOCK2_2, '[^,]+', 1, 2), ' \"'))
                        WHEN (NULLIF(BLOCK2_2, '') IS NOT NULL AND REGEXP_INSTR(BLOCK2_2, '^[#][0-9]') != 0)
                        THEN REPLACE(REGEXP_SUBSTR(BLOCK2_2, '[^:]+', 1, 1), '#3 ', '')
                        ELSE NULL
                    END AS BLOCK2_3,
                    CASE
                        WHEN (NULLIF(BLOCK3_2, '') IS NOT NULL AND REGEXP_INSTR(BLOCK3_2, '^[#][0-9]') != 0)
                        THEN REPLACE(REGEXP_SUBSTR(BLOCK3_2, '[^:]+', 1, 1), '#4 ', '')
                        ELSE NULL
                    END AS BLOCK3_3,
                    CASE
                        WHEN (NULLIF(BLOCK4_2, '') IS NOT NULL AND REGEXP_INSTR(BLOCK4_2, '^[#][0-9]') != 0)
                        THEN REPLACE(REGEXP_SUBSTR(BLOCK4_2, '[^:]+', 1, 1), '#5 ', '')
                        ELSE NULL
                    END AS BLOCK4_3
                FROM(
                    SELECT *,
                        CASE
                            WHEN (NULLIF(BLOCK6_1, '') IS NOT NULL AND REGEXP_INSTR(BLOCK6, '^[#][0-9]') != 0)
                            THEN SUBSTR(BLOCK6, 1, INSTR(BLOCK6, ' (E)'))
                            ELSE NULL
                        END AS BLOCK4_2
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (NULLIF(BLOCK4_1, '') IS NOT NULL AND REGEXP_INSTR(BLOCK4, '^[#][0-9]') != 0)
                                THEN SUBSTR(BLOCK4, 1, INSTR(BLOCK4, ' (D)'))
                                WHEN (NULLIF(BLOCK5_1, '') IS NOT NULL AND REGEXP_INSTR(BLOCK5, '^[#][0-9]') != 0)
                                THEN SUBSTR(BLOCK5, 1, INSTR(BLOCK5, ' (D)'))
                                ELSE NULL
                            END AS BLOCK3_2
                        FROM(
                            SELECT *,
                                CASE
                                    WHEN (NULLIF(BLOCK2_1, '') IS NOT NULL AND REGEXP_INSTR(BLOCK2, '^[0-9][)]') != 0)
                                    THEN REGEXP_SUBSTR(BLOCK2, '[^:]+', 1, 1)
                                    WHEN (NULLIF(BLOCK3_1, '') IS NOT NULL AND REGEXP_INSTR(BLOCK3, '^[#][0-9]') != 0)
                                    THEN SUBSTR(BLOCK3, 1, INSTR(BLOCK3, ' (C)'))
                                    ELSE NULL
                                END AS BLOCK2_2
                            FROM(
                                SELECT *,
                                    CASE
                                        WHEN (NULLIF(BLOCK1, '') IS NOT NULL AND REGEXP_INSTR(BLOCK1, '^[#][0-9]') != 0)
                                        THEN SUBSTR(BLOCK1, 1, INSTR(BLOCK1, ' (B)'))
                                        WHEN (NULLIF(BLOCK1, '') IS NOT NULL AND REGEXP_INSTR(BLOCK1, '^[0-9][)]') != 0)
                                        THEN REGEXP_SUBSTR(BLOCK1, '[^:]+', 1, 1)
                                        WHEN (NULLIF(BLOCK1, '') IS NOT NULL AND REGEXP_INSTR(BLOCK1, '^No[0-9]') != 0)
                                        THEN SUBSTR(BLOCK1, 1, INSTR(BLOCK1, ' (B)'))
                                        ELSE NULL
                                    END AS BLOCK1_1,
                                    CASE
                                        WHEN (INSTR(BLOCK2, '★') = 0)
                                        THEN BLOCK2
                                        ELSE NULL
                                    END AS BLOCK2_1,
                                    CASE
                                        WHEN (INSTR(BLOCK3, '★') = 0)
                                        THEN BLOCK3
                                        ELSE NULL
                                    END AS BLOCK3_1,
                                    CASE
                                        WHEN (INSTR(BLOCK4, '★') = 0)
                                        THEN BLOCK4
                                        ELSE NULL
                                    END AS BLOCK4_1,
                                    CASE
                                        WHEN (INSTR(BLOCK5, '★') = 0)
                                        THEN BLOCK5
                                        ELSE NULL
                                    END AS BLOCK5_1,
                                    CASE
                                        WHEN (INSTR(BLOCK6, '★') = 0)
                                        THEN BLOCK6
                                        ELSE NULL
                                    END AS BLOCK6_1
                                FROM test_type5_block_02
                            ) a
                        ) a
                    ) a
                ) a
            ) a
        ) a
    ) a
) a