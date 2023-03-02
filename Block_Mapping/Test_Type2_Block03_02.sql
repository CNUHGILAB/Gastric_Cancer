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
    L_BLOCK1_SLIDE_2,
    L_BLOCK2_SLIDE_2,
    L_BLOCK3_SLIDE_2,
    L_BLOCK4_SLIDE_2,
    L_BLOCK5_SLIDE_2,
    L_BLOCK6_SLIDE_2,
    L_BLOCK8_SLIDE_2
FROM(
    SELECT *,
        CASE 
            WHEN (NULLIF(EX_BLOCK1_2, '') IS NOT NULL)
            THEN EX_BLOCK1_2
            WHEN (NULLIF(EX_BLOCK_ELSE1_2, '') IS NOT NULL)
            THEN EX_BLOCK_ELSE1_2
            ELSE NULL
        END AS EX_BLOCK1,
        CASE 
            WHEN (NULLIF(EX_BLOCK2_2, '') IS NOT NULL)
            THEN EX_BLOCK2_2
            WHEN (NULLIF(EX_BLOCK_ELSE2_2, '') IS NOT NULL)
            THEN EX_BLOCK_ELSE2_2
            ELSE NULL
        END AS EX_BLOCK2,
        CASE 
            WHEN (NULLIF(EX_BLOCK3_2, '') IS NOT NULL)
            THEN EX_BLOCK3_2
            WHEN (NULLIF(EX_BLOCK_ELSE3_2, '') IS NOT NULL)
            THEN EX_BLOCK_ELSE3_2
            ELSE NULL
        END AS EX_BLOCK3,
        CASE 
            WHEN (NULLIF(EX_BLOCK4_2, '') IS NOT NULL)
            THEN EX_BLOCK4_2
            WHEN (NULLIF(EX_BLOCK_ELSE4_2, '') IS NOT NULL)
            THEN EX_BLOCK_ELSE4_2
            ELSE NULL
        END AS EX_BLOCK4,
        CASE 
            WHEN (NULLIF(EX_BLOCK5_2, '') IS NOT NULL)
            THEN EX_BLOCK5_2
            WHEN (NULLIF(EX_BLOCK_ELSE5_2, '') IS NOT NULL)
            THEN EX_BLOCK_ELSE5_2
            ELSE NULL
        END AS EX_BLOCK5,
        CASE 
            WHEN (NULLIF(EX_BLOCK6_2, '') IS NOT NULL)
            THEN EX_BLOCK6_2
            WHEN (NULLIF(EX_BLOCK_ELSE6_2, '') IS NOT NULL)
            THEN EX_BLOCK_ELSE6_2
            ELSE NULL
        END AS EX_BLOCK6,
        CASE 
            WHEN (NULLIF(EX_BLOCK7_2, '') IS NOT NULL)
            THEN EX_BLOCK7_2
            ELSE NULL
        END AS EX_BLOCK7,
        CASE 
            WHEN (NULLIF(EX_BLOCK8_2, '') IS NOT NULL)
            THEN EX_BLOCK8_2
            WHEN (NULLIF(EX_BLOCK_ELSE8_2, '') IS NOT NULL)
            THEN EX_BLOCK_ELSE8_2
            ELSE NULL
        END AS EX_BLOCK8,
        CASE 
            WHEN (NULLIF(EX_BLOCK9_2, '') IS NOT NULL)
            THEN EX_BLOCK9_2
            ELSE NULL
        END AS EX_BLOCK9,
        CASE 
            WHEN (NULLIF(EX_BLOCK10_2, '') IS NOT NULL)
            THEN EX_BLOCK10_2
            ELSE NULL
        END AS EX_BLOCK10,
        CASE 
            WHEN (NULLIF(EX_BLOCK11_2, '') IS NOT NULL)
            THEN EX_BLOCK11_2
            ELSE NULL
        END AS EX_BLOCK11
    FROM(
        SELECT *,
            CASE 
                WHEN (NULLIF(EX_BLOCK_ELSE_SLIDE1, '') IS NOT NULL)
                THEN EX_BLOCK_ELSE_SLIDE1
                ELSE NULL
            END AS L_BLOCK1_SLIDE_2,
            CASE 
                WHEN (NULLIF(EX_BLOCK_ELSE_SLIDE2, '') IS NOT NULL)
                THEN EX_BLOCK_ELSE_SLIDE2
                ELSE NULL
            END AS L_BLOCK2_SLIDE_2,
            CASE 
                WHEN (NULLIF(EX_BLOCK_ELSE_SLIDE3, '') IS NOT NULL)
                THEN EX_BLOCK_ELSE_SLIDE3
                ELSE NULL
            END AS L_BLOCK3_SLIDE_2,
            CASE 
                WHEN (NULLIF(EX_BLOCK_ELSE_SLIDE4, '') IS NOT NULL)
                THEN EX_BLOCK_ELSE_SLIDE4
                ELSE NULL
            END AS L_BLOCK4_SLIDE_2,
            CASE 
                WHEN (NULLIF(EX_BLOCK_ELSE_SLIDE5, '') IS NOT NULL)
                THEN EX_BLOCK_ELSE_SLIDE5
                ELSE NULL
            END AS L_BLOCK5_SLIDE_2,
            CASE 
                WHEN (NULLIF(EX_BLOCK_ELSE_SLIDE6, '') IS NOT NULL)
                THEN EX_BLOCK_ELSE_SLIDE6
                ELSE NULL
            END AS L_BLOCK6_SLIDE_2,
            CASE 
                WHEN (NULLIF(EX_BLOCK_ELSE_SLIDE8, '') IS NOT NULL)
                THEN EX_BLOCK_ELSE_SLIDE8
                ELSE NULL
            END AS L_BLOCK8_SLIDE_2
        FROM(
            SELECT *,
                CASE 
                    WHEN (INSTR(EX_BLOCK_ELSE1_1, ', no label') != 0)
                    THEN REGEXP_SUBSTR(EX_BLOCK_ELSE1_1, '[^,]+', 1, 1)
                    WHEN (INSTR(EX_BLOCK_ELSE1_1, 'consists of') != 0)
                    THEN REPLACE(EX_BLOCK_ELSE1_1, SUBSTR(EX_BLOCK_ELSE1_1, INSTR(EX_BLOCK_ELSE1_1, ' consists of')), '')
                    WHEN (INSTR(EX_BLOCK_ELSE1_1, 'with no label') != 0)
                    THEN REPLACE(EX_BLOCK_ELSE1_1, SUBSTR(EX_BLOCK_ELSE1_1, INSTR(EX_BLOCK_ELSE1_1, ' with no label')), '')
                    WHEN (INSTR(EX_BLOCK_ELSE1_1, ', \"') != 0)
                    THEN REGEXP_SUBSTR(EX_BLOCK_ELSE1_1, '[^,]+', 1, 1)
                    ELSE NULL
                END AS EX_BLOCK_ELSE1_2,
                CASE 
                    WHEN (INSTR(EX_BLOCK_ELSE2_1, ', \"') != 0)
                    THEN REGEXP_SUBSTR(EX_BLOCK_ELSE2_1, '[^,]+', 1, 1)
                    WHEN (REGEXP_INSTR(EX_BLOCK_ELSE2_1, ' [0-9][;]') != 0)
                    THEN REPLACE(EX_BLOCK_ELSE2_1, SUBSTR(EX_BLOCK_ELSE2_1, REGEXP_INSTR(EX_BLOCK_ELSE2_1, ' [0-9][;]')), '')
                    ELSE NULL
                END AS EX_BLOCK_ELSE2_2,
                CASE 
                    WHEN (INSTR(EX_BLOCK_ELSE3_1, ', \"') != 0)
                    THEN REGEXP_SUBSTR(EX_BLOCK_ELSE3_1, '[^,]+', 1, 1)
                    WHEN (INSTR(EX_BLOCK_ELSE3_1, ';') != 0 AND REGEXP_INSTR(EX_BLOCK_ELSE3_1, ' [0-9]') != 0)
                    THEN REPLACE(EX_BLOCK_ELSE3_1, SUBSTR(EX_BLOCK_ELSE3_1, REGEXP_INSTR(EX_BLOCK_ELSE3_1, ' [0-9][;]')), '')
                    WHEN (INSTR(EX_BLOCK_ELSE3_1, ' \"') != 0)
                    THEN REPLACE(EX_BLOCK_ELSE3_1, SUBSTR(EX_BLOCK_ELSE3_1, INSTR(EX_BLOCK_ELSE3_1, ' \"')), '')
                    WHEN (INSTR(EX_BLOCK_ELSE3_1, 'consists of') != 0)
                    THEN REPLACE(EX_BLOCK_ELSE3_1, SUBSTR(EX_BLOCK_ELSE3_1, INSTR(EX_BLOCK_ELSE3_1, ' consists of')), '')
                    ELSE NULL
                END AS EX_BLOCK_ELSE3_2,
                CASE 
                    WHEN (REGEXP_INSTR(EX_BLOCK_ELSE4_1, ' [0-9][;]') != 0)
                    THEN REPLACE(EX_BLOCK_ELSE4_1, SUBSTR(EX_BLOCK_ELSE4_1, REGEXP_INSTR(EX_BLOCK_ELSE4_1, ' [0-9][;]')), '')
                    WHEN (INSTR(EX_BLOCK_ELSE4_1, ',') = 0 AND INSTR(EX_BLOCK_ELSE4_1, '\"') != 0)
                    THEN REPLACE(EX_BLOCK_ELSE4_1, SUBSTR(EX_BLOCK_ELSE4_1, INSTR(EX_BLOCK_ELSE4_1, ' \"')), '')
                    WHEN (INSTR(EX_BLOCK_ELSE4_1, 'consists of') != 0)
                    THEN REPLACE(EX_BLOCK_ELSE4_1, SUBSTR(EX_BLOCK_ELSE4_1, INSTR(EX_BLOCK_ELSE4_1, ' consists of')), '')
                    ELSE NULL
                END AS EX_BLOCK_ELSE4_2,
                CASE 
                    WHEN (INSTR(EX_BLOCK_ELSE5_1, ', \"') != 0)
                    THEN REGEXP_SUBSTR(EX_BLOCK_ELSE5_1, '[^,]+', 1, 1)
                    WHEN (REGEXP_INSTR(EX_BLOCK_ELSE5_1, ' [0-9]') != 0)
                    THEN REPLACE(EX_BLOCK_ELSE5_1, SUBSTR(EX_BLOCK_ELSE5_1, REGEXP_INSTR(EX_BLOCK_ELSE5_1, ' [0-9]')), '')
                    WHEN (INSTR(EX_BLOCK_ELSE5_1, 'consists of') != 0)
                    THEN REPLACE(EX_BLOCK_ELSE5_1, SUBSTR(EX_BLOCK_ELSE5_1, INSTR(EX_BLOCK_ELSE5_1, ' consists of')), '')
                    ELSE NULL
                END AS EX_BLOCK_ELSE5_2,
                CASE 
                    WHEN (NULLIF(EX_BLOCK_ELSE6_1, '') IS NOT NULL)
                    THEN REGEXP_SUBSTR(EX_BLOCK_ELSE6_1, '[^;]+', 1, 1)
                    ELSE NULL
                END AS EX_BLOCK_ELSE6_2,
                CASE 
                    WHEN (NULLIF(EX_BLOCK_ELSE8_1, '') IS NOT NULL)
                    THEN 'No Explanation'
                    ELSE NULL
                END AS EX_BLOCK_ELSE8_2
            FROM(
                SELECT *,
                    CASE 
                        WHEN (NULLIF(EX_BLOCK_ELSE_SLIDE1, '') IS NOT NULL)
                        THEN REPLACE(EX_BLOCK1_ELSE, EX_BLOCK_ELSE_SLIDE1, '')
                        ELSE EX_BLOCK1_ELSE
                    END AS EX_BLOCK_ELSE1_1,
                    CASE 
                        WHEN (NULLIF(EX_BLOCK_ELSE_SLIDE2, '') IS NOT NULL)
                        THEN REPLACE(EX_BLOCK2_ELSE, EX_BLOCK_ELSE_SLIDE2, '')
                        ELSE EX_BLOCK2_ELSE
                    END AS EX_BLOCK_ELSE2_1,
                    CASE 
                        WHEN (NULLIF(EX_BLOCK_ELSE_SLIDE3, '') IS NOT NULL)
                        THEN REPLACE(EX_BLOCK3_ELSE, EX_BLOCK_ELSE_SLIDE3, '')
                        ELSE EX_BLOCK3_ELSE
                    END AS EX_BLOCK_ELSE3_1,
                    CASE 
                        WHEN (NULLIF(EX_BLOCK_ELSE_SLIDE4, '') IS NOT NULL)
                        THEN REPLACE(EX_BLOCK4_ELSE, EX_BLOCK_ELSE_SLIDE4, '')
                        ELSE EX_BLOCK4_ELSE
                    END AS EX_BLOCK_ELSE4_1,
                    CASE 
                        WHEN (NULLIF(EX_BLOCK_ELSE_SLIDE5, '') IS NOT NULL)
                        THEN REPLACE(EX_BLOCK5_ELSE, EX_BLOCK_ELSE_SLIDE5, '')
                        ELSE EX_BLOCK5_ELSE
                    END AS EX_BLOCK_ELSE5_1,
                    CASE 
                        WHEN (NULLIF(EX_BLOCK_ELSE_SLIDE6, '') IS NOT NULL)
                        THEN REPLACE(EX_BLOCK6_ELSE, EX_BLOCK_ELSE_SLIDE6, '')
                        ELSE EX_BLOCK6_ELSE
                    END AS EX_BLOCK_ELSE6_1,
                    CASE 
                        WHEN (NULLIF(EX_BLOCK_ELSE_SLIDE8, '') IS NOT NULL)
                        THEN REPLACE(EX_BLOCK8_ELSE, EX_BLOCK_ELSE_SLIDE8, '')
                        ELSE EX_BLOCK8_ELSE
                    END AS EX_BLOCK_ELSE8_1
                FROM(
                    SELECT *,
                        CASE 
                            WHEN (INSTR(EX_BLOCK1_ELSE, 'Slide key') != 0)
                            THEN SUBSTR(EX_BLOCK1_ELSE, INSTR(EX_BLOCK1_ELSE, 'Slide key'))
                            ELSE NULL
                        END AS EX_BLOCK_ELSE_SLIDE1,
                        CASE 
                            WHEN (INSTR(EX_BLOCK2_ELSE, 'Slide key') != 0)
                            THEN SUBSTR(EX_BLOCK2_ELSE, INSTR(EX_BLOCK2_ELSE, 'Slide key'))
                            ELSE NULL
                        END AS EX_BLOCK_ELSE_SLIDE2,
                        CASE 
                            WHEN (INSTR(EX_BLOCK3_ELSE, 'Slide key') != 0)
                            THEN SUBSTR(EX_BLOCK3_ELSE, INSTR(EX_BLOCK3_ELSE, 'Slide key'))
                            ELSE NULL
                        END AS EX_BLOCK_ELSE_SLIDE3,
                        CASE 
                            WHEN (INSTR(EX_BLOCK4_ELSE, 'Slide key') != 0)
                            THEN SUBSTR(EX_BLOCK4_ELSE, INSTR(EX_BLOCK4_ELSE, 'Slide key'))
                            ELSE NULL
                        END AS EX_BLOCK_ELSE_SLIDE4,
                        CASE 
                            WHEN (INSTR(EX_BLOCK5_ELSE, 'Slide key') != 0)
                            THEN SUBSTR(EX_BLOCK5_ELSE, INSTR(EX_BLOCK5_ELSE, 'Slide key'))
                            ELSE NULL
                        END AS EX_BLOCK_ELSE_SLIDE5,
                        CASE 
                            WHEN (INSTR(EX_BLOCK6_ELSE, 'Slide key') != 0)
                            THEN SUBSTR(EX_BLOCK6_ELSE, INSTR(EX_BLOCK6_ELSE, 'Slide key'))
                            ELSE NULL
                        END AS EX_BLOCK_ELSE_SLIDE6,
                        CASE 
                            WHEN (INSTR(EX_BLOCK8_ELSE, 'Slide key') != 0)
                            THEN SUBSTR(EX_BLOCK8_ELSE, INSTR(EX_BLOCK8_ELSE, 'Slide key'))
                            ELSE NULL
                        END AS EX_BLOCK_ELSE_SLIDE8
                    FROM(
                        SELECT *,
                            CASE 
                                WHEN (NULLIF(EX_BLOCK1_1, '') IS NOT NULL AND INSTR(EX_BLOCK1_1, ',') != 0)
                                THEN REPLACE(EX_BLOCK1_1, ',', '')
                                WHEN (NULLIF(EX_BLOCK1_1, '') IS NOT NULL AND INSTR(EX_BLOCK1_1, ',') = 0)
                                THEN EX_BLOCK1_1
                                ELSE NULL
                            END AS EX_BLOCK1_2,
                            CASE 
                                WHEN (NULLIF(EX_BLOCK2_1, '') IS NOT NULL AND INSTR(EX_BLOCK2_1, ',') != 0)
                                THEN REPLACE(EX_BLOCK2_1, ',', '')
                                WHEN (NULLIF(EX_BLOCK2_1, '') IS NOT NULL AND INSTR(EX_BLOCK2_1, ',') = 0)
                                THEN EX_BLOCK2_1
                                ELSE NULL
                            END AS EX_BLOCK2_2,
                            CASE 
                                WHEN (NULLIF(EX_BLOCK3_1, '') IS NOT NULL AND INSTR(EX_BLOCK2_1, ',') != 0)
                                THEN REPLACE(EX_BLOCK2_1, ',', '')
                                WHEN (NULLIF(EX_BLOCK2_1, '') IS NOT NULL AND INSTR(EX_BLOCK2_1, ',') = 0)
                                THEN EX_BLOCK2_1
                                ELSE NULL
                            END AS EX_BLOCK3_2,
                            CASE 
                                WHEN (NULLIF(EX_BLOCK4_1, '') IS NOT NULL AND INSTR(EX_BLOCK4_1, ',') != 0)
                                THEN REPLACE(EX_BLOCK4_1, ',', '')
                                WHEN (NULLIF(EX_BLOCK4_1, '') IS NOT NULL AND INSTR(EX_BLOCK4_1, ',') = 0)
                                THEN EX_BLOCK4_1
                                ELSE NULL
                            END AS EX_BLOCK4_2,
                            CASE 
                                WHEN (NULLIF(EX_BLOCK5_1, '') IS NOT NULL AND INSTR(EX_BLOCK5_1, ',') != 0)
                                THEN REPLACE(EX_BLOCK5_1, ',', '')
                                WHEN (NULLIF(EX_BLOCK5_1, '') IS NOT NULL AND INSTR(EX_BLOCK5_1, ',') = 0)
                                THEN EX_BLOCK5_1
                                ELSE NULL
                            END AS EX_BLOCK5_2,
                            CASE 
                                WHEN (NULLIF(EX_BLOCK6_1, '') IS NOT NULL AND INSTR(EX_BLOCK6_1, ',') != 0)
                                THEN REPLACE(EX_BLOCK6_1, ',', '')
                                WHEN (NULLIF(EX_BLOCK6_1, '') IS NOT NULL AND INSTR(EX_BLOCK6_1, ',') = 0)
                                THEN EX_BLOCK6_1
                                ELSE NULL
                            END AS EX_BLOCK6_2,
                            CASE 
                                WHEN (NULLIF(EX_BLOCK7_1, '') IS NOT NULL AND INSTR(EX_BLOCK7_1, ',') != 0)
                                THEN REPLACE(EX_BLOCK7_1, ',', '')
                                WHEN (NULLIF(EX_BLOCK7_1, '') IS NOT NULL AND INSTR(EX_BLOCK7_1, ',') = 0)
                                THEN EX_BLOCK7_1
                                ELSE NULL
                            END AS EX_BLOCK7_2,
                            CASE 
                                WHEN (NULLIF(EX_BLOCK8_1, '') IS NOT NULL AND INSTR(EX_BLOCK8_1, ',') != 0)
                                THEN REPLACE(EX_BLOCK8_1, ',', '')
                                WHEN (NULLIF(EX_BLOCK8_1, '') IS NOT NULL AND INSTR(EX_BLOCK8_1, ',') = 0)
                                THEN EX_BLOCK8_1
                                ELSE NULL
                            END AS EX_BLOCK8_2,
                            CASE 
                                WHEN (NULLIF(EX_BLOCK9_1, '') IS NOT NULL AND INSTR(EX_BLOCK9_1, ',') != 0)
                                THEN REPLACE(EX_BLOCK9_1, ',', '')
                                WHEN (NULLIF(EX_BLOCK9_1, '') IS NOT NULL AND INSTR(EX_BLOCK9_1, ',') = 0)
                                THEN EX_BLOCK9_1
                                ELSE NULL
                            END AS EX_BLOCK9_2,
                            CASE 
                                WHEN (NULLIF(EX_BLOCK10_1, '') IS NOT NULL AND INSTR(EX_BLOCK10_1, ',') != 0)
                                THEN REPLACE(EX_BLOCK10_1, ',', '')
                                WHEN (NULLIF(EX_BLOCK10_1, '') IS NOT NULL AND INSTR(EX_BLOCK10_1, ',') = 0)
                                THEN EX_BLOCK10_1
                                ELSE NULL
                            END AS EX_BLOCK10_2,
                            CASE 
                                WHEN (NULLIF(EX_BLOCK11_1, '') IS NOT NULL AND INSTR(EX_BLOCK11_1, ',') != 0)
                                THEN REPLACE(EX_BLOCK11_1, ',', '')
                                WHEN (NULLIF(EX_BLOCK11_1, '') IS NOT NULL AND INSTR(EX_BLOCK11_1, ',') = 0)
                                THEN EX_BLOCK11_1
                                ELSE NULL
                            END AS EX_BLOCK11_2
                        FROM test_type2_block_02
                    ) a
                ) a
            ) a
        ) a
    ) a
) a