SELECT
    원무접수ID,
    환자번호,
    L_BLOCK_B1,
    L_BLOCK_B2,
    L_BLOCK_SLIDE_B1,
    L_BLOCK_ELSE_B1,
    L_BLOCK_BX,
    L_BLOCK_C1,
    L_BLOCK_C2,
    L_BLOCK_SLIDE_C1,
    L_BLOCK_ELSE_C1,
    L_BLOCK_CX
FROM(
    SELECT *,
        CASE 
            WHEN (NULLIF(L_BLOCK1_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SLIDE_B1, '') IS NULL AND NULLIF(L_BLOCK_ELSE_B1, '') IS NULL AND NULLIF(L_BLOCK_B1, '') IS NULL AND NULLIF(L_BLOCK_B2, '') IS NULL)
            THEN L_BLOCK1_1
            WHEN (NULLIF(L_BLOCK1_ELSE, '') IS NOT NULL AND NULLIF(L_BLOCK_SLIDE_B1, '') IS NULL AND NULLIF(L_BLOCK_ELSE_B1, '') IS NULL AND NULLIF(L_BLOCK_B1, '') IS NULL AND NULLIF(L_BLOCK_B2, '') IS NULL)
            THEN L_BLOCK1_ELSE
            ELSE NULL
        END AS L_BLOCK_BX,
        CASE 
            WHEN (NULLIF(L_BLOCK2_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SLIDE_C1, '') IS NULL AND NULLIF(L_BLOCK_ELSE_C1, '') IS NULL AND NULLIF(L_BLOCK_C1, '') IS NULL AND NULLIF(L_BLOCK_C2, '') IS NULL)
            THEN L_BLOCK2_1
            WHEN (NULLIF(L_BLOCK2_ELSE, '') IS NOT NULL AND NULLIF(L_BLOCK_SLIDE_C1, '') IS NULL AND NULLIF(L_BLOCK_ELSE_C1, '') IS NULL AND NULLIF(L_BLOCK_C1, '') IS NULL AND NULLIF(L_BLOCK_C2, '') IS NULL)
            THEN L_BLOCK2_ELSE
            ELSE NULL
        END AS L_BLOCK_CX
    FROM(
        SELECT *,
            CASE 
                WHEN (NULLIF(L_BLOCK1_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SLIDE_B1, '') IS NULL AND NULLIF(L_BLOCK_ELSE_B1, '') IS NULL AND INSTR(L_BLOCK1_1, '(B)') != 0)
                THEN SUBSTR(L_BLOCK1_1, INSTR(L_BLOCK1_1, ' (B'))
                WHEN (NULLIF(L_BLOCK1_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SLIDE_B1, '') IS NULL AND NULLIF(L_BLOCK_ELSE_B1, '') IS NULL AND REGEXP_INSTR(L_BLOCK1_1, '[(]B[0-9]') != 0)
                THEN SUBSTR(L_BLOCK1_1, INSTR(L_BLOCK1_1, ' (B'))
                WHEN (NULLIF(L_BLOCK1_ELSE, '') IS NOT NULL AND NULLIF(L_BLOCK_SLIDE_B1, '') IS NULL AND NULLIF(L_BLOCK_ELSE_B1, '') IS NULL AND INSTR(L_BLOCK1_ELSE, '(B)') != 0)
                THEN SUBSTR(L_BLOCK1_ELSE, INSTR(L_BLOCK1_ELSE, ' (B'))
                WHEN (NULLIF(L_BLOCK1_ELSE, '') IS NOT NULL AND NULLIF(L_BLOCK_SLIDE_B1, '') IS NULL AND NULLIF(L_BLOCK_ELSE_B1, '') IS NULL AND REGEXP_INSTR(L_BLOCK1_ELSE, '[(]B[0-9]') != 0)
                THEN SUBSTR(L_BLOCK1_ELSE, INSTR(L_BLOCK1_ELSE, ' (B'))
                ELSE NULL
            END AS L_BLOCK_B2,
            CASE 
                WHEN (NULLIF(L_BLOCK2_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SLIDE_C1, '') IS NULL AND NULLIF(L_BLOCK_ELSE_C1, '') IS NULL AND INSTR(L_BLOCK2_1, '(C)') != 0)
                THEN SUBSTR(L_BLOCK2_1, INSTR(L_BLOCK2_1, ' (C'))
                WHEN (NULLIF(L_BLOCK2_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SLIDE_C1, '') IS NULL AND NULLIF(L_BLOCK_ELSE_C1, '') IS NULL AND REGEXP_INSTR(L_BLOCK2_1, '[(]C[0-9]') != 0)
                THEN SUBSTR(L_BLOCK2_1, INSTR(L_BLOCK2_1, ' (C'))
                WHEN (NULLIF(L_BLOCK2_ELSE, '') IS NOT NULL AND NULLIF(L_BLOCK_SLIDE_C1, '') IS NULL AND NULLIF(L_BLOCK_ELSE_C1, '') IS NULL AND INSTR(L_BLOCK2_ELSE, '(C)') != 0)
                THEN SUBSTR(L_BLOCK2_ELSE, INSTR(L_BLOCK2_ELSE, ' (C'))
                WHEN (NULLIF(L_BLOCK2_ELSE, '') IS NOT NULL AND NULLIF(L_BLOCK_SLIDE_C1, '') IS NULL AND NULLIF(L_BLOCK_ELSE_C1, '') IS NULL AND REGEXP_INSTR(L_BLOCK2_ELSE, '[(]C[0-9]') != 0)
                THEN SUBSTR(L_BLOCK2_ELSE, INSTR(L_BLOCK2_ELSE, ' (C'))
                ELSE NULL
            END AS L_BLOCK_C2
        FROM(
            SELECT *,
                CASE 
                    WHEN (NULLIF(L_BLOCK1_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SLIDE_B1, '') IS NULL AND NULLIF(L_BLOCK_ELSE_B1, '') IS NULL AND INSTR(L_BLOCK1_1, 'block B') != 0)
                    THEN SUBSTR(L_BLOCK1_1, INSTR(L_BLOCK1_1, 'block B'))
                    WHEN (NULLIF(L_BLOCK1_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SLIDE_B1, '') IS NULL AND NULLIF(L_BLOCK_ELSE_B1, '') IS NULL AND INSTR(L_BLOCK1_1, 'block \"B\"') != 0)
                    THEN SUBSTR(L_BLOCK1_1, INSTR(L_BLOCK1_1, 'block \"B\"'))
                    WHEN (NULLIF(L_BLOCK1_ELSE, '') IS NOT NULL AND NULLIF(L_BLOCK_SLIDE_B1, '') IS NULL AND NULLIF(L_BLOCK_ELSE_B1, '') IS NULL AND INSTR(L_BLOCK1_ELSE, 'block B') != 0)
                    THEN SUBSTR(L_BLOCK1_ELSE, INSTR(L_BLOCK1_ELSE, 'block B'))
                    WHEN (NULLIF(L_BLOCK1_ELSE, '') IS NOT NULL AND NULLIF(L_BLOCK_SLIDE_B1, '') IS NULL AND NULLIF(L_BLOCK_ELSE_B1, '') IS NULL AND INSTR(L_BLOCK1_ELSE, 'block \"B\"') != 0)
                    THEN SUBSTR(L_BLOCK1_ELSE, INSTR(L_BLOCK1_ELSE, 'block \"B\"'))
                    ELSE NULL
                END AS L_BLOCK_B1,
                CASE 
                    WHEN (NULLIF(L_BLOCK2_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SLIDE_C1, '') IS NULL AND NULLIF(L_BLOCK_SLIDE_C1, '') IS NULL AND INSTR(L_BLOCK2_1, 'block C') != 0)
                    THEN SUBSTR(L_BLOCK2_1, INSTR(L_BLOCK2_1, 'block C'))
                    WHEN (NULLIF(L_BLOCK2_ELSE, '') IS NOT NULL AND NULLIF(L_BLOCK_SLIDE_C1, '') IS NULL AND NULLIF(L_BLOCK_SLIDE_C1, '') IS NULL AND INSTR(L_BLOCK2_ELSE, 'block C') != 0)
                    THEN SUBSTR(L_BLOCK2_ELSE, INSTR(L_BLOCK2_ELSE, 'block C'))
                    ELSE NULL
                END AS L_BLOCK_C1
            FROM(
                SELECT *,
                    CASE
                        WHEN (NULLIF(L_BLOCK1_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SLIDE_B1, '') IS NULL AND INSTR(L_BLOCK1_1, ' 2) ') != 0)
                        THEN SUBSTR(REGEXP_SUBSTR(L_BLOCK1_1, '[^2)]+', 1, 1), INSTR(REGEXP_SUBSTR(L_BLOCK1_1, '[^2)]+', 1, 1),  'block B'))
                        ELSE NULL
                    END AS L_BLOCK_ELSE_B1,
                    CASE 
                        WHEN (NULLIF(L_BLOCK1_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SLIDE_B1, '') IS NULL AND INSTR(L_BLOCK1_1, ' 2) ') != 0)
                        THEN SUBSTR(REGEXP_SUBSTR(L_BLOCK1_1, '[^2)]+', 1, 2), INSTR(REGEXP_SUBSTR(L_BLOCK1_1, '[^2)]+', 1, 2),  'block C'))
                        WHEN (NULLIF(L_BLOCK2_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SLIDE_C1, '') IS NULL AND INSTR(L_BLOCK2_1, ' 3) ') != 0)
                        THEN SUBSTR(REGEXP_SUBSTR(L_BLOCK2_1, '[^3)]+', 1, 1), INSTR(REGEXP_SUBSTR(L_BLOCK2_1, '[^3)]+', 1, 1),  'block C'))
                        ELSE NULL
                    END AS L_BLOCK_ELSE_C1
                FROM(
                    SELECT *,
                        CASE 
                            WHEN (INSTR(L_BLOCK1_1, 'Slide key') != 0)
                            THEN SUBSTR(L_BLOCK1_1, INSTR(L_BLOCK1_1, 'Slide key'))
                            WHEN (REGEXP_INSTR(BINARY L_BLOCK1_ELSE, 'Slide key') != 0)
                            THEN SUBSTR(L_BLOCK1_ELSE, INSTR(L_BLOCK1_ELSE, 'Slide key'))
                            ELSE NULL
                        END AS L_BLOCK_SLIDE_B1,
                        CASE 
                            WHEN (INSTR(L_BLOCK2_1, 'Slide key') != 0)
                            THEN SUBSTR(L_BLOCK2_1, INSTR(L_BLOCK2_1, 'Slide key'))
                            WHEN (REGEXP_INSTR(BINARY L_BLOCK2_ELSE, 'Slide key') != 0)
                            THEN SUBSTR(L_BLOCK2_ELSE, INSTR(L_BLOCK2_ELSE, 'Slide key'))
                            ELSE NULL
                        END AS L_BLOCK_SLIDE_C1
                    FROM test_type2_block_02
                ) a
            ) a
        ) a
    ) a
) a