SELECT
    원무접수ID,
    환자번호,
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
    EX_BLOCK16,
    C_BLOCK1_2,
    C_BLOCK2_2,
    C_BLOCK3_2,
    C_BLOCK4_2,
    C_BLOCK5_2,
    C_BLOCK6_2,
    C_BLOCK7_2,
    C_BLOCK8_2,
    C_BLOCK9_2,
    C_BLOCK10_2,
    C_BLOCK11_2,
    C_BLOCK12_2,
    C_BLOCK13_2,
    C_BLOCK14_2,
    C_BLOCK15_2,
    C_BLOCK16_2,
    L_BLOCK1_2,
    L_BLOCK2_2,
    L_BLOCK3_2,
    L_BLOCK4_2,
    L_BLOCK5_2,
    L_BLOCK6_2,
    L_BLOCK7_2,
    L_BLOCK8_2,
    L_BLOCK9_2,
    L_BLOCK10_2,
    L_BLOCK11_2,
    L_BLOCK12_2,
    L_BLOCK13_2,
    L_BLOCK14_2,
    L_BLOCK15_2,
    L_BLOCK16_2
    /*
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
    L_BLOCK16_ELSE
    */
FROM(
    SELECT *
    FROM(
        SELECT *
        FROM(
            SELECT *
            FROM(
                SELECT *,
                    CASE
                        WHEN (NULLIF(C_BLOCK1_1, '') IS NOT NULL)
                        THEN REPLACE(C_BLOCK1_1, ' consists of ', '')
                        ELSE NULL
                    END AS C_BLOCK1_2,
                    CASE
                        WHEN (NULLIF(C_BLOCK2_1, '') IS NOT NULL)
                        THEN REPLACE(C_BLOCK2_1, ' consists of ', '')
                        ELSE NULL
                    END AS C_BLOCK2_2,
                    CASE
                        WHEN (NULLIF(C_BLOCK3_1, '') IS NOT NULL)
                        THEN REPLACE(C_BLOCK3_1, ' consists of ', '')
                        ELSE NULL
                    END AS C_BLOCK3_2,
                    CASE
                        WHEN (NULLIF(C_BLOCK4_1, '') IS NOT NULL)
                        THEN REPLACE(C_BLOCK4_1, ' consists of ', '')
                        ELSE NULL
                    END AS C_BLOCK4_2,
                    CASE
                        WHEN (NULLIF(C_BLOCK5_1, '') IS NOT NULL)
                        THEN REPLACE(C_BLOCK5_1, ' consists of ', '')
                        ELSE NULL
                    END AS C_BLOCK5_2,
                    CASE
                        WHEN (NULLIF(C_BLOCK6_1, '') IS NOT NULL)
                        THEN REPLACE(C_BLOCK6_1, ' consists of ', '')
                        ELSE NULL
                    END AS C_BLOCK6_2,
                    CASE
                        WHEN (NULLIF(C_BLOCK7_1, '') IS NOT NULL)
                        THEN REPLACE(C_BLOCK7_1, ' consists of ', '')
                        ELSE NULL
                    END AS C_BLOCK7_2,
                    CASE
                        WHEN (NULLIF(C_BLOCK8_1, '') IS NOT NULL)
                        THEN REPLACE(C_BLOCK8_1, ' consists of ', '')
                        ELSE NULL
                    END AS C_BLOCK8_2,
                    CASE
                        WHEN (NULLIF(C_BLOCK9_1, '') IS NOT NULL)
                        THEN REPLACE(C_BLOCK9_1, ' consists of ', '')
                        ELSE NULL
                    END AS C_BLOCK9_2,
                    CASE
                        WHEN (NULLIF(C_BLOCK10_1, '') IS NOT NULL)
                        THEN REPLACE(C_BLOCK10_1, ' consists of ', '')
                        ELSE NULL
                    END AS C_BLOCK10_2,
                    CASE
                        WHEN (NULLIF(C_BLOCK11_1, '') IS NOT NULL)
                        THEN REPLACE(C_BLOCK11_1, ' consists of ', '')
                        ELSE NULL
                    END AS C_BLOCK11_2,
                    CASE
                        WHEN (NULLIF(C_BLOCK12_1, '') IS NOT NULL)
                        THEN REPLACE(C_BLOCK12_1, ' consists of ', '')
                        ELSE NULL
                    END AS C_BLOCK12_2,
                    CASE
                        WHEN (NULLIF(C_BLOCK13_1, '') IS NOT NULL)
                        THEN REPLACE(C_BLOCK13_1, ' consists of ', '')
                        ELSE NULL
                    END AS C_BLOCK13_2,
                    CASE
                        WHEN (NULLIF(C_BLOCK14_1, '') IS NOT NULL)
                        THEN REPLACE(C_BLOCK14_1, ' consists of ', '')
                        ELSE NULL
                    END AS C_BLOCK14_2,
                    CASE
                        WHEN (NULLIF(C_BLOCK15_1, '') IS NOT NULL)
                        THEN REPLACE(C_BLOCK15_1, ' consists of ', '')
                        ELSE NULL
                    END AS C_BLOCK15_2,
                    CASE
                        WHEN (NULLIF(C_BLOCK16_1, '') IS NOT NULL)
                        THEN REPLACE(C_BLOCK16_1, ' consists of ', '')
                        ELSE NULL
                    END AS C_BLOCK16_2
                FROM(
                    # Label 1단계
                    SELECT *,
                        CASE
                            WHEN (NULLIF(L_BLOCK1_1, '') IS NOT NULL)
                            THEN REPLACE(
                                REPLACE(
                                    L_BLOCK1_1, ' labeled ', ''
                                ), C_BLOCK1_1, ''
                            )
                            ELSE NULL
                        END AS L_BLOCK1_2,
                        CASE
                            WHEN (NULLIF(L_BLOCK2_1, '') IS NOT NULL)
                            THEN REPLACE(
                                REPLACE(
                                    L_BLOCK2_1, ' labeled ', ''
                                ), C_BLOCK2_1, ''
                            )
                            ELSE NULL
                        END AS L_BLOCK2_2,
                        CASE
                            WHEN (NULLIF(L_BLOCK3_1, '') IS NOT NULL)
                            THEN REPLACE(
                                REPLACE(
                                    L_BLOCK3_1, ' labeled ', ''
                                ), C_BLOCK3_1, ''
                            )
                            ELSE NULL
                        END AS L_BLOCK3_2,
                        CASE
                            WHEN (NULLIF(L_BLOCK4_1, '') IS NOT NULL)
                            THEN REPLACE(
                                REPLACE(
                                    L_BLOCK4_1, ' labeled ', ''
                                ), C_BLOCK4_1, ''
                            )
                            ELSE NULL
                        END AS L_BLOCK4_2,
                        CASE
                            WHEN (NULLIF(L_BLOCK5_1, '') IS NOT NULL)
                            THEN REPLACE(
                                REPLACE(
                                    L_BLOCK5_1, ' labeled ', ''
                                ), C_BLOCK5_1, ''
                            )
                            ELSE NULL
                        END AS L_BLOCK5_2,
                        CASE
                            WHEN (NULLIF(L_BLOCK6_1, '') IS NOT NULL)
                            THEN REPLACE(
                                REPLACE(
                                    L_BLOCK6_1, ' labeled ', ''
                                ), C_BLOCK6_1, ''
                            )
                            ELSE NULL
                        END AS L_BLOCK6_2,
                        CASE
                            WHEN (NULLIF(L_BLOCK7_1, '') IS NOT NULL)
                            THEN REPLACE(
                                REPLACE(
                                    L_BLOCK7_1, ' labeled ', ''
                                ), C_BLOCK7_1, ''
                            )
                            ELSE NULL
                        END AS L_BLOCK7_2,
                        CASE
                            WHEN (NULLIF(L_BLOCK8_1, '') IS NOT NULL)
                            THEN REPLACE(
                                REPLACE(
                                    L_BLOCK8_1, ' labeled ', ''
                                ), C_BLOCK8_1, ''
                            )
                            ELSE NULL
                        END AS L_BLOCK8_2,
                        CASE
                            WHEN (NULLIF(L_BLOCK9_1, '') IS NOT NULL)
                            THEN REPLACE(
                                REPLACE(
                                    L_BLOCK9_1, ' labeled ', ''
                                ), C_BLOCK9_1, ''
                            )
                            ELSE NULL
                        END AS L_BLOCK9_2,
                        CASE
                            WHEN (NULLIF(L_BLOCK10_1, '') IS NOT NULL)
                            THEN REPLACE(
                                REPLACE(
                                    L_BLOCK10_1, ' labeled ', ''
                                ), C_BLOCK10_1, ''
                            )
                            ELSE NULL
                        END AS L_BLOCK10_2,
                        CASE
                            WHEN (NULLIF(L_BLOCK11_1, '') IS NOT NULL)
                            THEN REPLACE(
                                REPLACE(
                                    L_BLOCK11_1, ' labeled ', ''
                                ), C_BLOCK11_1, ''
                            )
                            ELSE NULL
                        END AS L_BLOCK11_2,
                        CASE
                            WHEN (NULLIF(L_BLOCK12_1, '') IS NOT NULL)
                            THEN REPLACE(
                                REPLACE(
                                    L_BLOCK12_1, ' labeled ', ''
                                ), C_BLOCK12_1, ''
                            )
                            ELSE NULL
                        END AS L_BLOCK12_2,
                        CASE
                            WHEN (NULLIF(L_BLOCK13_1, '') IS NOT NULL)
                            THEN REPLACE(
                                REPLACE(
                                    L_BLOCK13_1, ' labeled ', ''
                                ), C_BLOCK13_1, ''
                            )
                            ELSE NULL
                        END AS L_BLOCK13_2,
                        CASE
                            WHEN (NULLIF(L_BLOCK14_1, '') IS NOT NULL)
                            THEN REPLACE(
                                REPLACE(
                                    L_BLOCK14_1, ' labeled ', ''
                                ), C_BLOCK14_1, ''
                            )
                            ELSE NULL
                        END AS L_BLOCK14_2,
                        CASE
                            WHEN (NULLIF(L_BLOCK15_1, '') IS NOT NULL)
                            THEN REPLACE(
                                REPLACE(
                                    L_BLOCK15_1, ' labeled ', ''
                                ), C_BLOCK15_1, ''
                            )
                            ELSE NULL
                        END AS L_BLOCK15_2,
                        CASE
                            WHEN (NULLIF(L_BLOCK16_1, '') IS NOT NULL)
                            THEN REPLACE(
                                REPLACE(
                                    L_BLOCK16_1, ' labeled ', ''
                                ), C_BLOCK16_1, ''
                            )
                            ELSE NULL
                        END AS L_BLOCK16_2
                    FROM test_type6_block_06
                ) a
            ) a
        ) a
    ) a
) a