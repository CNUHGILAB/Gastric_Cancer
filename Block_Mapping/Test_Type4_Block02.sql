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
    C_BLOCK_E,
    E_BLOCK_G,
    L_BLOCK_G,
    C_BLOCK_G,
    E_BLOCK_H,
    L_BLOCK_H,
    C_BLOCK_H,
    E_BLOCK_I,
    L_BLOCK_I,
    C_BLOCK_I,
    E_BLOCK_J,
    L_BLOCK_J,
    C_BLOCK_J
FROM(
    -- Consist of
    SELECT *,
        CASE
            WHEN (NULLIF(BLOCK1_3, '') IS NOT NULL)
            THEN REPLACE(BLOCK1_3, 'consists of', '')
            ELSE NULL
        END AS C_BLOCK_B,
        CASE
            WHEN (NULLIF(BLOCK2_3, '') IS NOT NULL)
            THEN REPLACE(BLOCK2_3, 'consists of', '')
            ELSE NULL
        END AS C_BLOCK_C,
        CASE
            WHEN (NULLIF(BLOCK3_3, '') IS NOT NULL)
            THEN REPLACE(BLOCK3_3, 'consists of', '')
            ELSE NULL
        END AS C_BLOCK_D,
        CASE
            WHEN (NULLIF(BLOCK4_3, '') IS NOT NULL)
            THEN REPLACE(BLOCK4_3, 'consists of', '')
            ELSE NULL
        END AS C_BLOCK_E,
        CASE
            WHEN (NULLIF(BLOCK5_3, '') IS NOT NULL)
            THEN REPLACE(BLOCK5_3, 'consists of', '')
            ELSE NULL
        END AS C_BLOCK_G,
        CASE
            WHEN (NULLIF(BLOCK6_3, '') IS NOT NULL)
            THEN REPLACE(BLOCK6_3, 'consists of', '')
            ELSE NULL
        END AS C_BLOCK_H,
        CASE
            WHEN (NULLIF(BLOCK7_3, '') IS NOT NULL)
            THEN REPLACE(BLOCK7_3, 'consists of', '')
            ELSE NULL
        END AS C_BLOCK_I,
        CASE
            WHEN (NULLIF(BLOCK8_3, '') IS NOT NULL)
            THEN REPLACE(BLOCK8_3, 'consists of', '')
            ELSE NULL
        END AS C_BLOCK_J
    FROM(
        -- Label
        SELECT *,
            CASE
                WHEN (NULLIF(BLOCK1_4, '') IS NOT NULL)
                THEN REPLACE(
                    REGEXP_REPLACE(
                        BLOCK1_4, '\"', ''
                    ), ',', ''
                )
                ELSE NULL
            END AS L_BLOCK_B,
            CASE
                WHEN (NULLIF(BLOCK2_4, '') IS NOT NULL)
                THEN REPLACE(
                    REGEXP_REPLACE(
                        BLOCK2_4, '\"', ''
                    ), ',', ''
                )
                ELSE NULL
            END AS L_BLOCK_C,
            CASE
                WHEN (NULLIF(BLOCK3_4, '') IS NOT NULL)
                THEN REPLACE(
                    REGEXP_REPLACE(
                        BLOCK3_4, '\"', ''
                    ), ',', ''
                )
                ELSE NULL
            END AS L_BLOCK_D,
            CASE
                WHEN (NULLIF(BLOCK4_4, '') IS NOT NULL)
                THEN REPLACE(
                    REGEXP_REPLACE(
                        BLOCK4_4, '\"', ''
                    ), ',', ''
                )
                ELSE NULL
            END AS L_BLOCK_E,
            CASE
                WHEN (NULLIF(BLOCK5_4, '') IS NOT NULL)
                THEN REPLACE(
                    REGEXP_REPLACE(
                        BLOCK5_4, '\"', ''
                    ), ',', ''
                )
                ELSE NULL
            END AS L_BLOCK_G,
            CASE
                WHEN (NULLIF(BLOCK6_4, '') IS NOT NULL)
                THEN REPLACE(
                    REGEXP_REPLACE(
                        BLOCK6_4, '\"', ''
                    ), ',', ''
                )
                ELSE NULL
            END AS L_BLOCK_H,
            CASE
                WHEN (NULLIF(BLOCK7_4, '') IS NOT NULL)
                THEN REPLACE(
                    REGEXP_REPLACE(
                        BLOCK7_4, '\"', ''
                    ), ',', ''
                )
                ELSE NULL
            END AS L_BLOCK_I,
            CASE
                WHEN (NULLIF(BLOCK8_4, '') IS NOT NULL)
                THEN REPLACE(
                    REGEXP_REPLACE(
                        BLOCK8_4, '\"', ''
                    ), ',', ''
                )
                ELSE NULL
            END AS L_BLOCK_J
        FROM(
            -- Explain
            SELECT *,
                CASE
                    WHEN (NULLIF(BLOCK1_2, '') IS NOT NULL AND INSTR(BLOCK1_2, '2.') != 0)
                    THEN REPLACE(
                        REPLACE(
                            BLOCK1_2, '2.', ''
                        ), ',', ''
                    )
                    WHEN (NULLIF(BLOCK1_2, '') IS NOT NULL AND INSTR(BLOCK1_2, '2)') != 0)
                    THEN REPLACE(
                        REPLACE(
                            BLOCK1_2, '2)', ''
                        ), ',', ''
                    )
                    ELSE NULL
                END AS E_BLOCK_B,
                CASE
                    WHEN (NULLIF(BLOCK2_2, '') IS NOT NULL AND INSTR(BLOCK2_2, '3.') != 0)
                    THEN REPLACE(
                        REPLACE(
                            BLOCK2_2, '3.', ''
                        ), ',', ''
                    )
                    WHEN (NULLIF(BLOCK2_2, '') IS NOT NULL AND INSTR(BLOCK2_2, '3)') != 0)
                    THEN REPLACE(
                        REPLACE(
                            BLOCK2_2, '3)', ''
                        ), ',', ''
                    )
                    ELSE NULL
                END AS E_BLOCK_C,
                CASE
                    WHEN (NULLIF(BLOCK3_2, '') IS NOT NULL AND INSTR(BLOCK3_2, '4.') != 0)
                    THEN REPLACE(
                        REPLACE(
                            BLOCK3_2, '4.', ''
                        ), ',', ''
                    )
                    WHEN (NULLIF(BLOCK3_2, '') IS NOT NULL AND INSTR(BLOCK3_2, '4)') != 0)
                    THEN REPLACE(
                        REPLACE(
                            BLOCK3_2, '4)', ''
                        ), ',', ''
                    )
                    ELSE NULL
                END AS E_BLOCK_D,
                CASE
                    WHEN (NULLIF(BLOCK4_2, '') IS NOT NULL AND INSTR(BLOCK4_2, '5.') != 0)
                    THEN REPLACE(
                        REPLACE(
                            BLOCK4_2, '5.', ''
                        ), ',', ''
                    )
                    WHEN (NULLIF(BLOCK4_2, '') IS NOT NULL AND INSTR(BLOCK4_2, '5)') != 0)
                    THEN REPLACE(
                        REPLACE(
                            BLOCK4_2, '5)', ''
                        ), ',', ''
                    )
                    ELSE NULL
                END AS E_BLOCK_E,
                CASE
                    WHEN (NULLIF(BLOCK5_2, '') IS NOT NULL AND INSTR(BLOCK5_2, '6.') != 0)
                    THEN REPLACE(
                        REPLACE(
                            BLOCK5_2, '6.', ''
                        ), ',', ''
                    )
                    WHEN (NULLIF(BLOCK5_2, '') IS NOT NULL AND INSTR(BLOCK5_2, '6)') != 0)
                    THEN REPLACE(
                        REPLACE(
                            BLOCK5_2, '6)', ''
                        ), ',', ''
                    )
                    ELSE NULL
                END AS E_BLOCK_G,
                CASE
                    WHEN (NULLIF(BLOCK6_2, '') IS NOT NULL AND INSTR(BLOCK6_2, '7.') != 0)
                    THEN REPLACE(
                        REPLACE(
                            BLOCK6_2, '7.', ''
                        ), ',', ''
                    )
                    WHEN (NULLIF(BLOCK6_2, '') IS NOT NULL AND INSTR(BLOCK6_2, '7)') != 0)
                    THEN REPLACE(
                        REPLACE(
                            BLOCK6_2, '7)', ''
                        ), ',', ''
                    )
                    ELSE NULL
                END AS E_BLOCK_H,
                CASE
                    WHEN (NULLIF(BLOCK7_2, '') IS NOT NULL AND INSTR(BLOCK7_2, '8.') != 0)
                    THEN REPLACE(
                        REPLACE(
                            BLOCK7_2, '8.', ''
                        ), ',', ''
                    )
                    WHEN (NULLIF(BLOCK7_2, '') IS NOT NULL AND INSTR(BLOCK7_2, '8)') != 0)
                    THEN REPLACE(
                        REPLACE(
                            BLOCK7_2, '8)', ''
                        ), ',', ''
                    )
                    ELSE NULL
                END AS E_BLOCK_I,
                CASE
                    WHEN (NULLIF(BLOCK8_2, '') IS NOT NULL AND INSTR(BLOCK8_2, '2.') != 0)
                    THEN REPLACE(
                        REPLACE(
                            BLOCK8_2, '2.', ''
                        ), ',', ''
                    )
                    WHEN (NULLIF(BLOCK8_2, '') IS NOT NULL AND INSTR(BLOCK8_2, '2)') != 0)
                    THEN REPLACE(
                        REPLACE(
                            BLOCK8_2, '2)', ''
                        ), ',', ''
                    )
                    ELSE NULL
                END AS E_BLOCK_J
            FROM(
                SELECT *,
                    CASE
                        WHEN (NULLIF(BLOCK1_1, '') IS NOT NULL AND INSTR(BLOCK1_1, 'consists of') != 0)
                        THEN REPLACE(SUBSTR(BLOCK1_1, REGEXP_INSTR(BLOCK1_1, ' \"')), BLOCK1_3, '')
                        WHEN (NULLIF(BLOCK1_1, '') IS NOT NULL AND INSTR(BLOCK1_1, 'consists of') = 0)
                        THEN SUBSTR(BLOCK1_1, REGEXP_INSTR(BLOCK1_1, ' \"'))
                        ELSE NULL
                    END AS BLOCK1_4,
                    CASE
                        WHEN (NULLIF(BLOCK2_1, '') IS NOT NULL AND INSTR(BLOCK2_1, 'consists of') != 0)
                        THEN REPLACE(SUBSTR(BLOCK2_1, REGEXP_INSTR(BLOCK2_1, ' \"')), BLOCK2_3, '')
                        WHEN (NULLIF(BLOCK2_1, '') IS NOT NULL AND INSTR(BLOCK2_1, 'consists of') = 0)
                        THEN SUBSTR(BLOCK2_1, REGEXP_INSTR(BLOCK2_1, ' \"'))
                        ELSE NULL
                    END AS BLOCK2_4,
                    CASE
                        WHEN (NULLIF(BLOCK3_1, '') IS NOT NULL AND INSTR(BLOCK3_1, 'consists of') != 0)
                        THEN REPLACE(SUBSTR(BLOCK3_1, REGEXP_INSTR(BLOCK3_1, ' \"')), BLOCK3_3, '')
                        WHEN (NULLIF(BLOCK3_1, '') IS NOT NULL AND INSTR(BLOCK3_1, 'consists of') = 0)
                        THEN SUBSTR(BLOCK3_1, REGEXP_INSTR(BLOCK3_1, ' \"'))
                        ELSE NULL
                    END AS BLOCK3_4,
                    CASE
                        WHEN (NULLIF(BLOCK4_1, '') IS NOT NULL AND INSTR(BLOCK4_1, 'consists of') != 0)
                        THEN REPLACE(SUBSTR(BLOCK4_1, REGEXP_INSTR(BLOCK4_1, ' \"')), BLOCK4_3, '')
                        WHEN (NULLIF(BLOCK4_1, '') IS NOT NULL AND INSTR(BLOCK4_1, 'consists of') = 0)
                        THEN SUBSTR(BLOCK4_1, REGEXP_INSTR(BLOCK4_1, ' \"'))
                        ELSE NULL
                    END AS BLOCK4_4,
                    CASE
                        WHEN (NULLIF(BLOCK5_1, '') IS NOT NULL AND INSTR(BLOCK5_1, 'consists of') != 0)
                        THEN REPLACE(SUBSTR(BLOCK5_1, REGEXP_INSTR(BLOCK5_1, ' \"')), BLOCK5_3, '')
                        WHEN (NULLIF(BLOCK5_1, '') IS NOT NULL AND INSTR(BLOCK5_1, 'consists of') = 0)
                        THEN SUBSTR(BLOCK5_1, REGEXP_INSTR(BLOCK5_1, ' \"'))
                        ELSE NULL
                    END AS BLOCK5_4,
                    CASE
                        WHEN (NULLIF(BLOCK6_1, '') IS NOT NULL AND INSTR(BLOCK6_1, 'consists of') != 0)
                        THEN REPLACE(SUBSTR(BLOCK6_1, REGEXP_INSTR(BLOCK6_1, ' \"')), BLOCK6_3, '')
                        WHEN (NULLIF(BLOCK6_1, '') IS NOT NULL AND INSTR(BLOCK6_1, 'consists of') = 0)
                        THEN SUBSTR(BLOCK6_1, REGEXP_INSTR(BLOCK6_1, ' \"'))
                        ELSE NULL
                    END AS BLOCK6_4,
                    CASE
                        WHEN (NULLIF(BLOCK7_1, '') IS NOT NULL AND INSTR(BLOCK7_1, 'consists of') != 0)
                        THEN REPLACE(SUBSTR(BLOCK7_1, REGEXP_INSTR(BLOCK7_1, ' \"')), BLOCK7_3, '')
                        WHEN (NULLIF(BLOCK7_1, '') IS NOT NULL AND INSTR(BLOCK7_1, 'consists of') = 0)
                        THEN SUBSTR(BLOCK7_1, REGEXP_INSTR(BLOCK7_1, ' \"'))
                        ELSE NULL
                    END AS BLOCK7_4,
                    CASE
                        WHEN (NULLIF(BLOCK8_1, '') IS NOT NULL AND INSTR(BLOCK8_1, 'consists of') != 0)
                        THEN REPLACE(SUBSTR(BLOCK8_1, REGEXP_INSTR(BLOCK8_1, ' \"')), BLOCK8_3, '')
                        WHEN (NULLIF(BLOCK8_1, '') IS NOT NULL AND INSTR(BLOCK8_1, 'consists of') = 0)
                        THEN SUBSTR(BLOCK8_1, REGEXP_INSTR(BLOCK8_1, ' \"'))
                        ELSE NULL
                    END AS BLOCK8_4
                FROM(
                    SELECT *,
                        CASE
                            WHEN (NULLIF(BLOCK1_1, '') IS NOT NULL AND INSTR(BLOCK1_1, 'consists of') != 0)
                            THEN SUBSTR(BLOCK1_1, REGEXP_INSTR(BLOCK1_1, 'consists of'))
                            ELSE NULL
                        END AS BLOCK1_3,
                        CASE
                            WHEN (NULLIF(BLOCK2_1, '') IS NOT NULL AND INSTR(BLOCK2_1, 'consists of') != 0)
                            THEN SUBSTR(BLOCK2_1, REGEXP_INSTR(BLOCK2_1, 'consists of'))
                            ELSE NULL
                        END AS BLOCK2_3,
                        CASE
                            WHEN (NULLIF(BLOCK3_1, '') IS NOT NULL AND INSTR(BLOCK3_1, 'consists of') != 0)
                            THEN SUBSTR(BLOCK3_1, REGEXP_INSTR(BLOCK3_1, 'consists of'))
                            ELSE NULL
                        END AS BLOCK3_3,
                        CASE
                            WHEN (NULLIF(BLOCK4_1, '') IS NOT NULL AND INSTR(BLOCK4_1, 'consists of') != 0)
                            THEN SUBSTR(BLOCK4_1, REGEXP_INSTR(BLOCK4_1, 'consists of'))
                            ELSE NULL
                        END AS BLOCK4_3,
                        CASE
                            WHEN (NULLIF(BLOCK5_1, '') IS NOT NULL AND INSTR(BLOCK5_1, 'consists of') != 0)
                            THEN SUBSTR(BLOCK5_1, REGEXP_INSTR(BLOCK5_1, 'consists of'))
                            ELSE NULL
                        END AS BLOCK5_3,
                        CASE
                            WHEN (NULLIF(BLOCK6_1, '') IS NOT NULL AND INSTR(BLOCK6_1, 'consists of') != 0)
                            THEN SUBSTR(BLOCK6_1, REGEXP_INSTR(BLOCK6_1, 'consists of'))
                            ELSE NULL
                        END AS BLOCK6_3,
                        CASE
                            WHEN (NULLIF(BLOCK7_1, '') IS NOT NULL AND INSTR(BLOCK7_1, 'consists of') != 0)
                            THEN SUBSTR(BLOCK7_1, REGEXP_INSTR(BLOCK7_1, 'consists of'))
                            ELSE NULL
                        END AS BLOCK7_3,
                        CASE
                            WHEN (NULLIF(BLOCK8_1, '') IS NOT NULL AND INSTR(BLOCK8_1, 'consists of') != 0)
                            THEN SUBSTR(BLOCK8_1, REGEXP_INSTR(BLOCK8_1, 'consists of'))
                            ELSE NULL
                        END AS BLOCK8_3
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (NULLIF(BLOCK1_1, '') IS NOT NULL)
                                THEN SUBSTR(BLOCK1_1, 1, INSTR(BLOCK1_1, ' labeled'))
                                ELSE NULL
                            END AS BLOCK1_2,
                            CASE
                                WHEN (NULLIF(BLOCK2_1, '') IS NOT NULL)
                                THEN SUBSTR(BLOCK2_1, 1, INSTR(BLOCK2_1, ' labeled'))
                                ELSE NULL
                            END AS BLOCK2_2,
                            CASE
                                WHEN (NULLIF(BLOCK3_1, '') IS NOT NULL)
                                THEN SUBSTR(BLOCK3_1, 1, INSTR(BLOCK3_1, ' labeled'))
                                ELSE NULL
                            END AS BLOCK3_2,
                            CASE
                                WHEN (NULLIF(BLOCK4_1, '') IS NOT NULL)
                                THEN SUBSTR(BLOCK4_1, 1, INSTR(BLOCK4_1, ' labeled'))
                                ELSE NULL
                            END AS BLOCK4_2,
                            CASE
                                WHEN (NULLIF(BLOCK5_1, '') IS NOT NULL)
                                THEN SUBSTR(BLOCK5_1, 1, INSTR(BLOCK5_1, ' labeled'))
                                ELSE NULL
                            END AS BLOCK5_2,
                            CASE
                                WHEN (NULLIF(BLOCK6_1, '') IS NOT NULL)
                                THEN SUBSTR(BLOCK6_1, 1, INSTR(BLOCK6_1, ' labeled'))
                                ELSE NULL
                            END AS BLOCK6_2,
                            CASE
                                WHEN (NULLIF(BLOCK7_1, '') IS NOT NULL)
                                THEN SUBSTR(BLOCK7_1, 1, INSTR(BLOCK7_1, ' labeled'))
                                ELSE NULL
                            END AS BLOCK7_2,
                            CASE
                                WHEN (NULLIF(BLOCK8_1, '') IS NOT NULL)
                                THEN SUBSTR(BLOCK8_1, 1, INSTR(BLOCK8_1, ' labeled'))
                                ELSE NULL
                            END AS BLOCK8_2
                        FROM(
                            SELECT *,
                                CASE
                                    WHEN (NULLIF(BLOCK1, '') IS NOT NULL)
                                    THEN REGEXP_SUBSTR(BLOCK1, '[^:]+', 1, 1)
                                    ELSE NULL
                                END AS BLOCK1_1,
                                CASE
                                    WHEN (NULLIF(BLOCK2, '') IS NOT NULL)
                                    THEN REGEXP_SUBSTR(BLOCK2, '[^:]+', 1, 1)
                                    ELSE NULL
                                END AS BLOCK2_1,
                                CASE
                                    WHEN (NULLIF(BLOCK3, '') IS NOT NULL)
                                    THEN REGEXP_SUBSTR(BLOCK3, '[^:]+', 1, 1)
                                    ELSE NULL
                                END AS BLOCK3_1,
                                CASE
                                    WHEN (NULLIF(BLOCK4, '') IS NOT NULL)
                                    THEN REGEXP_SUBSTR(BLOCK4, '[^:]+', 1, 1)
                                    ELSE NULL
                                END AS BLOCK4_1,
                                CASE
                                    WHEN (NULLIF(BLOCK5, '') IS NOT NULL)
                                    THEN REGEXP_SUBSTR(BLOCK5, '[^:]+', 1, 1)
                                    ELSE NULL
                                END AS BLOCK5_1,
                                CASE
                                    WHEN (NULLIF(BLOCK6, '') IS NOT NULL)
                                    THEN REGEXP_SUBSTR(BLOCK6, '[^:]+', 1, 1)
                                    ELSE NULL
                                END AS BLOCK6_1,
                                CASE
                                    WHEN (NULLIF(BLOCK7, '') IS NOT NULL)
                                    THEN REGEXP_SUBSTR(BLOCK7, '[^:]+', 1, 1)
                                    ELSE NULL
                                END AS BLOCK7_1,
                                CASE
                                    WHEN (NULLIF(BLOCK8, '') IS NOT NULL)
                                    THEN REGEXP_SUBSTR(BLOCK8, '[^:]+', 1, 1)
                                    ELSE NULL
                                END AS BLOCK8_1
                            FROM test_type4_block_01
                        ) a
                    ) a
                ) a
            ) a
        ) a
    ) a
) a