SELECT
    원무접수ID,
    환자번호,
    L_BLOCK1_1,
    L_BLOCK1_ELSE,
    L_BLOCK2_1,
    L_BLOCK2_ELSE,
    L_BLOCK3_1,
    L_BLOCK3_ELSE,
    L_BLOCK4_1,
    L_BLOCK4_ELSE,
    L_BLOCK5_1,
    L_BLOCK5_ELSE,
    L_BLOCK6_1,
    L_BLOCK6_ELSE,
    L_BLOCK7_1,
    L_BLOCK7_ELSE,
    L_BLOCK8_1,
    L_BLOCK8_ELSE,
    L_BLOCK9_1,
    L_BLOCK9_ELSE,
    L_BLOCK10_1,
    L_BLOCK10_ELSE,
    L_BLOCK11_1,
    L_BLOCK11_ELSE,
    EX_BLOCK1_1,
    EX_BLOCK1_ELSE,
    EX_BLOCK2_1,
    EX_BLOCK2_ELSE,
    EX_BLOCK3_1,
    EX_BLOCK3_ELSE,
    EX_BLOCK4_1,
    EX_BLOCK4_ELSE,
    EX_BLOCK5_1,
    EX_BLOCK5_ELSE,
    EX_BLOCK6_1,
    EX_BLOCK6_ELSE,
    EX_BLOCK7_1,
    EX_BLOCK7_ELSE,
    EX_BLOCK8_1,
    EX_BLOCK8_ELSE,
    EX_BLOCK9_1,
    EX_BLOCK9_ELSE,
    EX_BLOCK10_1,
    EX_BLOCK10_ELSE,
    EX_BLOCK11_1,
    EX_BLOCK11_ELSE
FROM(
    SELECT *,
        CASE 
            WHEN (NULLIF(EX_BLOCK1_1, '') IS NULL)
            THEN BLOCK1
            ELSE NULL
        END AS EX_BLOCK1_ELSE,
        CASE 
            WHEN (NULLIF(EX_BLOCK2_1, '') IS NULL)
            THEN BLOCK2
            ELSE NULL
        END AS EX_BLOCK2_ELSE,
        CASE 
            WHEN (NULLIF(EX_BLOCK3_1, '') IS NULL)
            THEN BLOCK3
            ELSE NULL
        END AS EX_BLOCK3_ELSE,
        CASE 
            WHEN (NULLIF(EX_BLOCK4_1, '') IS NULL)
            THEN BLOCK4
            ELSE NULL
        END AS EX_BLOCK4_ELSE,
        CASE 
            WHEN (NULLIF(EX_BLOCK5_1, '') IS NULL)
            THEN BLOCK5
            ELSE NULL
        END AS EX_BLOCK5_ELSE,
        CASE 
            WHEN (NULLIF(EX_BLOCK6_1, '') IS NULL)
            THEN BLOCK6
            ELSE NULL
        END AS EX_BLOCK6_ELSE,
        CASE 
            WHEN (NULLIF(EX_BLOCK7_1, '') IS NULL)
            THEN BLOCK7
            ELSE NULL
        END AS EX_BLOCK7_ELSE,
        CASE 
            WHEN (NULLIF(EX_BLOCK8_1, '') IS NULL)
            THEN BLOCK8
            ELSE NULL
        END AS EX_BLOCK8_ELSE,
        CASE 
            WHEN (NULLIF(EX_BLOCK9_1, '') IS NULL)
            THEN BLOCK9
            ELSE NULL
        END AS EX_BLOCK9_ELSE,
        CASE 
            WHEN (NULLIF(EX_BLOCK10_1, '') IS NULL)
            THEN BLOCK10
            ELSE NULL
        END AS EX_BLOCK10_ELSE,
        CASE 
            WHEN (NULLIF(EX_BLOCK11_1, '') IS NULL)
            THEN BLOCK11
            ELSE NULL
        END AS EX_BLOCK11_ELSE
    FROM(
        SELECT *,
            CASE 
                WHEN (NULLIF(L_BLOCK1_1, '') IS NOT NULL AND BLOCK1 != L_BLOCK1_1)
                THEN REPLACE(BLOCK1, L_BLOCK1_1, '')
                WHEN (NULLIF(L_BLOCK1_1, '') IS NOT NULL AND BLOCK1 = L_BLOCK1_1)
                THEN 'No Explanation'
                ELSE NULL
            END AS EX_BLOCK1_1,
            CASE 
                WHEN (NULLIF(L_BLOCK2_1, '') IS NOT NULL AND BLOCK2 != L_BLOCK2_1)
                THEN REPLACE(BLOCK2, L_BLOCK2_1, '')
                WHEN (NULLIF(L_BLOCK2_1, '') IS NOT NULL AND BLOCK2 = L_BLOCK2_1)
                THEN 'No Explanation'
                ELSE NULL
            END AS EX_BLOCK2_1,
            CASE 
                WHEN (NULLIF(L_BLOCK3_1, '') IS NOT NULL AND BLOCK3 != L_BLOCK3_1)
                THEN REPLACE(BLOCK3, L_BLOCK3_1, '')
                WHEN (NULLIF(L_BLOCK3_1, '') IS NOT NULL AND BLOCK3 = L_BLOCK3_1)
                THEN 'No Explanation'
                ELSE NULL
            END AS EX_BLOCK3_1,
            CASE 
                WHEN (NULLIF(L_BLOCK4_1, '') IS NOT NULL AND BLOCK4 != L_BLOCK4_1)
                THEN REPLACE(BLOCK4, L_BLOCK4_1, '')
                WHEN (NULLIF(L_BLOCK4_1, '') IS NOT NULL AND BLOCK4 = L_BLOCK4_1)
                THEN 'No Explanation'
                ELSE NULL
            END AS EX_BLOCK4_1,
            CASE 
                WHEN (NULLIF(L_BLOCK5_1, '') IS NOT NULL AND BLOCK5 != L_BLOCK5_1)
                THEN REPLACE(BLOCK5, L_BLOCK5_1, '')
                WHEN (NULLIF(L_BLOCK5_1, '') IS NOT NULL AND BLOCK5 = L_BLOCK5_1)
                THEN 'No Explanation'
                ELSE NULL
            END AS EX_BLOCK5_1,
            CASE 
                WHEN (NULLIF(L_BLOCK6_1, '') IS NOT NULL AND BLOCK6 != L_BLOCK6_1)
                THEN REPLACE(BLOCK6, L_BLOCK6_1, '')
                WHEN (NULLIF(L_BLOCK6_1, '') IS NOT NULL AND BLOCK6 = L_BLOCK6_1)
                THEN 'No Explanation'
                ELSE NULL
            END AS EX_BLOCK6_1,
            CASE 
                WHEN (NULLIF(L_BLOCK7_1, '') IS NOT NULL AND BLOCK7 != L_BLOCK7_1)
                THEN REPLACE(BLOCK7, L_BLOCK7_1, '')
                WHEN (NULLIF(L_BLOCK7_1, '') IS NOT NULL AND BLOCK7 = L_BLOCK7_1)
                THEN 'No Explanation'
                ELSE NULL
            END AS EX_BLOCK7_1,
            CASE 
                WHEN (NULLIF(L_BLOCK8_1, '') IS NOT NULL AND BLOCK8 != L_BLOCK8_1)
                THEN REPLACE(BLOCK8, L_BLOCK8_1, '')
                WHEN (NULLIF(L_BLOCK8_1, '') IS NOT NULL AND BLOCK8 = L_BLOCK8_1)
                THEN 'No Explanation'
                ELSE NULL
            END AS EX_BLOCK8_1,
            CASE 
                WHEN (NULLIF(L_BLOCK9_1, '') IS NOT NULL AND BLOCK9 != L_BLOCK9_1)
                THEN REPLACE(BLOCK9, L_BLOCK9_1, '')
                WHEN (NULLIF(L_BLOCK9_1, '') IS NOT NULL AND BLOCK9 = L_BLOCK9_1)
                THEN 'No Explanation'
                ELSE NULL
            END AS EX_BLOCK9_1,
            CASE 
                WHEN (NULLIF(L_BLOCK10_1, '') IS NOT NULL AND BLOCK10 != L_BLOCK10_1)
                THEN REPLACE(BLOCK10, L_BLOCK10_1, '')
                WHEN (NULLIF(L_BLOCK10_1, '') IS NOT NULL AND BLOCK10 = L_BLOCK10_1)
                THEN 'No Explanation'
                ELSE NULL
            END AS EX_BLOCK10_1,
            CASE 
                WHEN (NULLIF(L_BLOCK11_1, '') IS NOT NULL AND BLOCK11 != L_BLOCK11_1)
                THEN REPLACE(BLOCK11, L_BLOCK11_1, '')
                WHEN (NULLIF(L_BLOCK11_1, '') IS NOT NULL AND BLOCK11 = L_BLOCK11_1)
                THEN 'No Explanation'
                ELSE NULL
            END AS EX_BLOCK11_1
        FROM(
            SELECT *,
                CASE 
                    WHEN (NULLIF(L_BLOCK1_1, '') IS NULL)
                    THEN BLOCK1
                    ELSE NULL
                END AS L_BLOCK1_ELSE,
                CASE 
                    WHEN (NULLIF(L_BLOCK2_1, '') IS NULL)
                    THEN BLOCK2
                    ELSE NULL
                END AS L_BLOCK2_ELSE,
                CASE 
                    WHEN (NULLIF(L_BLOCK3_1, '') IS NULL)
                    THEN BLOCK3
                    ELSE NULL
                END AS L_BLOCK3_ELSE,
                CASE 
                    WHEN (NULLIF(L_BLOCK4_1, '') IS NULL)
                    THEN BLOCK4
                    ELSE NULL
                END AS L_BLOCK4_ELSE,
                CASE 
                    WHEN (NULLIF(L_BLOCK5_1, '') IS NULL)
                    THEN BLOCK5
                    ELSE NULL
                END AS L_BLOCK5_ELSE,
                CASE 
                    WHEN (NULLIF(L_BLOCK6_1, '') IS NULL)
                    THEN BLOCK6
                    ELSE NULL
                END AS L_BLOCK6_ELSE,
                CASE 
                    WHEN (NULLIF(L_BLOCK7_1, '') IS NULL)
                    THEN BLOCK7
                    ELSE NULL
                END AS L_BLOCK7_ELSE,
                CASE 
                    WHEN (NULLIF(L_BLOCK8_1, '') IS NULL)
                    THEN BLOCK8
                    ELSE NULL
                END AS L_BLOCK8_ELSE,
                CASE 
                    WHEN (NULLIF(L_BLOCK9_1, '') IS NULL)
                    THEN BLOCK9
                    ELSE NULL
                END AS L_BLOCK9_ELSE,
                CASE 
                    WHEN (NULLIF(L_BLOCK10_1, '') IS NULL)
                    THEN BLOCK10
                    ELSE NULL
                END AS L_BLOCK10_ELSE,
                CASE 
                    WHEN (NULLIF(L_BLOCK11_1, '') IS NULL)
                    THEN BLOCK11
                    ELSE NULL
                END AS L_BLOCK11_ELSE
            FROM(
                SELECT *,
                    CASE 
                        WHEN (NULLIF(BLOCK1, '') IS NOT NULL AND INSTR(BLOCK1, 'labeled') != 0)
                        THEN SUBSTR(BLOCK1, INSTR(BLOCK1, 'labeled'))
                        ELSE NULL
                    END AS L_BLOCK1_1,
                    CASE 
                        WHEN (NULLIF(BLOCK2, '') IS NOT NULL AND INSTR(BLOCK2, 'labeled') != 0)
                        THEN SUBSTR(BLOCK2, INSTR(BLOCK2, 'labeled'))
                        ELSE NULL
                    END AS L_BLOCK2_1,
                    CASE 
                        WHEN (NULLIF(BLOCK3, '') IS NOT NULL AND INSTR(BLOCK3, 'labeled') != 0)
                        THEN SUBSTR(BLOCK3, INSTR(BLOCK3, 'labeled'))
                        ELSE NULL
                    END AS L_BLOCK3_1,
                    CASE 
                        WHEN (NULLIF(BLOCK4, '') IS NOT NULL AND INSTR(BLOCK4, 'labeled') != 0)
                        THEN SUBSTR(BLOCK4, INSTR(BLOCK4, 'labeled'))
                        ELSE NULL
                    END AS L_BLOCK4_1,
                    CASE 
                        WHEN (NULLIF(BLOCK5, '') IS NOT NULL AND INSTR(BLOCK5, 'labeled') != 0)
                        THEN SUBSTR(BLOCK5, INSTR(BLOCK5, 'labeled'))
                        ELSE NULL
                    END AS L_BLOCK5_1,
                    CASE 
                        WHEN (NULLIF(BLOCK6, '') IS NOT NULL AND INSTR(BLOCK6, 'labeled') != 0)
                        THEN SUBSTR(BLOCK6, INSTR(BLOCK6, 'labeled'))
                        ELSE NULL
                    END AS L_BLOCK6_1,
                    CASE 
                        WHEN (NULLIF(BLOCK7, '') IS NOT NULL AND INSTR(BLOCK7, 'labeled') != 0)
                        THEN SUBSTR(BLOCK7, INSTR(BLOCK7, 'labeled'))
                        ELSE NULL
                    END AS L_BLOCK7_1,
                    CASE 
                        WHEN (NULLIF(BLOCK8, '') IS NOT NULL AND INSTR(BLOCK8, 'labeled') != 0)
                        THEN SUBSTR(BLOCK8, INSTR(BLOCK8, 'labeled'))
                        ELSE NULL
                    END AS L_BLOCK8_1,
                    CASE 
                        WHEN (NULLIF(BLOCK9, '') IS NOT NULL AND INSTR(BLOCK9, 'labeled') != 0)
                        THEN SUBSTR(BLOCK9, INSTR(BLOCK9, 'labeled'))
                        ELSE NULL
                    END AS L_BLOCK9_1,
                    CASE 
                        WHEN (NULLIF(BLOCK10, '') IS NOT NULL AND INSTR(BLOCK10, 'labeled') != 0)
                        THEN SUBSTR(BLOCK10, INSTR(BLOCK10, 'labeled'))
                        ELSE NULL
                    END AS L_BLOCK10_1,
                    CASE 
                        WHEN (NULLIF(BLOCK11, '') IS NOT NULL AND INSTR(BLOCK11, 'labeled') != 0)
                        THEN SUBSTR(BLOCK11, INSTR(BLOCK11, 'labeled'))
                        ELSE NULL
                    END AS L_BLOCK11_1
                FROM test_type2_block_01
            ) a
        ) a
    ) a
) a