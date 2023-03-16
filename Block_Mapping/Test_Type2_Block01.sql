SELECT
    DISTINCT 원무접수ID,
    환자번호,
    BLOCK1,
    BLOCK2,
    BLOCK3,
    BLOCK4,
    BLOCK5,
    BLOCK6,
    BLOCK7,
    BLOCK8,
    BLOCK9,
    BLOCK10,
    BLOCK11
FROM(
    SELECT *,
        CASE 
            WHEN (NULLIF(BLOCK1_2, '') IS NOT NULL)
            THEN REGEXP_REPLACE(BLOCK1_2, '^2[)] ', '')
            ELSE NULL
        END AS BLOCK1,
        CASE 
            WHEN (NULLIF(BLOCK2_2, '') IS NOT NULL)
            THEN REGEXP_REPLACE(BLOCK2_2, '^ 3[)] ', '')
            ELSE NULL
        END AS BLOCK2,
        CASE 
            WHEN (NULLIF(BLOCK3_2, '') IS NOT NULL)
            THEN REGEXP_REPLACE(BLOCK3_2, '^ 4[)] ', '')
            ELSE NULL
        END AS BLOCK3,
        CASE 
            WHEN (NULLIF(BLOCK4_2, '') IS NOT NULL)
            THEN REGEXP_REPLACE(BLOCK4_2, '^ 5[)]', '')
            ELSE NULL
        END AS BLOCK4,
        CASE 
            WHEN (NULLIF(BLOCK5_2, '') IS NOT NULL)
            THEN REGEXP_REPLACE(BLOCK5_2, '^ 6[)]', '')
            ELSE NULL
        END AS BLOCK5,
        CASE 
            WHEN (NULLIF(BLOCK6_2, '') IS NOT NULL)
            THEN REGEXP_REPLACE(BLOCK6_2, '^ 7[)]', '')
            ELSE NULL
        END AS BLOCK6,
        CASE 
            WHEN (NULLIF(BLOCK7_2, '') IS NOT NULL)
            THEN REGEXP_REPLACE(BLOCK7_2, '^ 8[)]', '')
            ELSE NULL
        END AS BLOCK7,
        CASE 
            WHEN (NULLIF(BLOCK8_2, '') IS NOT NULL)
            THEN REGEXP_REPLACE(BLOCK8_2, '^ 9[)]', '')
            ELSE NULL
        END AS BLOCK8,
        CASE 
            WHEN (NULLIF(BLOCK9_2, '') IS NOT NULL)
            THEN REGEXP_REPLACE(BLOCK9_2, '^ 10[)]', '')
            ELSE NULL
        END AS BLOCK9,
        CASE 
            WHEN (NULLIF(BLOCK10_2, '') IS NOT NULL)
            THEN REGEXP_REPLACE(BLOCK10_2, '^ 11[)]', '')
            ELSE NULL
        END AS BLOCK10,
        CASE 
            WHEN (NULLIF(BLOCK11_2, '') IS NOT NULL)
            THEN REGEXP_REPLACE(BLOCK11_2, '^ 12[)]', '')
            ELSE NULL
        END AS BLOCK11
    FROM(
        SELECT *,
            CASE 
                WHEN (NULLIF(BLOCK1_1, '') IS NOT NULL AND NULLIF(BLOCK2_1, '') IS NOT NULL)
                THEN REPLACE(BLOCK1_1, BLOCK2_1, '')
                WHEN (NULLIF(BLOCK1_1, '') IS NOT NULL AND NULLIF(BLOCK2_1, '') IS NULL)
                THEN BLOCK1_1
                ELSE NULL
            END AS BLOCK1_2,
            CASE 
                WHEN (NULLIF(BLOCK2_1, '') IS NOT NULL AND NULLIF(BLOCK3_1, '') IS NOT NULL)
                THEN REPLACE(BLOCK2_1, BLOCK3_1, '')
                WHEN (NULLIF(BLOCK2_1, '') IS NOT NULL AND NULLIF(BLOCK3_1, '') IS NULL)
                THEN BLOCK2_1
                ELSE NULL
            END AS BLOCK2_2,
            CASE 
                WHEN (NULLIF(BLOCK3_1, '') IS NOT NULL AND NULLIF(BLOCK4_1, '') IS NOT NULL)
                THEN REPLACE(BLOCK3_1, BLOCK4_1, '')
                WHEN (NULLIF(BLOCK3_1, '') IS NOT NULL AND NULLIF(BLOCK4_1, '') IS NULL)
                THEN BLOCK3_1
                ELSE NULL
            END AS BLOCK3_2,
            CASE 
                WHEN (NULLIF(BLOCK4_1, '') IS NOT NULL AND NULLIF(BLOCK5_1, '') IS NOT NULL)
                THEN REPLACE(BLOCK4_1, BLOCK5_1, '')
                WHEN (NULLIF(BLOCK4_1, '') IS NOT NULL AND NULLIF(BLOCK5_1, '') IS NULL)
                THEN BLOCK4_1
                ELSE NULL
            END AS BLOCK4_2,
            CASE 
                WHEN (NULLIF(BLOCK5_1, '') IS NOT NULL AND NULLIF(BLOCK6_1, '') IS NOT NULL)
                THEN REPLACE(BLOCK5_1, BLOCK6_1, '')
                WHEN (NULLIF(BLOCK5_1, '') IS NOT NULL AND NULLIF(BLOCK6_1, '') IS NULL)
                THEN BLOCK5_1
                ELSE NULL
            END AS BLOCK5_2,
            CASE 
                WHEN (NULLIF(BLOCK6_1, '') IS NOT NULL AND NULLIF(BLOCK7_1, '') IS NOT NULL)
                THEN REPLACE(BLOCK6_1, BLOCK7_1, '')
                WHEN (NULLIF(BLOCK6_1, '') IS NOT NULL AND NULLIF(BLOCK7_1, '') IS NULL)
                THEN BLOCK6_1
                ELSE NULL
            END AS BLOCK6_2,
            CASE 
                WHEN (NULLIF(BLOCK7_1, '') IS NOT NULL AND NULLIF(BLOCK8_1, '') IS NOT NULL)
                THEN REPLACE(BLOCK7_1, BLOCK8_1, '')
                WHEN (NULLIF(BLOCK7_1, '') IS NOT NULL AND NULLIF(BLOCK8_1, '') IS NULL)
                THEN BLOCK7_1
                ELSE NULL
            END AS BLOCK7_2,
            CASE 
                WHEN (NULLIF(BLOCK8_1, '') IS NOT NULL AND NULLIF(BLOCK9_1, '') IS NOT NULL)
                THEN REPLACE(BLOCK8_1, BLOCK9_1, '')
                WHEN (NULLIF(BLOCK8_1, '') IS NOT NULL AND NULLIF(BLOCK9_1, '') IS NULL)
                THEN BLOCK8_1
                ELSE NULL
            END AS BLOCK8_2,
            CASE 
                WHEN (NULLIF(BLOCK9_1, '') IS NOT NULL AND NULLIF(BLOCK10_1, '') IS NOT NULL)
                THEN REPLACE(BLOCK9_1, BLOCK10_1, '')
                WHEN (NULLIF(BLOCK9_1, '') IS NOT NULL AND NULLIF(BLOCK10_1, '') IS NULL)
                THEN BLOCK9_1
                ELSE NULL
            END AS BLOCK9_2,
            CASE 
                WHEN (NULLIF(BLOCK10_1, '') IS NOT NULL AND NULLIF(BLOCK11_1, '') IS NOT NULL)
                THEN REPLACE(BLOCK10_1, BLOCK11_1, '')
                WHEN (NULLIF(BLOCK10_1, '') IS NOT NULL AND NULLIF(BLOCK11_1, '') IS NULL)
                THEN BLOCK10_1
                ELSE NULL
            END AS BLOCK10_2,
            CASE 
                WHEN (NULLIF(BLOCK11_1, '') IS NOT NULL)
                THEN BLOCK11_1
                ELSE NULL
            END AS BLOCK11_2
        FROM(
            SELECT *,
                CASE 
                    WHEN (INSTR(SAMPLE_BLOCK, '2) ') != 0 AND INSTR(SAMPLE_BLOCK, ' 3) ') != 0)
                    THEN SUBSTR(SAMPLE_BLOCK, 1)
                    WHEN (INSTR(SAMPLE_BLOCK, '2) ') != 0 AND INSTR(SAMPLE_BLOCK, ' 3) ') = 0)
                    THEN SUBSTR(SAMPLE_BLOCK, 1)
                    ELSE NULL
                END AS BLOCK1_1,
                CASE 
                    WHEN (INSTR(SAMPLE_BLOCK, ' 3) ') != 0 AND INSTR(SAMPLE_BLOCK, ' 4) ') != 0)
                    THEN SUBSTR(SAMPLE_BLOCK, INSTR(SAMPLE_BLOCK, ' 3) '))
                    WHEN (INSTR(SAMPLE_BLOCK, ' 3) ') != 0 AND INSTR(SAMPLE_BLOCK, ' 4-11) ') != 0)
                    THEN SUBSTR(SAMPLE_BLOCK, INSTR(SAMPLE_BLOCK, ' 3) '))
                    WHEN (INSTR(SAMPLE_BLOCK, ' 3) ') != 0 AND INSTR(SAMPLE_BLOCK, ' 4) ') = 0)
                    THEN SUBSTR(SAMPLE_BLOCK, INSTR(SAMPLE_BLOCK, ' 3) '))
                    WHEN (INSTR(SAMPLE_BLOCK, ' 3) ') != 0 AND INSTR(SAMPLE_BLOCK, ' 4-11) ') = 0)
                    THEN SUBSTR(SAMPLE_BLOCK, INSTR(SAMPLE_BLOCK, ' 3) '))
                    ELSE NULL
                END AS BLOCK2_1,
                CASE 
                    WHEN (INSTR(SAMPLE_BLOCK, ' 4) ') != 0 AND INSTR(SAMPLE_BLOCK, ' 5) ') != 0)
                    THEN SUBSTR(SAMPLE_BLOCK, INSTR(SAMPLE_BLOCK, ' 4) '))
                    WHEN (INSTR(SAMPLE_BLOCK, ' 4-11) ') != 0 AND INSTR(SAMPLE_BLOCK, ' 5) ') != 0)
                    THEN SUBSTR(SAMPLE_BLOCK, INSTR(SAMPLE_BLOCK, ' 4-11) '))
                    WHEN (INSTR(SAMPLE_BLOCK, ' 4) ') != 0 AND INSTR(SAMPLE_BLOCK, ' 5) ') = 0)
                    THEN SUBSTR(SAMPLE_BLOCK, INSTR(SAMPLE_BLOCK, ' 4) '))
                    WHEN (INSTR(SAMPLE_BLOCK, ' 4-11) ') != 0 AND INSTR(SAMPLE_BLOCK, ' 5) ') = 0)
                    THEN SUBSTR(SAMPLE_BLOCK, INSTR(SAMPLE_BLOCK, ' 4-11) '))
                    WHEN (INSTR(SAMPLE_BLOCK, ' 4) ') != 0 AND INSTR(SAMPLE_BLOCK, ' 5-9) ') != 0)
                    THEN SUBSTR(SAMPLE_BLOCK, INSTR(SAMPLE_BLOCK, ' 4) '))
                    ELSE NULL
                END AS BLOCK3_1,
                CASE 
                    WHEN (INSTR(SAMPLE_BLOCK, ' 5) ') != 0 AND INSTR(SAMPLE_BLOCK, ' 6) ') != 0)
                    THEN SUBSTR(SAMPLE_BLOCK, INSTR(SAMPLE_BLOCK, ' 5) '))
                    WHEN (INSTR(SAMPLE_BLOCK, ' 5-9) ') != 0 AND INSTR(SAMPLE_BLOCK, ' 6) ') != 0)
                    THEN SUBSTR(SAMPLE_BLOCK, INSTR(SAMPLE_BLOCK, ' 5-9) '))
                    WHEN (INSTR(SAMPLE_BLOCK, ' 5) ') != 0 AND INSTR(SAMPLE_BLOCK, ' 6) ') = 0)
                    THEN SUBSTR(SAMPLE_BLOCK, INSTR(SAMPLE_BLOCK, ' 5) '))
                    WHEN (INSTR(SAMPLE_BLOCK, ' 5-9) ') != 0 AND INSTR(SAMPLE_BLOCK, ' 6) ') = 0)
                    THEN SUBSTR(SAMPLE_BLOCK, INSTR(SAMPLE_BLOCK, ' 5-9) '))
                    ELSE NULL
                END AS BLOCK4_1,
                CASE 
                    WHEN (INSTR(SAMPLE_BLOCK, ' 6) ') != 0 AND INSTR(SAMPLE_BLOCK, ' 7) ') != 0)
                    THEN SUBSTR(SAMPLE_BLOCK, INSTR(SAMPLE_BLOCK, ' 6) '))
                    WHEN (INSTR(SAMPLE_BLOCK, ' 6) ') != 0 AND INSTR(SAMPLE_BLOCK, ' 7) ') = 0)
                    THEN SUBSTR(SAMPLE_BLOCK, INSTR(SAMPLE_BLOCK, ' 6) '))
                    ELSE NULL
                END AS BLOCK5_1,
                CASE 
                    WHEN (INSTR(SAMPLE_BLOCK, ' 7) ') != 0 AND INSTR(SAMPLE_BLOCK, ' 8) ') != 0)
                    THEN SUBSTR(SAMPLE_BLOCK, INSTR(SAMPLE_BLOCK, ' 7) '))
                    WHEN (INSTR(SAMPLE_BLOCK, ' 7) ') != 0 AND INSTR(SAMPLE_BLOCK, ' 8) ') = 0)
                    THEN SUBSTR(SAMPLE_BLOCK, INSTR(SAMPLE_BLOCK, ' 7) '))
                    ELSE NULL
                END AS BLOCK6_1,
                CASE 
                    WHEN (INSTR(SAMPLE_BLOCK, ' 8) ') != 0 AND INSTR(SAMPLE_BLOCK, ' 9) ') != 0)
                    THEN SUBSTR(SAMPLE_BLOCK, INSTR(SAMPLE_BLOCK, ' 8) '))
                    WHEN (INSTR(SAMPLE_BLOCK, ' 8) ') != 0 AND INSTR(SAMPLE_BLOCK, ' 9) ') = 0)
                    THEN SUBSTR(SAMPLE_BLOCK, INSTR(SAMPLE_BLOCK, ' 8) '))
                    ELSE NULL
                END AS BLOCK7_1,
                CASE 
                    WHEN (INSTR(SAMPLE_BLOCK, ' 9) ') != 0 AND INSTR(SAMPLE_BLOCK, ' 10) ') != 0)
                    THEN SUBSTR(SAMPLE_BLOCK, INSTR(SAMPLE_BLOCK, ' 9) '))
                    WHEN (INSTR(SAMPLE_BLOCK, ' 9) ') != 0 AND INSTR(SAMPLE_BLOCK, ' 10) ') = 0)
                    THEN SUBSTR(SAMPLE_BLOCK, INSTR(SAMPLE_BLOCK, ' 9) '))
                    ELSE NULL
                END AS BLOCK8_1,
                CASE 
                    WHEN (INSTR(SAMPLE_BLOCK, ' 10) ') != 0 AND INSTR(SAMPLE_BLOCK, ' 11) ') != 0)
                    THEN SUBSTR(SAMPLE_BLOCK, INSTR(SAMPLE_BLOCK, ' 10) '))
                    WHEN (INSTR(SAMPLE_BLOCK, ' 10) ') != 0 AND INSTR(SAMPLE_BLOCK, ' 11) ') = 0)
                    THEN SUBSTR(SAMPLE_BLOCK, INSTR(SAMPLE_BLOCK, ' 10) '))
                    ELSE NULL
                END AS BLOCK9_1,
                CASE 
                    WHEN (INSTR(SAMPLE_BLOCK, ' 11) ') != 0 AND INSTR(SAMPLE_BLOCK, ' 12) ') != 0)
                    THEN SUBSTR(SAMPLE_BLOCK, INSTR(SAMPLE_BLOCK, ' 11) '))
                    WHEN (INSTR(SAMPLE_BLOCK, ' 11) ') != 0 AND INSTR(SAMPLE_BLOCK, ' 12) ') = 0)
                    THEN SUBSTR(SAMPLE_BLOCK, INSTR(SAMPLE_BLOCK, ' 11) '))
                    ELSE NULL
                END AS BLOCK10_1,
                CASE 
                    WHEN (INSTR(SAMPLE_BLOCK, ' 12) ') != 0)
                    THEN SUBSTR(SAMPLE_BLOCK, INSTR(SAMPLE_BLOCK, ' 12) '))
                    WHEN (INSTR(SAMPLE_BLOCK, ' 12) ') = 0)
                    THEN NULL
                    ELSE NULL
                END AS BLOCK11_1
            FROM test_type2_block_00
        ) a
    ) a
) a
#WHERE (원무접수ID = 'MI0089213220171221' AND 'MI0087583220120702' AND 'MI0172575920190424' 'MI0057083720171122' '1121623403' 'MI0059399520190113')