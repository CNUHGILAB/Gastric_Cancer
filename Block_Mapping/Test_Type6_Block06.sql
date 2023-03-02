SELECT
    원무접수ID,
    환자번호,
    L_BLOCK1_1,
    L_BLOCK2_1,
    L_BLOCK3_1,
    L_BLOCK4_1,
    L_BLOCK5_1,
    L_BLOCK6_1,
    L_BLOCK7_1,
    L_BLOCK8_1,
    L_BLOCK9_1,
    L_BLOCK10_1,
    L_BLOCK11_1,
    L_BLOCK12_1,
    L_BLOCK13_1,
    L_BLOCK14_1,
    L_BLOCK15_1,
    L_BLOCK16_1,
    C_BLOCK1_1,
    C_BLOCK2_1,
    C_BLOCK3_1,
    C_BLOCK4_1,
    C_BLOCK5_1,
    C_BLOCK6_1,
    C_BLOCK7_1,
    C_BLOCK8_1,
    C_BLOCK9_1,
    C_BLOCK10_1,
    C_BLOCK11_1,
    C_BLOCK12_1,
    C_BLOCK13_1,
    C_BLOCK14_1,
    C_BLOCK15_1,
    C_BLOCK16_1,
    L_BLOCK1_ELSE,
    L_BLOCK2_ELSE,
    L_BLOCK3_ELSE,
    L_BLOCK4_ELSE,
    L_BLOCK5_ELSE,
    L_BLOCK6_ELSE,
    L_BLOCK7_ELSE,
    L_BLOCK8_ELSE,
    L_BLOCK9_ELSE,
    L_BLOCK10_ELSE,
    L_BLOCK11_ELSE,
    L_BLOCK12_ELSE,
    L_BLOCK13_ELSE,
    L_BLOCK14_ELSE,
    L_BLOCK15_ELSE,
    L_BLOCK16_ELSE,
    C_BLOCK1_ELSE,
    C_BLOCK2_ELSE,
    C_BLOCK3_ELSE,
    C_BLOCK4_ELSE,
    C_BLOCK5_ELSE,
    C_BLOCK6_ELSE,
    C_BLOCK7_ELSE,
    C_BLOCK8_ELSE,
    C_BLOCK9_ELSE,
    C_BLOCK10_ELSE,
    C_BLOCK11_ELSE,
    C_BLOCK12_ELSE,
    C_BLOCK13_ELSE,
    C_BLOCK14_ELSE,
    C_BLOCK15_ELSE,
    C_BLOCK16_ELSE,
    EX_BLOCK1,
    EX_BLOCK2,
    EX_BLOCK3,
    EX_BLOCK4,
    EX_BLOCK5,
    EX_BLOCK6,
    EX_BLOCK7,
    EX_BLOCK8,
    EX_BLOCK9,
    EX_BLOCK10,
    EX_BLOCK11,
    EX_BLOCK12,
    EX_BLOCK13,
    EX_BLOCK14,
    EX_BLOCK15,
    EX_BLOCK16
    /*
    ED_BLOCK1,
    ED_BLOCK2,
    ED_BLOCK3,
    ED_BLOCK4,
    ED_BLOCK5,
    ED_BLOCK6,
    ED_BLOCK7,
    ED_BLOCK8,
    ED_BLOCK9,
    ED_BLOCK10,
    ED_BLOCK11,
    ED_BLOCK12,
    ED_BLOCK13,
    ED_BLOCK14,
    ED_BLOCK15,
    ED_BLOCK16
    */
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(ED_BLOCK1, '') IS NOT NULL AND NULLIF(L_BLOCK1_1, '') IS NOT NULL)
            THEN REPLACE(ED_BLOCK1, L_BLOCK1_1, '')
            ELSE NULL
        END AS EX_BLOCK1,
        CASE
            WHEN (NULLIF(ED_BLOCK2, '') IS NOT NULL AND NULLIF(L_BLOCK2_1, '') IS NOT NULL)
            THEN REPLACE(ED_BLOCK2, L_BLOCK2_1, '')
            ELSE NULL
        END AS EX_BLOCK2,
        CASE
            WHEN (NULLIF(ED_BLOCK3, '') IS NOT NULL AND NULLIF(L_BLOCK3_1, '') IS NOT NULL)
            THEN REPLACE(ED_BLOCK3, L_BLOCK3_1, '')
            ELSE NULL
        END AS EX_BLOCK3,
        CASE
            WHEN (NULLIF(ED_BLOCK4, '') IS NOT NULL AND NULLIF(L_BLOCK4_1, '') IS NOT NULL)
            THEN REPLACE(ED_BLOCK4, L_BLOCK4_1, '')
            ELSE NULL
        END AS EX_BLOCK4,
        CASE
            WHEN (NULLIF(ED_BLOCK5, '') IS NOT NULL AND NULLIF(L_BLOCK5_1, '') IS NOT NULL)
            THEN REPLACE(ED_BLOCK5, L_BLOCK5_1, '')
            ELSE NULL
        END AS EX_BLOCK5,
        CASE
            WHEN (NULLIF(ED_BLOCK6, '') IS NOT NULL AND NULLIF(L_BLOCK6_1, '') IS NOT NULL)
            THEN REPLACE(ED_BLOCK6, L_BLOCK6_1, '')
            ELSE NULL
        END AS EX_BLOCK6,
        CASE
            WHEN (NULLIF(ED_BLOCK7, '') IS NOT NULL AND NULLIF(L_BLOCK7_1, '') IS NOT NULL)
            THEN REPLACE(ED_BLOCK7, L_BLOCK7_1, '')
            ELSE NULL
        END AS EX_BLOCK7,
        CASE
            WHEN (NULLIF(ED_BLOCK8, '') IS NOT NULL AND NULLIF(L_BLOCK8_1, '') IS NOT NULL)
            THEN REPLACE(ED_BLOCK8, L_BLOCK8_1, '')
            ELSE NULL
        END AS EX_BLOCK8,
        CASE
            WHEN (NULLIF(ED_BLOCK9, '') IS NOT NULL AND NULLIF(L_BLOCK9_1, '') IS NOT NULL)
            THEN REPLACE(ED_BLOCK9, L_BLOCK9_1, '')
            ELSE NULL
        END AS EX_BLOCK9,
        CASE
            WHEN (NULLIF(ED_BLOCK10, '') IS NOT NULL AND NULLIF(L_BLOCK10_1, '') IS NOT NULL)
            THEN REPLACE(ED_BLOCK10, L_BLOCK10_1, '')
            ELSE NULL
        END AS EX_BLOCK10,
        CASE
            WHEN (NULLIF(ED_BLOCK11, '') IS NOT NULL AND NULLIF(L_BLOCK11_1, '') IS NOT NULL)
            THEN REPLACE(ED_BLOCK11, L_BLOCK11_1, '')
            ELSE NULL
        END AS EX_BLOCK11,
        CASE
            WHEN (NULLIF(ED_BLOCK12, '') IS NOT NULL AND NULLIF(L_BLOCK12_1, '') IS NOT NULL)
            THEN REPLACE(ED_BLOCK12, L_BLOCK12_1, '')
            ELSE NULL
        END AS EX_BLOCK12,
        CASE
            WHEN (NULLIF(ED_BLOCK13, '') IS NOT NULL AND NULLIF(L_BLOCK13_1, '') IS NOT NULL)
            THEN REPLACE(ED_BLOCK13, L_BLOCK13_1, '')
            ELSE NULL
        END AS EX_BLOCK13,
        CASE
            WHEN (NULLIF(ED_BLOCK14, '') IS NOT NULL AND NULLIF(L_BLOCK14_1, '') IS NOT NULL)
            THEN REPLACE(ED_BLOCK14, L_BLOCK14_1, '')
            ELSE NULL
        END AS EX_BLOCK14,
        CASE
            WHEN (NULLIF(ED_BLOCK15, '') IS NOT NULL AND NULLIF(L_BLOCK15_1, '') IS NOT NULL)
            THEN REPLACE(ED_BLOCK15, L_BLOCK15_1, '')
            ELSE NULL
        END AS EX_BLOCK15,
        CASE
            WHEN (NULLIF(ED_BLOCK16, '') IS NOT NULL AND NULLIF(L_BLOCK16_1, '') IS NOT NULL)
            THEN REPLACE(ED_BLOCK16, L_BLOCK16_1, '')
            ELSE NULL
        END AS EX_BLOCK16
    FROM(
        # Label이 없는 데이터
        SELECT *,
            CASE
                WHEN (NULLIF(ED_BLOCK1, '') IS NOT NULL AND NULLIF(L_BLOCK1_1, '') IS NULL)
                THEN ED_BLOCK1
                ELSE NULL
            END AS L_BLOCK1_ELSE,
            CASE
                WHEN (NULLIF(ED_BLOCK2, '') IS NOT NULL AND NULLIF(L_BLOCK2_1, '') IS NULL)
                THEN ED_BLOCK2
                ELSE NULL
            END AS L_BLOCK2_ELSE,
            CASE
                WHEN (NULLIF(ED_BLOCK3, '') IS NOT NULL AND NULLIF(L_BLOCK3_1, '') IS NULL)
                THEN ED_BLOCK3
                ELSE NULL
            END AS L_BLOCK3_ELSE,
            CASE
                WHEN (NULLIF(ED_BLOCK4, '') IS NOT NULL AND NULLIF(L_BLOCK4_1, '') IS NULL)
                THEN ED_BLOCK4
                ELSE NULL
            END AS L_BLOCK4_ELSE,
            CASE
                WHEN (NULLIF(ED_BLOCK5, '') IS NOT NULL AND NULLIF(L_BLOCK5_1, '') IS NULL)
                THEN ED_BLOCK5
                ELSE NULL
            END AS L_BLOCK5_ELSE,
            CASE
                WHEN (NULLIF(ED_BLOCK6, '') IS NOT NULL AND NULLIF(L_BLOCK6_1, '') IS NULL)
                THEN ED_BLOCK6
                ELSE NULL
            END AS L_BLOCK6_ELSE,
            CASE
                WHEN (NULLIF(ED_BLOCK7, '') IS NOT NULL AND NULLIF(L_BLOCK7_1, '') IS NULL)
                THEN ED_BLOCK7
                ELSE NULL
            END AS L_BLOCK7_ELSE,
            CASE
                WHEN (NULLIF(ED_BLOCK8, '') IS NOT NULL AND NULLIF(L_BLOCK8_1, '') IS NULL)
                THEN ED_BLOCK8
                ELSE NULL
            END AS L_BLOCK8_ELSE,
            CASE
                WHEN (NULLIF(ED_BLOCK9, '') IS NOT NULL AND NULLIF(L_BLOCK9_1, '') IS NULL)
                THEN ED_BLOCK9
                ELSE NULL
            END AS L_BLOCK9_ELSE,
            CASE
                WHEN (NULLIF(ED_BLOCK10, '') IS NOT NULL AND NULLIF(L_BLOCK10_1, '') IS NULL)
                THEN ED_BLOCK10
                ELSE NULL
            END AS L_BLOCK10_ELSE,
            CASE
                WHEN (NULLIF(ED_BLOCK11, '') IS NOT NULL AND NULLIF(L_BLOCK11_1, '') IS NULL)
                THEN ED_BLOCK11
                ELSE NULL
            END AS L_BLOCK11_ELSE,
            CASE
                WHEN (NULLIF(ED_BLOCK12, '') IS NOT NULL AND NULLIF(L_BLOCK12_1, '') IS NULL)
                THEN ED_BLOCK12
                ELSE NULL
            END AS L_BLOCK12_ELSE,
            CASE
                WHEN (NULLIF(ED_BLOCK13, '') IS NOT NULL AND NULLIF(L_BLOCK13_1, '') IS NULL)
                THEN ED_BLOCK13
                ELSE NULL
            END AS L_BLOCK13_ELSE,
            CASE
                WHEN (NULLIF(ED_BLOCK14, '') IS NOT NULL AND NULLIF(L_BLOCK14_1, '') IS NULL)
                THEN ED_BLOCK14
                ELSE NULL
            END AS L_BLOCK14_ELSE,
            CASE
                WHEN (NULLIF(ED_BLOCK15, '') IS NOT NULL AND NULLIF(L_BLOCK15_1, '') IS NULL)
                THEN ED_BLOCK15
                ELSE NULL
            END AS L_BLOCK15_ELSE,
            CASE
                WHEN (NULLIF(ED_BLOCK16, '') IS NOT NULL AND NULLIF(L_BLOCK16_1, '') IS NULL)
                THEN ED_BLOCK16
                ELSE NULL
            END AS L_BLOCK16_ELSE
        FROM(
            # Label 1단계
            SELECT *,
                CASE
                    WHEN (INSTR(ED_BLOCK1, 'labeled') != 0)
                    THEN SUBSTR(ED_BLOCK1, INSTR(ED_BLOCK1, ' labeled'))
                    ELSE NULL
                END AS L_BLOCK1_1,
                CASE
                    WHEN (INSTR(ED_BLOCK2, 'labeled') != 0)
                    THEN SUBSTR(ED_BLOCK2, INSTR(ED_BLOCK2, ' labeled'))
                    ELSE NULL
                END AS L_BLOCK2_1,
                CASE
                    WHEN (INSTR(ED_BLOCK3, 'labeled') != 0)
                    THEN SUBSTR(ED_BLOCK3, INSTR(ED_BLOCK3, ' labeled'))
                    ELSE NULL
                END AS L_BLOCK3_1,
                CASE
                    WHEN (INSTR(ED_BLOCK4, 'labeled') != 0)
                    THEN SUBSTR(ED_BLOCK4, INSTR(ED_BLOCK4, ' labeled'))
                    ELSE NULL
                END AS L_BLOCK4_1,
                CASE
                    WHEN (INSTR(ED_BLOCK5, 'labeled') != 0)
                    THEN SUBSTR(ED_BLOCK5, INSTR(ED_BLOCK5, ' labeled'))
                    ELSE NULL
                END AS L_BLOCK5_1,
                CASE
                    WHEN (INSTR(ED_BLOCK6, 'labeled') != 0)
                    THEN SUBSTR(ED_BLOCK6, INSTR(ED_BLOCK6, ' labeled'))
                    ELSE NULL
                END AS L_BLOCK6_1,
                CASE
                    WHEN (INSTR(ED_BLOCK7, 'labeled') != 0)
                    THEN SUBSTR(ED_BLOCK7, INSTR(ED_BLOCK7, ' labeled'))
                    ELSE NULL
                END AS L_BLOCK7_1,
                CASE
                    WHEN (INSTR(ED_BLOCK8, 'labeled') != 0)
                    THEN SUBSTR(ED_BLOCK8, INSTR(ED_BLOCK8, ' labeled'))
                    ELSE NULL
                END AS L_BLOCK8_1,
                CASE
                    WHEN (INSTR(ED_BLOCK9, 'labeled') != 0)
                    THEN SUBSTR(ED_BLOCK9, INSTR(ED_BLOCK9, ' labeled'))
                    ELSE NULL
                END AS L_BLOCK9_1,
                CASE
                    WHEN (INSTR(ED_BLOCK10, 'labeled') != 0)
                    THEN SUBSTR(ED_BLOCK10, INSTR(ED_BLOCK10, ' labeled'))
                    ELSE NULL
                END AS L_BLOCK10_1,
                CASE
                    WHEN (INSTR(ED_BLOCK11, 'labeled') != 0)
                    THEN SUBSTR(ED_BLOCK11, INSTR(ED_BLOCK11, ' labeled'))
                    ELSE NULL
                END AS L_BLOCK11_1,
                CASE
                    WHEN (INSTR(ED_BLOCK12, 'labeled') != 0)
                    THEN SUBSTR(ED_BLOCK12, INSTR(ED_BLOCK12, ' labeled'))
                    ELSE NULL
                END AS L_BLOCK12_1,
                CASE
                    WHEN (INSTR(ED_BLOCK13, 'labeled') != 0)
                    THEN SUBSTR(ED_BLOCK13, INSTR(ED_BLOCK13, ' labeled'))
                    ELSE NULL
                END AS L_BLOCK13_1,
                CASE
                    WHEN (INSTR(ED_BLOCK14, 'labeled') != 0)
                    THEN SUBSTR(ED_BLOCK14, INSTR(ED_BLOCK14, ' labeled'))
                    ELSE NULL
                END AS L_BLOCK14_1,
                CASE
                    WHEN (INSTR(ED_BLOCK15, 'labeled') != 0)
                    THEN SUBSTR(ED_BLOCK15, INSTR(ED_BLOCK15, ' labeled'))
                    ELSE NULL
                END AS L_BLOCK15_1,
                CASE
                    WHEN (INSTR(ED_BLOCK16, 'labeled') != 0)
                    THEN SUBSTR(ED_BLOCK16, INSTR(ED_BLOCK16, ' labeled'))
                    ELSE NULL
                END AS L_BLOCK16_1
            FROM(
                # Consists of가 없는 데이터
                SELECT *,
                    CASE
                        WHEN (NULLIF(ED_BLOCK1, '') IS NOT NULL AND NULLIF(C_BLOCK1_1, '') IS NULL)
                        THEN ED_BLOCK1
                        ELSE NULL
                    END AS C_BLOCK1_ELSE,
                    CASE
                        WHEN (NULLIF(ED_BLOCK2, '') IS NOT NULL AND NULLIF(C_BLOCK2_1, '') IS NULL)
                        THEN ED_BLOCK2
                        ELSE NULL
                    END AS C_BLOCK2_ELSE,
                    CASE
                        WHEN (NULLIF(ED_BLOCK3, '') IS NOT NULL AND NULLIF(C_BLOCK3_1, '') IS NULL)
                        THEN ED_BLOCK3
                        ELSE NULL
                    END AS C_BLOCK3_ELSE,
                    CASE
                        WHEN (NULLIF(ED_BLOCK4, '') IS NOT NULL AND NULLIF(C_BLOCK4_1, '') IS NULL)
                        THEN ED_BLOCK4
                        ELSE NULL
                    END AS C_BLOCK4_ELSE,
                    CASE
                        WHEN (NULLIF(ED_BLOCK5, '') IS NOT NULL AND NULLIF(C_BLOCK5_1, '') IS NULL)
                        THEN ED_BLOCK5
                        ELSE NULL
                    END AS C_BLOCK5_ELSE,
                    CASE
                        WHEN (NULLIF(ED_BLOCK6, '') IS NOT NULL AND NULLIF(C_BLOCK6_1, '') IS NULL)
                        THEN ED_BLOCK6
                        ELSE NULL
                    END AS C_BLOCK6_ELSE,
                    CASE
                        WHEN (NULLIF(ED_BLOCK7, '') IS NOT NULL AND NULLIF(C_BLOCK7_1, '') IS NULL)
                        THEN ED_BLOCK7
                        ELSE NULL
                    END AS C_BLOCK7_ELSE,
                    CASE
                        WHEN (NULLIF(ED_BLOCK8, '') IS NOT NULL AND NULLIF(C_BLOCK8_1, '') IS NULL)
                        THEN ED_BLOCK8
                        ELSE NULL
                    END AS C_BLOCK8_ELSE,
                    CASE
                        WHEN (NULLIF(ED_BLOCK9, '') IS NOT NULL AND NULLIF(C_BLOCK9_1, '') IS NULL)
                        THEN ED_BLOCK9
                        ELSE NULL
                    END AS C_BLOCK9_ELSE,
                    CASE
                        WHEN (NULLIF(ED_BLOCK10, '') IS NOT NULL AND NULLIF(C_BLOCK10_1, '') IS NULL)
                        THEN ED_BLOCK10
                        ELSE NULL
                    END AS C_BLOCK10_ELSE,
                    CASE
                        WHEN (NULLIF(ED_BLOCK11, '') IS NOT NULL AND NULLIF(C_BLOCK11_1, '') IS NULL)
                        THEN ED_BLOCK11
                        ELSE NULL
                    END AS C_BLOCK11_ELSE,
                    CASE
                        WHEN (NULLIF(ED_BLOCK12, '') IS NOT NULL AND NULLIF(C_BLOCK12_1, '') IS NULL)
                        THEN ED_BLOCK12
                        ELSE NULL
                    END AS C_BLOCK12_ELSE,
                    CASE
                        WHEN (NULLIF(ED_BLOCK13, '') IS NOT NULL AND NULLIF(C_BLOCK13_1, '') IS NULL)
                        THEN ED_BLOCK13
                        ELSE NULL
                    END AS C_BLOCK13_ELSE,
                    CASE
                        WHEN (NULLIF(ED_BLOCK14, '') IS NOT NULL AND NULLIF(C_BLOCK14_1, '') IS NULL)
                        THEN ED_BLOCK14
                        ELSE NULL
                    END AS C_BLOCK14_ELSE,
                    CASE
                        WHEN (NULLIF(ED_BLOCK15, '') IS NOT NULL AND NULLIF(C_BLOCK15_1, '') IS NULL)
                        THEN ED_BLOCK15
                        ELSE NULL
                    END AS C_BLOCK15_ELSE,
                    CASE
                        WHEN (NULLIF(ED_BLOCK16, '') IS NOT NULL AND NULLIF(C_BLOCK16_1, '') IS NULL)
                        THEN ED_BLOCK16
                        ELSE NULL
                    END AS C_BLOCK16_ELSE
                FROM(
                    # Consists of 1단계
                    SELECT *,
                        CASE
                            WHEN (INSTR(ED_BLOCK1, ' consists of') != 0)
                            THEN SUBSTR(ED_BLOCK1, INSTR(ED_BLOCK1, ' consists of'))
                            ELSE NULL
                        END AS C_BLOCK1_1,
                        CASE
                            WHEN (INSTR(ED_BLOCK2, ' consists of') != 0)
                            THEN SUBSTR(ED_BLOCK2, INSTR(ED_BLOCK2, ' consists of'))
                            ELSE NULL
                        END AS C_BLOCK2_1,
                        CASE
                            WHEN (INSTR(ED_BLOCK3, ' consists of') != 0)
                            THEN SUBSTR(ED_BLOCK3, INSTR(ED_BLOCK3, ' consists of'))
                            ELSE NULL
                        END AS C_BLOCK3_1,
                        CASE
                            WHEN (INSTR(ED_BLOCK4, ' consists of') != 0)
                            THEN SUBSTR(ED_BLOCK4, INSTR(ED_BLOCK4, ' consists of'))
                            ELSE NULL
                        END AS C_BLOCK4_1,
                        CASE
                            WHEN (INSTR(ED_BLOCK5, ' consists of') != 0)
                            THEN SUBSTR(ED_BLOCK5, INSTR(ED_BLOCK5, ' consists of'))
                            ELSE NULL
                        END AS C_BLOCK5_1,
                        CASE
                            WHEN (INSTR(ED_BLOCK6, ' consists of') != 0)
                            THEN SUBSTR(ED_BLOCK6, INSTR(ED_BLOCK6, ' consists of'))
                            ELSE NULL
                        END AS C_BLOCK6_1,
                        CASE
                            WHEN (INSTR(ED_BLOCK7, ' consists of') != 0)
                            THEN SUBSTR(ED_BLOCK7, INSTR(ED_BLOCK7, ' consists of'))
                            ELSE NULL
                        END AS C_BLOCK7_1,
                        CASE
                            WHEN (INSTR(ED_BLOCK8, ' consists of') != 0)
                            THEN SUBSTR(ED_BLOCK8, INSTR(ED_BLOCK8, ' consists of'))
                            ELSE NULL
                        END AS C_BLOCK8_1,
                        CASE
                            WHEN (INSTR(ED_BLOCK9, ' consists of') != 0)
                            THEN SUBSTR(ED_BLOCK9, INSTR(ED_BLOCK9, ' consists of'))
                            ELSE NULL
                        END AS C_BLOCK9_1,
                        CASE
                            WHEN (INSTR(ED_BLOCK10, ' consists of') != 0)
                            THEN SUBSTR(ED_BLOCK10, INSTR(ED_BLOCK10, ' consists of'))
                            ELSE NULL
                        END AS C_BLOCK10_1,
                        CASE
                            WHEN (INSTR(ED_BLOCK11, ' consists of') != 0)
                            THEN SUBSTR(ED_BLOCK11, INSTR(ED_BLOCK11, ' consists of'))
                            ELSE NULL
                        END AS C_BLOCK11_1,
                        CASE
                            WHEN (INSTR(ED_BLOCK12, ' consists of') != 0)
                            THEN SUBSTR(ED_BLOCK12, INSTR(ED_BLOCK12, ' consists of'))
                            ELSE NULL
                        END AS C_BLOCK12_1,
                        CASE
                            WHEN (INSTR(ED_BLOCK13, ' consists of') != 0)
                            THEN SUBSTR(ED_BLOCK13, INSTR(ED_BLOCK13, ' consists of'))
                            ELSE NULL
                        END AS C_BLOCK13_1,
                        CASE
                            WHEN (INSTR(ED_BLOCK14, ' consists of') != 0)
                            THEN SUBSTR(ED_BLOCK14, INSTR(ED_BLOCK14, ' consists of'))
                            ELSE NULL
                        END AS C_BLOCK14_1,
                        CASE
                            WHEN (INSTR(ED_BLOCK15, ' consists of') != 0)
                            THEN SUBSTR(ED_BLOCK15, INSTR(ED_BLOCK15, ' consists of'))
                            ELSE NULL
                        END AS C_BLOCK15_1,
                        CASE
                            WHEN (INSTR(ED_BLOCK16, ' consists of') != 0)
                            THEN SUBSTR(ED_BLOCK16, INSTR(ED_BLOCK16, ' consists of'))
                            ELSE NULL
                        END AS C_BLOCK16_1
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (NULLIF(1_BLOCK1, '') IS NOT NULL)
                                THEN SUBSTR(1_BLOCK1, INSTR(1_BLOCK1, REGEXP_SUBSTR(1_BLOCK1, '[^;]+', 1, 2)))
                                WHEN (NULLIF(2_BLOCK1, '') IS NOT NULL)
                                THEN SUBSTR(2_BLOCK1, INSTR(2_BLOCK1, ' \"'))
                                WHEN (NULLIF(3_BLOCK1, '') IS NOT NULL)
                                THEN SUBSTR(3_BLOCK1, INSTR(3_BLOCK1, REGEXP_SUBSTR(3_BLOCK1, '[^;]+', 1, 2)))
                                ELSE NULL
                            END AS ED_BLOCK1,
                            CASE
                                WHEN (NULLIF(1_BLOCK2, '') IS NOT NULL)
                                THEN SUBSTR(1_BLOCK2, INSTR(1_BLOCK2, REGEXP_SUBSTR(1_BLOCK2, '[^;]+', 1, 2)))
                                WHEN (NULLIF(2_BLOCK2, '') IS NOT NULL)
                                THEN SUBSTR(2_BLOCK2, INSTR(2_BLOCK2, ' \"'))
                                WHEN (NULLIF(3_BLOCK2, '') IS NOT NULL)
                                THEN SUBSTR(3_BLOCK2, INSTR(3_BLOCK2, REGEXP_SUBSTR(3_BLOCK2, '[^;]+', 1, 2)))
                                ELSE NULL
                            END AS ED_BLOCK2,
                            CASE
                                WHEN (NULLIF(1_BLOCK3, '') IS NOT NULL)
                                THEN SUBSTR(1_BLOCK3, INSTR(1_BLOCK3, REGEXP_SUBSTR(1_BLOCK3, '[^;]+', 1, 2)))
                                WHEN (NULLIF(2_BLOCK3, '') IS NOT NULL)
                                THEN SUBSTR(2_BLOCK3, INSTR(2_BLOCK3, ' \"'))
                                WHEN (NULLIF(3_BLOCK3, '') IS NOT NULL)
                                THEN SUBSTR(3_BLOCK3, INSTR(3_BLOCK3, REGEXP_SUBSTR(3_BLOCK3, '[^;]+', 1, 2)))
                                ELSE NULL
                            END AS ED_BLOCK3,
                            CASE
                                WHEN (NULLIF(1_BLOCK4, '') IS NOT NULL)
                                THEN SUBSTR(1_BLOCK4, INSTR(1_BLOCK4, REGEXP_SUBSTR(1_BLOCK4, '[^;]+', 1, 2)))
                                WHEN (NULLIF(2_BLOCK4, '') IS NOT NULL)
                                THEN SUBSTR(2_BLOCK4, INSTR(2_BLOCK4, ' \"'))
                                WHEN (NULLIF(3_BLOCK4, '') IS NOT NULL)
                                THEN SUBSTR(3_BLOCK4, INSTR(3_BLOCK4, REGEXP_SUBSTR(3_BLOCK4, '[^;]+', 1, 2)))
                                ELSE NULL
                            END AS ED_BLOCK4,
                            CASE
                                WHEN (NULLIF(1_BLOCK5, '') IS NOT NULL)
                                THEN SUBSTR(1_BLOCK5, INSTR(1_BLOCK5, REGEXP_SUBSTR(1_BLOCK5, '[^;]+', 1, 2)))
                                WHEN (NULLIF(2_BLOCK5, '') IS NOT NULL)
                                THEN SUBSTR(2_BLOCK5, INSTR(2_BLOCK5, ' \"'))
                                WHEN (NULLIF(3_BLOCK5, '') IS NOT NULL)
                                THEN SUBSTR(3_BLOCK5, INSTR(3_BLOCK5, REGEXP_SUBSTR(3_BLOCK5, '[^;]+', 1, 2)))
                                ELSE NULL
                            END AS ED_BLOCK5,
                            CASE
                                WHEN (NULLIF(1_BLOCK6, '') IS NOT NULL)
                                THEN SUBSTR(1_BLOCK6, INSTR(1_BLOCK6, REGEXP_SUBSTR(1_BLOCK6, '[^;]+', 1, 2)))
                                WHEN (NULLIF(2_BLOCK6, '') IS NOT NULL)
                                THEN SUBSTR(2_BLOCK6, INSTR(2_BLOCK6, ' \"'))
                                WHEN (NULLIF(3_BLOCK6, '') IS NOT NULL)
                                THEN SUBSTR(3_BLOCK6, INSTR(3_BLOCK6, REGEXP_SUBSTR(3_BLOCK6, '[^;]+', 1, 2)))
                                ELSE NULL
                            END AS ED_BLOCK6,
                            CASE
                                WHEN (NULLIF(1_BLOCK7, '') IS NOT NULL)
                                THEN SUBSTR(1_BLOCK7, INSTR(1_BLOCK7, REGEXP_SUBSTR(1_BLOCK7, '[^;]+', 1, 2)))
                                WHEN (NULLIF(2_BLOCK7, '') IS NOT NULL)
                                THEN SUBSTR(2_BLOCK7, INSTR(2_BLOCK7, ' \"'))
                                WHEN (NULLIF(3_BLOCK7, '') IS NOT NULL)
                                THEN SUBSTR(3_BLOCK7, INSTR(3_BLOCK7, REGEXP_SUBSTR(3_BLOCK7, '[^;]+', 1, 2)))
                                ELSE NULL
                            END AS ED_BLOCK7,
                            CASE
                                WHEN (NULLIF(1_BLOCK8, '') IS NOT NULL)
                                THEN SUBSTR(1_BLOCK8, INSTR(1_BLOCK8, REGEXP_SUBSTR(1_BLOCK8, '[^;]+', 1, 2)))
                                WHEN (NULLIF(2_BLOCK8, '') IS NOT NULL)
                                THEN SUBSTR(2_BLOCK8, INSTR(2_BLOCK8, ' \"'))
                                WHEN (NULLIF(3_BLOCK8, '') IS NOT NULL)
                                THEN SUBSTR(3_BLOCK8, INSTR(3_BLOCK8, REGEXP_SUBSTR(3_BLOCK8, '[^;]+', 1, 2)))
                                ELSE NULL
                            END AS ED_BLOCK8,
                            CASE
                                WHEN (NULLIF(1_BLOCK9, '') IS NOT NULL)
                                THEN SUBSTR(1_BLOCK9, INSTR(1_BLOCK9, REGEXP_SUBSTR(1_BLOCK9, '[^;]+', 1, 2)))
                                WHEN (NULLIF(2_BLOCK9, '') IS NOT NULL)
                                THEN SUBSTR(2_BLOCK9, INSTR(2_BLOCK9, ' \"'))
                                WHEN (NULLIF(3_BLOCK9, '') IS NOT NULL)
                                THEN SUBSTR(3_BLOCK9, INSTR(3_BLOCK9, REGEXP_SUBSTR(3_BLOCK9, '[^;]+', 1, 2)))
                                ELSE NULL
                            END AS ED_BLOCK9,
                            CASE
                                WHEN (NULLIF(1_BLOCK10, '') IS NOT NULL)
                                THEN SUBSTR(1_BLOCK10, INSTR(1_BLOCK10, REGEXP_SUBSTR(1_BLOCK10, '[^;]+', 1, 2)))
                                WHEN (NULLIF(2_BLOCK10, '') IS NOT NULL)
                                THEN SUBSTR(2_BLOCK10, INSTR(2_BLOCK10, ' \"'))
                                ELSE NULL
                            END AS ED_BLOCK10,
                            CASE
                                WHEN (NULLIF(1_BLOCK11, '') IS NOT NULL)
                                THEN SUBSTR(1_BLOCK11, INSTR(1_BLOCK11, REGEXP_SUBSTR(1_BLOCK11, '[^;]+', 1, 2)))
                                WHEN (NULLIF(2_BLOCK11, '') IS NOT NULL)
                                THEN SUBSTR(2_BLOCK11, INSTR(2_BLOCK11, ' \"'))
                                ELSE NULL
                            END AS ED_BLOCK11,
                            CASE
                                WHEN (NULLIF(1_BLOCK12, '') IS NOT NULL)
                                THEN SUBSTR(1_BLOCK12, INSTR(1_BLOCK12, REGEXP_SUBSTR(1_BLOCK12, '[^;]+', 1, 2)))
                                ELSE NULL
                            END AS ED_BLOCK12,
                            CASE
                                WHEN (NULLIF(1_BLOCK13, '') IS NOT NULL)
                                THEN SUBSTR(1_BLOCK13, INSTR(1_BLOCK13, REGEXP_SUBSTR(1_BLOCK13, '[^;]+', 1, 2)))
                                ELSE NULL
                            END AS ED_BLOCK13,
                            CASE
                                WHEN (NULLIF(1_BLOCK14, '') IS NOT NULL)
                                THEN SUBSTR(1_BLOCK14, INSTR(1_BLOCK14, REGEXP_SUBSTR(1_BLOCK14, '[^;]+', 1, 2)))
                                ELSE NULL
                            END AS ED_BLOCK14,
                            CASE
                                WHEN (NULLIF(1_BLOCK15, '') IS NOT NULL)
                                THEN SUBSTR(1_BLOCK15, INSTR(1_BLOCK15, REGEXP_SUBSTR(1_BLOCK15, '[^;]+', 1, 2)))
                                ELSE NULL
                            END AS ED_BLOCK15,
                            CASE
                                WHEN (NULLIF(1_BLOCK16, '') IS NOT NULL)
                                THEN SUBSTR(1_BLOCK16, INSTR(1_BLOCK16, REGEXP_SUBSTR(1_BLOCK16, '[^;]+', 1, 2)))
                                ELSE NULL
                            END AS ED_BLOCK16
                        FROM test_type6_block_05
                    ) a
                ) a
            ) a
        ) a
    ) a
) a