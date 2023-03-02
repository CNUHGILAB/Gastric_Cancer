SELECT
FROM(
    SELECT *,
    FROM(
        SELECT *,
        FROM(
            SELECT *,
                CASE 
                    WHEN 
                    THEN 
                    ELSE 
                END AS 
            FROM(
                SELECT *,
                    CASE 
                        WHEN (NULLIF(L_BLOCK1_SLIDE_1, '') IS NOT NULL)
                        THEN SUBSTR(L_BLOCK1_SLIDE_1, INSTR(L_BLOCK1_SLIDE_1, REGEXP_SUBSTR(L_BLOCK1_SLIDE_1, '[^;]+', 1, 2)))
                        WHEN (NULLIF(L_BLOCK1_SLIDE_2, '') IS NOT NULL)
                        THEN SUBSTR(L_BLOCK1_SLIDE_2, INSTR(L_BLOCK1_SLIDE_2, REGEXP_SUBSTR(L_BLOCK1_SLIDE_2, '[^;]+', 1, 2)))
                        ELSE NULL
                    END AS L_BLOCK1_SLIDE,
                    CASE 
                        WHEN (NULLIF(L_BLOCK2_SLIDE_1, '') IS NOT NULL)
                        THEN SUBSTR(L_BLOCK2_SLIDE_1, INSTR(L_BLOCK2_SLIDE_1, REGEXP_SUBSTR(L_BLOCK2_SLIDE_1, '[^;]+', 1, 2)))
                        WHEN (NULLIF(L_BLOCK2_SLIDE_2, '') IS NOT NULL)
                        THEN SUBSTR(L_BLOCK2_SLIDE_2, INSTR(L_BLOCK2_SLIDE_2, REGEXP_SUBSTR(L_BLOCK2_SLIDE_2, '[^;]+', 1, 2)))
                        ELSE NULL
                    END AS L_BLOCK2_SLIDE,
                    CASE 
                        WHEN (NULLIF(L_BLOCK3_SLIDE_1, '') IS NOT NULL)
                        THEN SUBSTR(L_BLOCK3_SLIDE_1, INSTR(L_BLOCK3_SLIDE_1, REGEXP_SUBSTR(L_BLOCK3_SLIDE_1, '[^;]+', 1, 2)))
                        WHEN (NULLIF(L_BLOCK3_SLIDE_2, '') IS NOT NULL)
                        THEN SUBSTR(L_BLOCK3_SLIDE_2, INSTR(L_BLOCK3_SLIDE_2, REGEXP_SUBSTR(L_BLOCK3_SLIDE_2, '[^;]+', 1, 2)))
                        ELSE NULL
                    END AS L_BLOCK3_SLIDE,
                    CASE 
                        WHEN (NULLIF(L_BLOCK4_SLIDE_1, '') IS NOT NULL)
                        THEN SUBSTR(L_BLOCK4_SLIDE_1, INSTR(L_BLOCK4_SLIDE_1, REGEXP_SUBSTR(L_BLOCK4_SLIDE_1, '[^;]+', 1, 2)))
                        WHEN (NULLIF(L_BLOCK4_SLIDE_2, '') IS NOT NULL)
                        THEN SUBSTR(L_BLOCK4_SLIDE_2, INSTR(L_BLOCK4_SLIDE_2, REGEXP_SUBSTR(L_BLOCK4_SLIDE_2, '[^;]+', 1, 2)))
                        ELSE NULL
                    END AS L_BLOCK4_SLIDE,
                    CASE 
                        WHEN (NULLIF(L_BLOCK5_SLIDE_1, '') IS NOT NULL)
                        THEN SUBSTR(L_BLOCK5_SLIDE_1, INSTR(L_BLOCK5_SLIDE_1, REGEXP_SUBSTR(L_BLOCK5_SLIDE_1, '[^;]+', 1, 2)))
                        WHEN (NULLIF(L_BLOCK5_SLIDE_2, '') IS NOT NULL)
                        THEN SUBSTR(L_BLOCK5_SLIDE_2, INSTR(L_BLOCK5_SLIDE_2, REGEXP_SUBSTR(L_BLOCK5_SLIDE_2, '[^;]+', 1, 2)))
                        ELSE NULL
                    END AS L_BLOCK5_SLIDE,
                    CASE 
                        WHEN (NULLIF(L_BLOCK6_SLIDE_1, '') IS NOT NULL)
                        THEN SUBSTR(L_BLOCK6_SLIDE_1, INSTR(L_BLOCK6_SLIDE_1, REGEXP_SUBSTR(L_BLOCK6_SLIDE_1, '[^;]+', 1, 2)))
                        WHEN (NULLIF(L_BLOCK6_SLIDE_2, '') IS NOT NULL)
                        THEN SUBSTR(L_BLOCK6_SLIDE_2, INSTR(L_BLOCK6_SLIDE_2, REGEXP_SUBSTR(L_BLOCK6_SLIDE_2, '[^;]+', 1, 2)))
                        ELSE NULL
                    END AS L_BLOCK6_SLIDE,
                    CASE 
                        WHEN (NULLIF(L_BLOCK7_SLIDE_1, '') IS NOT NULL)
                        THEN SUBSTR(L_BLOCK7_SLIDE_1, INSTR(L_BLOCK7_SLIDE_1, REGEXP_SUBSTR(L_BLOCK7_SLIDE_1, '[^;]+', 1, 2)))
                        ELSE NULL
                    END AS L_BLOCK7_SLIDE,
                    CASE 
                        WHEN (NULLIF(L_BLOCK8_SLIDE_1, '') IS NOT NULL)
                        THEN SUBSTR(L_BLOCK8_SLIDE_1, INSTR(L_BLOCK8_SLIDE_1, REGEXP_SUBSTR(L_BLOCK8_SLIDE_1, '[^;]+', 1, 2)))
                        WHEN (NULLIF(L_BLOCK8_SLIDE_2, '') IS NOT NULL)
                        THEN SUBSTR(L_BLOCK8_SLIDE_2, INSTR(L_BLOCK8_SLIDE_2, REGEXP_SUBSTR(L_BLOCK8_SLIDE_2, '[^;]+', 1, 2)))
                        ELSE NULL
                    END AS L_BLOCK8_SLIDE,
                    CASE 
                        WHEN (NULLIF(L_BLOCK9_SLIDE_1, '') IS NOT NULL)
                        THEN SUBSTR(L_BLOCK9_SLIDE_1, INSTR(L_BLOCK9_SLIDE_1, REGEXP_SUBSTR(L_BLOCK9_SLIDE_1, '[^;]+', 1, 2)))
                        ELSE NULL
                    END AS L_BLOCK9_SLIDE,
                    CASE 
                        WHEN (NULLIF(L_BLOCK10_SLIDE_1, '') IS NOT NULL)
                        THEN SUBSTR(L_BLOCK10_SLIDE_1, INSTR(L_BLOCK10_SLIDE_1, REGEXP_SUBSTR(L_BLOCK10_SLIDE_1, '[^;]+', 1, 2)))
                        ELSE NULL
                    END AS L_BLOCK10_SLIDE,
                    CASE 
                        WHEN (NULLIF(L_BLOCK11_SLIDE_1, '') IS NOT NULL)
                        THEN SUBSTR(L_BLOCK11_SLIDE_1, INSTR(L_BLOCK11_SLIDE_1, REGEXP_SUBSTR(L_BLOCK11_SLIDE_1, '[^;]+', 1, 2)))
                        ELSE NULL
                    END AS L_BLOCK11_SLIDE
                FROM test_type2_block_03
            ) a
        ) a
    ) a
) a