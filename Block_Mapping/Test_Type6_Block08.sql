SELECT
    원무접수ID,
    환자번호,
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
    C_BLOCK16_1
    /*
    BLOCK_RE1_1,
    BLOCK_RE2_1,
    BLOCK_RE3_1,
    BLOCK_RE4_1,
    BLOCK_RE5_1,
    BLOCK_RE6_1,
    BLOCK_RE7_1,
    BLOCK_RE8_1,
    BLOCK_RE9_1,
    BLOCK_RE10_1,
    BLOCK_RE11_1,
    BLOCK_RE12_1,
    BLOCK_RE13_1,
    BLOCK_RE14_1,
    BLOCK_RE15_1,
    BLOCK_RE16_1,
    BLOCK_RE1_2,
    BLOCK_RE2_2,
    BLOCK_RE3_2,
    BLOCK_RE4_2,
    BLOCK_RE5_2,
    BLOCK_RE6_2,
    BLOCK_RE7_2,
    BLOCK_RE8_2,
    BLOCK_RE9_2,
    BLOCK_RE10_2,
    BLOCK_RE11_2,
    BLOCK_RE12_2,
    BLOCK_RE13_2,
    BLOCK_RE14_2,
    BLOCK_RE15_2,
    BLOCK_RE16_2
    */
FROM(
    # Label 2단계
    SELECT *
        /*
        CASE 
            WHEN (NULLIF(L_BLOCK1_1, '') IS NOT NULL AND NULLIF(BLOCK1_ELSE, '') IS NULL)
            THEN SUBSTR(L_BLOCK1_1, INSTR(L_BLOCK1_1, ' \"'))
            ELSE NULL
        END AS L_BLOCK1_2
        */
    FROM(
        # Explain
        SELECT *
            /*
            CASE
                WHEN (NULLIF(ED_BLOCK1, '') IS NOT NULL)
                THEN REPLACE(ED_BLOCK1, L_BLOCK1_1, '')
                ELSE NULL
            END AS EX_BLOCK1,
            CASE
                WHEN (NULLIF(ED_BLOCK2, '') IS NOT NULL)
                THEN REPLACE(ED_BLOCK2, L_BLOCK2_1, '')
                ELSE NULL
            END AS EX_BLOCK2,
            CASE
                WHEN (NULLIF(ED_BLOCK3, '') IS NOT NULL)
                THEN REPLACE(ED_BLOCK3, L_BLOCK3_1, '')
                ELSE NULL
            END AS EX_BLOCK3,
            CASE
                WHEN (NULLIF(ED_BLOCK4, '') IS NOT NULL)
                THEN REPLACE(ED_BLOCK4, L_BLOCK4_1, '')
                ELSE NULL
            END AS EX_BLOCK4,
            CASE
                WHEN (NULLIF(ED_BLOCK5, '') IS NOT NULL)
                THEN REPLACE(ED_BLOCK5, L_BLOCK5_1, '')
                ELSE NULL
            END AS EX_BLOCK5,
            CASE
                WHEN (NULLIF(ED_BLOCK6, '') IS NOT NULL)
                THEN REPLACE(ED_BLOCK6, L_BLOCK6_1, '')
                ELSE NULL
            END AS EX_BLOCK6,
            CASE
                WHEN (NULLIF(ED_BLOCK7, '') IS NOT NULL)
                THEN REPLACE(ED_BLOCK7, L_BLOCK7_1, '')
                ELSE NULL
            END AS EX_BLOCK7,
            CASE
                WHEN (NULLIF(ED_BLOCK8, '') IS NOT NULL)
                THEN REPLACE(ED_BLOCK8, L_BLOCK8_1, '')
                ELSE NULL
            END AS EX_BLOCK8,
            CASE
                WHEN (NULLIF(ED_BLOCK9, '') IS NOT NULL)
                THEN REPLACE(ED_BLOCK9, L_BLOCK9_1, '')
                ELSE NULL
            END AS EX_BLOCK9,
            CASE
                WHEN (NULLIF(ED_BLOCK10, '') IS NOT NULL)
                THEN REPLACE(ED_BLOCK10, L_BLOCK10_1, '')
                ELSE NULL
            END AS EX_BLOCK10,
            CASE
                WHEN (NULLIF(ED_BLOCK11, '') IS NOT NULL)
                THEN REPLACE(ED_BLOCK11, L_BLOCK11_1, '')
                ELSE NULL
            END AS EX_BLOCK11,
            CASE
                WHEN (NULLIF(ED_BLOCK12, '') IS NOT NULL)
                THEN REPLACE(ED_BLOCK12, L_BLOCK12_1, '')
                ELSE NULL
            END AS EX_BLOCK12,
            CASE
                WHEN (NULLIF(ED_BLOCK13, '') IS NOT NULL)
                THEN REPLACE(ED_BLOCK13, L_BLOCK13_1, '')
                ELSE NULL
            END AS EX_BLOCK13,
            CASE
                WHEN (NULLIF(ED_BLOCK14, '') IS NOT NULL)
                THEN REPLACE(ED_BLOCK14, L_BLOCK14_1, '')
                ELSE NULL
            END AS EX_BLOCK14,
            CASE
                WHEN (NULLIF(ED_BLOCK15, '') IS NOT NULL)
                THEN REPLACE(ED_BLOCK15, L_BLOCK15_1, '')
                ELSE NULL
            END AS EX_BLOCK15,
            CASE
                WHEN (NULLIF(ED_BLOCK16, '') IS NOT NULL)
                THEN REPLACE(ED_BLOCK16, L_BLOCK16_1, '')
                ELSE NULL
            END AS EX_BLOCK16
            */
        FROM(
            SELECT *
            FROM(
                SELECT *,
                    CASE
                        WHEN (NULLIF(L_BLOCK1_1, '') IS NULL)
                        THEN ED_BLOCK1
                        ELSE NULL
                    END AS BLOCK1_ELSE,
                    CASE
                        WHEN (NULLIF(L_BLOCK2_1, '') IS NULL)
                        THEN ED_BLOCK2
                        ELSE NULL
                    END AS BLOCK2_ELSE,
                    CASE
                        WHEN (NULLIF(L_BLOCK3_1, '') IS NULL)
                        THEN ED_BLOCK3
                        ELSE NULL
                    END AS BLOCK3_ELSE,
                    CASE
                        WHEN (NULLIF(L_BLOCK4_1, '') IS NULL)
                        THEN ED_BLOCK4
                        ELSE NULL
                    END AS BLOCK4_ELSE,
                    CASE
                        WHEN (NULLIF(L_BLOCK5_1, '') IS NULL)
                        THEN ED_BLOCK5
                        ELSE NULL
                    END AS BLOCK5_ELSE,
                    CASE
                        WHEN (NULLIF(L_BLOCK6_1, '') IS NULL)
                        THEN ED_BLOCK6
                        ELSE NULL
                    END AS BLOCK6_ELSE,
                    CASE
                        WHEN (NULLIF(L_BLOCK7_1, '') IS NULL)
                        THEN ED_BLOCK7
                        ELSE NULL
                    END AS BLOCK7_ELSE,
                    CASE
                        WHEN (NULLIF(L_BLOCK8_1, '') IS NULL)
                        THEN ED_BLOCK8
                        ELSE NULL
                    END AS BLOCK8_ELSE,
                    CASE
                        WHEN (NULLIF(L_BLOCK9_1, '') IS NULL)
                        THEN ED_BLOCK9
                        ELSE NULL
                    END AS BLOCK9_ELSE,
                    CASE
                        WHEN (NULLIF(L_BLOCK10_1, '') IS NULL)
                        THEN ED_BLOCK10
                        ELSE NULL
                    END AS BLOCK10_ELSE,
                    CASE
                        WHEN (NULLIF(L_BLOCK11_1, '') IS NULL)
                        THEN ED_BLOCK11
                        ELSE NULL
                    END AS BLOCK11_ELSE,
                    CASE
                        WHEN (NULLIF(L_BLOCK12_1, '') IS NULL)
                        THEN ED_BLOCK12
                        ELSE NULL
                    END AS BLOCK12_ELSE,
                    CASE
                        WHEN (NULLIF(L_BLOCK13_1, '') IS NULL)
                        THEN ED_BLOCK13
                        ELSE NULL
                    END AS BLOCK13_ELSE,
                    CASE
                        WHEN (NULLIF(L_BLOCK14_1, '') IS NULL)
                        THEN ED_BLOCK14
                        ELSE NULL
                    END AS BLOCK14_ELSE,
                    CASE
                        WHEN (NULLIF(L_BLOCK15_1, '') IS NULL)
                        THEN ED_BLOCK15
                        ELSE NULL
                    END AS BLOCK15_ELSE,
                    CASE
                        WHEN (NULLIF(L_BLOCK16_1, '') IS NULL)
                        THEN ED_BLOCK16
                        ELSE NULL
                    END AS BLOCK16_ELSE
                FROM(
                    # Label 1단계
                    SELECT *,
                        CASE
                            WHEN (NULLIF(ED_BLOCK1, '') IS NOT NULL)
                            THEN SUBSTR(ED_BLOCK1, INSTR(ED_BLOCK1, ' labeled'))
                            ELSE NULL
                        END AS L_BLOCK1_1,
                        CASE
                            WHEN (NULLIF(ED_BLOCK2, '') IS NOT NULL)
                            THEN SUBSTR(ED_BLOCK2, INSTR(ED_BLOCK2, ' labeled'))
                            ELSE NULL
                        END AS L_BLOCK2_1,
                        CASE
                            WHEN (NULLIF(ED_BLOCK3, '') IS NOT NULL)
                            THEN SUBSTR(ED_BLOCK3, INSTR(ED_BLOCK3, ' labeled'))
                            ELSE NULL
                        END AS L_BLOCK3_1,
                        CASE
                            WHEN (NULLIF(ED_BLOCK4, '') IS NOT NULL)
                            THEN SUBSTR(ED_BLOCK4, INSTR(ED_BLOCK4, ' labeled'))
                            ELSE NULL
                        END AS L_BLOCK4_1,
                        CASE
                            WHEN (NULLIF(ED_BLOCK5, '') IS NOT NULL)
                            THEN SUBSTR(ED_BLOCK5, INSTR(ED_BLOCK5, ' labeled'))
                            ELSE NULL
                        END AS L_BLOCK5_1,
                        CASE
                            WHEN (NULLIF(ED_BLOCK6, '') IS NOT NULL)
                            THEN SUBSTR(ED_BLOCK6, INSTR(ED_BLOCK6, ' labeled'))
                            ELSE NULL
                        END AS L_BLOCK6_1,
                        CASE
                            WHEN (NULLIF(ED_BLOCK7, '') IS NOT NULL)
                            THEN SUBSTR(ED_BLOCK7, INSTR(ED_BLOCK7, ' labeled'))
                            ELSE NULL
                        END AS L_BLOCK7_1,
                        CASE
                            WHEN (NULLIF(ED_BLOCK8, '') IS NOT NULL)
                            THEN SUBSTR(ED_BLOCK8, INSTR(ED_BLOCK8, ' labeled'))
                            ELSE NULL
                        END AS L_BLOCK8_1,
                        CASE
                            WHEN (NULLIF(ED_BLOCK9, '') IS NOT NULL)
                            THEN SUBSTR(ED_BLOCK9, INSTR(ED_BLOCK9, ' labeled'))
                            ELSE NULL
                        END AS L_BLOCK9_1,
                        CASE
                            WHEN (NULLIF(ED_BLOCK10, '') IS NOT NULL)
                            THEN SUBSTR(ED_BLOCK10, INSTR(ED_BLOCK10, ' labeled'))
                            ELSE NULL
                        END AS L_BLOCK10_1,
                        CASE
                            WHEN (NULLIF(ED_BLOCK11, '') IS NOT NULL)
                            THEN SUBSTR(ED_BLOCK11, INSTR(ED_BLOCK11, ' labeled'))
                            ELSE NULL
                        END AS L_BLOCK11_1,
                        CASE
                            WHEN (NULLIF(ED_BLOCK12, '') IS NOT NULL)
                            THEN SUBSTR(ED_BLOCK12, INSTR(ED_BLOCK12, ' labeled'))
                            ELSE NULL
                        END AS L_BLOCK12_1,
                        CASE
                            WHEN (NULLIF(ED_BLOCK13, '') IS NOT NULL)
                            THEN SUBSTR(ED_BLOCK13, INSTR(ED_BLOCK13, ' labeled'))
                            ELSE NULL
                        END AS L_BLOCK13_1,
                        CASE
                            WHEN (NULLIF(ED_BLOCK14, '') IS NOT NULL)
                            THEN SUBSTR(ED_BLOCK14, INSTR(ED_BLOCK14, ' labeled'))
                            ELSE NULL
                        END AS L_BLOCK14_1,
                        CASE
                            WHEN (NULLIF(ED_BLOCK15, '') IS NOT NULL)
                            THEN SUBSTR(ED_BLOCK15, INSTR(ED_BLOCK15, ' labeled'))
                            ELSE NULL
                        END AS L_BLOCK15_1,
                        CASE
                            WHEN (NULLIF(ED_BLOCK16, '') IS NOT NULL)
                            THEN SUBSTR(ED_BLOCK16, INSTR(ED_BLOCK16, ' labeled'))
                            ELSE NULL
                        END AS L_BLOCK16_1
                    FROM test_type6_block_07
                ) a
            ) a
        ) a
    ) a
) a