SELECT
    원무접수ID,
    환자번호,
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
    L_BLOCK1_SLIDE_1,
    L_BLOCK2_SLIDE_1,
    L_BLOCK3_SLIDE_1,
    L_BLOCK4_SLIDE_1,
    L_BLOCK5_SLIDE_1,
    L_BLOCK6_SLIDE_1,
    L_BLOCK7_SLIDE_1,
    L_BLOCK8_SLIDE_1,
    L_BLOCK9_SLIDE_1,
    L_BLOCK10_SLIDE_1,
    L_BLOCK11_SLIDE_1
FROM(
    SELECT *,
        CASE 
            WHEN (NULLIF(L_BLOCK_SLIDE1, '') IS NOT NULL)
            THEN L_BLOCK_SLIDE1
            WHEN (NULLIF(L_BLOCK_ELSE_SLIDE1, '') IS NOT NULL)
            THEN L_BLOCK_ELSE_SLIDE1
            ELSE NULL
        END AS L_BLOCK1_SLIDE_1,
        CASE 
            WHEN (NULLIF(L_BLOCK_SLIDE2, '') IS NOT NULL)
            THEN L_BLOCK_SLIDE2
            WHEN (NULLIF(L_BLOCK_ELSE_SLIDE2, '') IS NOT NULL)
            THEN L_BLOCK_ELSE_SLIDE2
            ELSE NULL
        END AS L_BLOCK2_SLIDE_1,
        CASE 
            WHEN (NULLIF(L_BLOCK_SLIDE3, '') IS NOT NULL)
            THEN L_BLOCK_SLIDE3
            WHEN (NULLIF(L_BLOCK_ELSE_SLIDE3, '') IS NOT NULL)
            THEN L_BLOCK_ELSE_SLIDE3
            ELSE NULL
        END AS L_BLOCK3_SLIDE_1,
        CASE 
            WHEN (NULLIF(L_BLOCK_SLIDE4, '') IS NOT NULL)
            THEN L_BLOCK_SLIDE4
            WHEN (NULLIF(L_BLOCK_ELSE_SLIDE4, '') IS NOT NULL)
            THEN L_BLOCK_ELSE_SLIDE4
            ELSE NULL
        END AS L_BLOCK4_SLIDE_1,
        CASE 
            WHEN (NULLIF(L_BLOCK_SLIDE5, '') IS NOT NULL)
            THEN L_BLOCK_SLIDE5
            WHEN (NULLIF(L_BLOCK_ELSE_SLIDE5, '') IS NOT NULL)
            THEN L_BLOCK_ELSE_SLIDE5
            ELSE NULL
        END AS L_BLOCK5_SLIDE_1,
        CASE 
            WHEN (NULLIF(L_BLOCK_SLIDE6, '') IS NOT NULL)
            THEN L_BLOCK_SLIDE6
            WHEN (NULLIF(L_BLOCK_ELSE_SLIDE6, '') IS NOT NULL)
            THEN L_BLOCK_ELSE_SLIDE6
            ELSE NULL
        END AS L_BLOCK6_SLIDE_1,
        CASE 
            WHEN (NULLIF(L_BLOCK_SLIDE7, '') IS NOT NULL)
            THEN L_BLOCK_SLIDE7
            ELSE NULL
        END AS L_BLOCK7_SLIDE_1,
        CASE 
            WHEN (NULLIF(L_BLOCK_SLIDE8, '') IS NOT NULL)
            THEN L_BLOCK_SLIDE8
            WHEN (NULLIF(L_BLOCK_ELSE_SLIDE8, '') IS NOT NULL)
            THEN L_BLOCK_ELSE_SLIDE8
            ELSE NULL
        END AS L_BLOCK8_SLIDE_1,
        CASE 
            WHEN (NULLIF(L_BLOCK_SLIDE9, '') IS NOT NULL)
            THEN L_BLOCK_SLIDE9
            ELSE NULL
        END AS L_BLOCK9_SLIDE_1,
        CASE 
            WHEN (NULLIF(L_BLOCK_SLIDE10, '') IS NOT NULL)
            THEN L_BLOCK_SLIDE10
            ELSE NULL
        END AS L_BLOCK10_SLIDE_1,
        CASE 
            WHEN (NULLIF(L_BLOCK_SLIDE11, '') IS NOT NULL)
            THEN L_BLOCK_SLIDE11
            ELSE NULL
        END AS L_BLOCK11_SLIDE_1
    FROM(
        SELECT *,
            CASE 
                WHEN (NULLIF(L_BLOCK_SEMI1, '') IS NOT NULL)
                THEN REPLACE(L_BLOCK_SEMI1, '\"', '')
                WHEN (NULLIF(L_BLOCK_SPA1, '') IS NOT NULL)
                THEN REPLACE(L_BLOCK_SPA1, '\"', '')
                WHEN (NULLIF(L_BLOCK_COM1, '') IS NOT NULL)
                THEN REPLACE(L_BLOCK_COM1, '\"', '')
                WHEN (NULLIF(L_BLOCK_ELSE1, '') IS NOT NULL AND INSTR(L_BLOCK_ELSE1, '\"') != 0)
                THEN REPLACE(L_BLOCK_ELSE1, '\"', '')
                WHEN (NULLIF(L_BLOCK_ELSE1, '') IS NOT NULL AND INSTR(L_BLOCK_ELSE1, '\"') = 0)
                THEN L_BLOCK_ELSE1
                ELSE NULL
            END AS L_BLOCK1_2,
            CASE 
                WHEN (NULLIF(L_BLOCK_SEMI2, '') IS NOT NULL)
                THEN REPLACE(L_BLOCK_SEMI2, '\"', '')
                WHEN (NULLIF(L_BLOCK_SPA2, '') IS NOT NULL)
                THEN REPLACE(L_BLOCK_SPA2, '\"', '')
                WHEN (NULLIF(L_BLOCK_COM2, '') IS NOT NULL)
                THEN REPLACE(L_BLOCK_COM2, '\"', '')
                WHEN (NULLIF(L_BLOCK_ELSE2, '') IS NOT NULL AND INSTR(L_BLOCK_ELSE2, '\"') != 0)
                THEN REPLACE(L_BLOCK_ELSE2, '\"', '')
                WHEN (NULLIF(L_BLOCK_ELSE2, '') IS NOT NULL AND INSTR(L_BLOCK_ELSE2, '\"') = 0)
                THEN L_BLOCK_ELSE2
                ELSE NULL
            END AS L_BLOCK2_2,
            CASE 
                WHEN (NULLIF(L_BLOCK_SEMI3, '') IS NOT NULL)
                THEN REPLACE(L_BLOCK_SEMI3, '\"', '')
                WHEN (NULLIF(L_BLOCK_SPA3, '') IS NOT NULL)
                THEN REPLACE(L_BLOCK_SPA3, '\"', '')
                WHEN (NULLIF(L_BLOCK_COM3, '') IS NOT NULL)
                THEN REPLACE(L_BLOCK_COM3, '\"', '')
                WHEN (NULLIF(L_BLOCK_ELSE3, '') IS NOT NULL AND INSTR(L_BLOCK_ELSE3, '\"') != 0)
                THEN REPLACE(L_BLOCK_ELSE3, '\"', '')
                WHEN (NULLIF(L_BLOCK_ELSE3, '') IS NOT NULL AND INSTR(L_BLOCK_ELSE3, '\"') = 0)
                THEN L_BLOCK_ELSE3
                ELSE NULL
            END AS L_BLOCK3_2,
            CASE 
                WHEN (NULLIF(L_BLOCK_SEMI4, '') IS NOT NULL)
                THEN REPLACE(L_BLOCK_SEMI4, '\"', '')
                WHEN (NULLIF(L_BLOCK_SPA4, '') IS NOT NULL)
                THEN REPLACE(L_BLOCK_SPA4, '\"', '')
                WHEN (NULLIF(L_BLOCK_COM4, '') IS NOT NULL)
                THEN REPLACE(L_BLOCK_COM4, '\"', '')
                WHEN (NULLIF(L_BLOCK_ELSE4, '') IS NOT NULL AND INSTR(L_BLOCK_ELSE4, '\"') != 0)
                THEN REPLACE(L_BLOCK_ELSE4, '\"', '')
                WHEN (NULLIF(L_BLOCK_ELSE4, '') IS NOT NULL AND INSTR(L_BLOCK_ELSE4, '\"') = 0)
                THEN L_BLOCK_ELSE4
                ELSE NULL
            END AS L_BLOCK4_2,
            CASE 
                WHEN (NULLIF(L_BLOCK_SEMI5, '') IS NOT NULL)
                THEN REPLACE(L_BLOCK_SEMI5, '\"', '')
                WHEN (NULLIF(L_BLOCK_SPA5, '') IS NOT NULL)
                THEN REPLACE(L_BLOCK_SPA5, '\"', '')
                WHEN (NULLIF(L_BLOCK_COM5, '') IS NOT NULL)
                THEN REPLACE(L_BLOCK_COM5, '\"', '')
                WHEN (NULLIF(L_BLOCK_ELSE5, '') IS NOT NULL AND INSTR(L_BLOCK_ELSE5, '\"') != 0)
                THEN REPLACE(L_BLOCK_ELSE5, '\"', '')
                WHEN (NULLIF(L_BLOCK_ELSE5, '') IS NOT NULL AND INSTR(L_BLOCK_ELSE5, '\"') = 0)
                THEN L_BLOCK_ELSE5
                ELSE NULL
            END AS L_BLOCK5_2,
            CASE 
                WHEN (NULLIF(L_BLOCK_SEMI6, '') IS NOT NULL)
                THEN REPLACE(L_BLOCK_SEMI6, '\"', '')
                WHEN (NULLIF(L_BLOCK_SPA6, '') IS NOT NULL)
                THEN REPLACE(L_BLOCK_SPA6, '\"', '')
                WHEN (NULLIF(L_BLOCK_COM6, '') IS NOT NULL)
                THEN REPLACE(L_BLOCK_COM6, '\"', '')
                WHEN (NULLIF(L_BLOCK_ELSE6, '') IS NOT NULL AND INSTR(L_BLOCK_ELSE6, '\"') != 0)
                THEN REPLACE(L_BLOCK_ELSE6, '\"', '')
                WHEN (NULLIF(L_BLOCK_ELSE6, '') IS NOT NULL AND INSTR(L_BLOCK_ELSE6, '\"') = 0)
                THEN L_BLOCK_ELSE6
                ELSE NULL
            END AS L_BLOCK6_2,
            CASE 
                WHEN (NULLIF(L_BLOCK_SEMI7, '') IS NOT NULL)
                THEN REPLACE(L_BLOCK_SEMI7, '\"', '')
                WHEN (NULLIF(L_BLOCK_SPA7, '') IS NOT NULL)
                THEN REPLACE(L_BLOCK_SPA7, '\"', '')
                WHEN (NULLIF(L_BLOCK_COM7, '') IS NOT NULL)
                THEN REPLACE(L_BLOCK_COM7, '\"', '')
                ELSE NULL
            END AS L_BLOCK7_2,
            CASE 
                WHEN (NULLIF(L_BLOCK_SEMI8, '') IS NOT NULL)
                THEN REPLACE(L_BLOCK_SEMI8, '\"', '')
                WHEN (NULLIF(L_BLOCK_SPA8, '') IS NOT NULL)
                THEN REPLACE(L_BLOCK_SPA8, '\"', '')
                WHEN (NULLIF(L_BLOCK_COM8, '') IS NOT NULL)
                THEN REPLACE(L_BLOCK_COM8, '\"', '')
                WHEN (NULLIF(L_BLOCK_ELSE8, '') IS NOT NULL AND INSTR(L_BLOCK_ELSE8, '\"') != 0)
                THEN REPLACE(L_BLOCK_ELSE8, '\"', '')
                WHEN (NULLIF(L_BLOCK_ELSE8, '') IS NOT NULL AND INSTR(L_BLOCK_ELSE8, '\"') = 0)
                THEN L_BLOCK_ELSE8
                ELSE NULL
            END AS L_BLOCK8_2,
            CASE 
                WHEN (NULLIF(L_BLOCK_SEMI9, '') IS NOT NULL)
                THEN REPLACE(L_BLOCK_SEMI9, '\"', '')
                WHEN (NULLIF(L_BLOCK_SPA9, '') IS NOT NULL)
                THEN REPLACE(L_BLOCK_SPA9, '\"', '')
                WHEN (NULLIF(L_BLOCK_COM9, '') IS NOT NULL)
                THEN REPLACE(L_BLOCK_COM9, '\"', '')
                ELSE NULL
            END AS L_BLOCK9_2,
            CASE 
                WHEN (NULLIF(L_BLOCK_SEMI10, '') IS NOT NULL)
                THEN REPLACE(L_BLOCK_SEMI10, '\"', '')
                WHEN (NULLIF(L_BLOCK_SPA10, '') IS NOT NULL)
                THEN REPLACE(L_BLOCK_SPA10, '\"', '')
                WHEN (NULLIF(L_BLOCK_COM10, '') IS NOT NULL)
                THEN REPLACE(L_BLOCK_COM10, '\"', '')
                ELSE NULL
            END AS L_BLOCK10_2,
            CASE 
                WHEN (NULLIF(L_BLOCK_SEMI11, '') IS NOT NULL)
                THEN REPLACE(L_BLOCK_SEMI11, '\"', '')
                WHEN (NULLIF(L_BLOCK_SPA11, '') IS NOT NULL)
                THEN REPLACE(L_BLOCK_SPA11, '\"', '')
                WHEN (NULLIF(L_BLOCK_COM11, '') IS NOT NULL)
                THEN REPLACE(L_BLOCK_COM11, '\"', '')
                ELSE NULL
            END AS L_BLOCK11_2
        FROM(
            SELECT *,
                CASE 
                    WHEN (NULLIF(L_BLOCK1_ELSE, '') IS NOT NULL AND INSTR(L_BLOCK1_ELSE, ';') = 0 AND INSTR(L_BLOCK1_ELSE, 'Slide key') = 0)
                    THEN 'No Label'
                    WHEN (NULLIF(L_BLOCK1_ELSE, '') IS NOT NULL AND INSTR(L_BLOCK1_ELSE, ';') != 0 AND INSTR(L_BLOCK1_ELSE, '\",') != 0 AND INSTR(L_BLOCK1_ELSE, 'Slide key') = 0)
                    THEN REPLACE(SUBSTR(L_BLOCK1_ELSE, INSTR(L_BLOCK1_ELSE, ' \"')), SUBSTR(L_BLOCK1_ELSE, INSTR(L_BLOCK1_ELSE, '\",')), '')
                    WHEN (NULLIF(L_BLOCK1_ELSE, '') IS NOT NULL AND INSTR(L_BLOCK1_ELSE, 'no label') != 0 AND INSTR(L_BLOCK1_ELSE, 'Slide key') = 0)
                    THEN 'No Label'
                    ELSE NULL
                END AS L_BLOCK_ELSE1,
                CASE 
                    WHEN (NULLIF(L_BLOCK1_ELSE, '') IS NOT NULL AND INSTR(L_BLOCK1_ELSE, 'Slide key') != 0)
                    THEN SUBSTR(L_BLOCK1_ELSE, INSTR(L_BLOCK1_ELSE, 'Slide key'))
                    ELSE NULL
                END AS L_BLOCK_ELSE_SLIDE1,
                CASE 
                    WHEN (NULLIF(L_BLOCK2_ELSE, '') IS NOT NULL AND INSTR(L_BLOCK2_ELSE, ';') != 0 AND INSTR(L_BLOCK2_ELSE, '\",') != 0 AND INSTR(L_BLOCK2_ELSE, 'Slide key') = 0)
                    THEN REPLACE(SUBSTR(L_BLOCK2_ELSE, INSTR(L_BLOCK2_ELSE, ' \"')), SUBSTR(L_BLOCK2_ELSE, INSTR(L_BLOCK2_ELSE, '\",')), '')
                    WHEN (NULLIF(L_BLOCK2_ELSE, '') IS NOT NULL AND INSTR(L_BLOCK2_ELSE, '\"') = 0 AND INSTR(L_BLOCK2_ELSE, 'Slide key') = 0)
                    THEN REPLACE(SUBSTR(L_BLOCK2_ELSE, REGEXP_INSTR(L_BLOCK2_ELSE, '[0-9]')), SUBSTR(L_BLOCK2_ELSE, INSTR(L_BLOCK2_ELSE, ';')), '')
                    ELSE NULL
                END AS L_BLOCK_ELSE2,
                CASE 
                    WHEN (NULLIF(L_BLOCK2_ELSE, '') IS NOT NULL AND INSTR(L_BLOCK2_ELSE, 'Slide key') != 0)
                    THEN SUBSTR(L_BLOCK2_ELSE, INSTR(L_BLOCK2_ELSE, 'Slide key'))
                    ELSE NULL
                END AS L_BLOCK_ELSE_SLIDE2,
                CASE 
                    WHEN (NULLIF(L_BLOCK3_ELSE, '') IS NOT NULL AND INSTR(L_BLOCK3_ELSE, ';') = 0 AND INSTR(L_BLOCK3_ELSE, 'Slide key') = 0)
                    THEN 'No Label'
                    WHEN (NULLIF(L_BLOCK3_ELSE, '') IS NOT NULL AND INSTR(L_BLOCK3_ELSE, ';') != 0 AND INSTR(L_BLOCK3_ELSE, '\",') != 0 AND INSTR(L_BLOCK3_ELSE, 'Slide key') = 0)
                    THEN REPLACE(SUBSTR(L_BLOCK3_ELSE, INSTR(L_BLOCK3_ELSE, ' \"')), SUBSTR(L_BLOCK3_ELSE, INSTR(L_BLOCK3_ELSE, '\",')), '')
                    WHEN (NULLIF(L_BLOCK3_ELSE, '') IS NOT NULL AND INSTR(L_BLOCK3_ELSE, ';') != 0 AND INSTR(L_BLOCK3_ELSE, '\";') != 0 AND INSTR(L_BLOCK3_ELSE, 'Slide key') = 0)
                    THEN REPLACE(SUBSTR(L_BLOCK3_ELSE, INSTR(L_BLOCK3_ELSE, ' \"')), SUBSTR(L_BLOCK3_ELSE, INSTR(L_BLOCK3_ELSE, '\";')), '')
                    WHEN (NULLIF(L_BLOCK3_ELSE, '') IS NOT NULL AND INSTR(L_BLOCK3_ELSE, '\"') = 0 AND INSTR(L_BLOCK3_ELSE, 'Slide key') = 0)
                    THEN REPLACE(SUBSTR(L_BLOCK3_ELSE, REGEXP_INSTR(L_BLOCK3_ELSE, '[0-9]')), SUBSTR(L_BLOCK3_ELSE, INSTR(L_BLOCK3_ELSE, ';')), '')
                    ELSE NULL
                END AS L_BLOCK_ELSE3,
                CASE 
                    WHEN (NULLIF(L_BLOCK3_ELSE, '') IS NOT NULL AND INSTR(L_BLOCK3_ELSE, 'Slide key') != 0)
                    THEN SUBSTR(L_BLOCK3_ELSE, INSTR(L_BLOCK3_ELSE, 'Slide key'))
                    ELSE NULL
                END AS L_BLOCK_ELSE_SLIDE3,
                CASE 
                    WHEN (NULLIF(L_BLOCK4_ELSE, '') IS NOT NULL AND INSTR(L_BLOCK4_ELSE, ';') = 0 AND INSTR(L_BLOCK4_ELSE, 'Slide key') = 0)
                    THEN 'No Label'
                    WHEN (NULLIF(L_BLOCK4_ELSE, '') IS NOT NULL AND INSTR(L_BLOCK4_ELSE, 'Slide key') != 0 AND INSTR(L_BLOCK4_ELSE, 'Slide key') = 0)
                    THEN SUBSTR(L_BLOCK4_ELSE, INSTR(L_BLOCK4_ELSE, 'Slide key'))
                    WHEN (NULLIF(L_BLOCK4_ELSE, '') IS NOT NULL AND INSTR(L_BLOCK4_ELSE, ';') != 0 AND INSTR(L_BLOCK4_ELSE, '\";') != 0 AND INSTR(L_BLOCK4_ELSE, 'Slide key') = 0)
                    THEN REPLACE(SUBSTR(L_BLOCK4_ELSE, INSTR(L_BLOCK4_ELSE, ' \"')), SUBSTR(L_BLOCK4_ELSE, INSTR(L_BLOCK4_ELSE, '\";')), '')
                    WHEN (NULLIF(L_BLOCK4_ELSE, '') IS NOT NULL AND INSTR(L_BLOCK4_ELSE, '\"') = 0 AND INSTR(L_BLOCK4_ELSE, 'Slide key') = 0)
                    THEN REPLACE(SUBSTR(L_BLOCK4_ELSE, REGEXP_INSTR(L_BLOCK4_ELSE, '[0-9]')), SUBSTR(L_BLOCK4_ELSE, INSTR(L_BLOCK4_ELSE, ';')), '')
                    ELSE NULL
                END AS L_BLOCK_ELSE4,
                CASE 
                    WHEN (NULLIF(L_BLOCK4_ELSE, '') IS NOT NULL AND INSTR(L_BLOCK4_ELSE, 'Slide key') != 0)
                    THEN SUBSTR(L_BLOCK4_ELSE, INSTR(L_BLOCK4_ELSE, 'Slide key'))
                    ELSE NULL
                END AS L_BLOCK_ELSE_SLIDE4,
                CASE 
                    WHEN (NULLIF(L_BLOCK5_ELSE, '') IS NOT NULL AND INSTR(L_BLOCK5_ELSE, ';') = 0 AND INSTR(L_BLOCK5_ELSE, 'Slide key') = 0)
                    THEN 'No Label'
                    WHEN (NULLIF(L_BLOCK5_ELSE, '') IS NOT NULL AND INSTR(L_BLOCK5_ELSE, ';') != 0 AND INSTR(L_BLOCK5_ELSE, '\",') != 0 AND INSTR(L_BLOCK5_ELSE, 'Slide key') = 0)
                    THEN REPLACE(SUBSTR(L_BLOCK5_ELSE, INSTR(L_BLOCK5_ELSE, ' \"')), SUBSTR(L_BLOCK5_ELSE, INSTR(L_BLOCK5_ELSE, '\",')), '')
                    WHEN (NULLIF(L_BLOCK5_ELSE, '') IS NOT NULL AND INSTR(L_BLOCK5_ELSE, '\"') = 0 AND INSTR(L_BLOCK5_ELSE, 'Slide key') = 0)
                    THEN REPLACE(SUBSTR(L_BLOCK5_ELSE, REGEXP_INSTR(L_BLOCK5_ELSE, '[0-9]')), SUBSTR(L_BLOCK5_ELSE, INSTR(L_BLOCK5_ELSE, ';')), '')
                    ELSE NULL
                END AS L_BLOCK_ELSE5,
                CASE 
                    WHEN (NULLIF(L_BLOCK5_ELSE, '') IS NOT NULL AND INSTR(L_BLOCK5_ELSE, 'Slide key') != 0)
                    THEN SUBSTR(L_BLOCK5_ELSE, INSTR(L_BLOCK5_ELSE, 'Slide key'))
                    ELSE NULL
                END AS L_BLOCK_ELSE_SLIDE5,
                CASE 
                    WHEN (NULLIF(L_BLOCK6_ELSE, '') IS NOT NULL AND INSTR(L_BLOCK6_ELSE, ';') != 0 AND INSTR(L_BLOCK6_ELSE, 'Slide key') = 0)
                    THEN 'No Label'
                    ELSE NULL
                END AS L_BLOCK_ELSE6,
                CASE 
                    WHEN (NULLIF(L_BLOCK6_ELSE, '') IS NOT NULL AND INSTR(L_BLOCK6_ELSE, 'Slide key') != 0)
                    THEN SUBSTR(L_BLOCK6_ELSE, INSTR(L_BLOCK6_ELSE, 'Slide key'))
                    ELSE NULL
                END AS L_BLOCK_ELSE_SLIDE6,
                CASE 
                    WHEN (NULLIF(L_BLOCK8_ELSE, '') IS NOT NULL AND INSTR(L_BLOCK8_ELSE, 'no label') != 0 AND INSTR(L_BLOCK8_ELSE, 'Slide key') = 0)
                    THEN 'No Label'
                    ELSE NULL
                END AS L_BLOCK_ELSE8,
                CASE 
                    WHEN (NULLIF(L_BLOCK8_ELSE, '') IS NOT NULL AND INSTR(L_BLOCK8_ELSE, 'Slide key') != 0)
                    THEN SUBSTR(L_BLOCK8_ELSE, INSTR(L_BLOCK8_ELSE, 'Slide key'))
                    ELSE NULL
                END AS L_BLOCK_ELSE_SLIDE8
            FROM(
                SELECT *,
                    CASE 
                        WHEN (NULLIF(L_BLOCK_SEMI1_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SEMI1_2, '') IS NOT NULL)
                        THEN REPLACE(L_BLOCK_SEMI1_1, L_BLOCK_SEMI1_2, '')
                        ELSE NULL
                    END AS L_BLOCK_SEMI1,
                    CASE 
                        WHEN (NULLIF(L_BLOCK_SEMI2_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SEMI2_2, '') IS NOT NULL)
                        THEN REPLACE(L_BLOCK_SEMI2_1, L_BLOCK_SEMI2_2, '')
                        ELSE NULL
                    END AS L_BLOCK_SEMI2,
                    CASE 
                        WHEN (NULLIF(L_BLOCK_SEMI3_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SEMI3_2, '') IS NOT NULL)
                        THEN REPLACE(L_BLOCK_SEMI3_1, L_BLOCK_SEMI3_2, '')
                        ELSE NULL
                    END AS L_BLOCK_SEMI3,
                    CASE 
                        WHEN (NULLIF(L_BLOCK_SEMI4_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SEMI4_2, '') IS NOT NULL)
                        THEN REPLACE(L_BLOCK_SEMI4_1, L_BLOCK_SEMI4_2, '')
                        ELSE NULL
                    END AS L_BLOCK_SEMI4,
                    CASE 
                        WHEN (NULLIF(L_BLOCK_SEMI5_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SEMI5_2, '') IS NOT NULL)
                        THEN REPLACE(L_BLOCK_SEMI5_1, L_BLOCK_SEMI5_2, '')
                        ELSE NULL
                    END AS L_BLOCK_SEMI5,
                    CASE 
                        WHEN (NULLIF(L_BLOCK_SEMI6_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SEMI6_2, '') IS NOT NULL)
                        THEN REPLACE(L_BLOCK_SEMI6_1, L_BLOCK_SEMI6_2, '')
                        ELSE NULL
                    END AS L_BLOCK_SEMI6,
                    CASE 
                        WHEN (NULLIF(L_BLOCK_SEMI7_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SEMI7_2, '') IS NOT NULL)
                        THEN REPLACE(L_BLOCK_SEMI7_1, L_BLOCK_SEMI7_2, '')
                        ELSE NULL
                    END AS L_BLOCK_SEMI7,
                    CASE 
                        WHEN (NULLIF(L_BLOCK_SEMI8_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SEMI8_2, '') IS NOT NULL)
                        THEN REPLACE(L_BLOCK_SEMI8_1, L_BLOCK_SEMI8_2, '')
                        ELSE NULL
                    END AS L_BLOCK_SEMI8,
                    CASE 
                        WHEN (NULLIF(L_BLOCK_SEMI9_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SEMI9_2, '') IS NOT NULL)
                        THEN REPLACE(L_BLOCK_SEMI9_1, L_BLOCK_SEMI9_2, '')
                        ELSE NULL
                    END AS L_BLOCK_SEMI9,
                    CASE 
                        WHEN (NULLIF(L_BLOCK_SEMI10_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SEMI10_2, '') IS NOT NULL)
                        THEN REPLACE(L_BLOCK_SEMI10_1, L_BLOCK_SEMI10_2, '')
                        ELSE NULL
                    END AS L_BLOCK_SEMI10,
                    CASE 
                        WHEN (NULLIF(L_BLOCK_SEMI11_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SEMI11_2, '') IS NOT NULL)
                        THEN REPLACE(L_BLOCK_SEMI11_1, L_BLOCK_SEMI11_2, '')
                        ELSE NULL
                    END AS L_BLOCK_SEMI11
                FROM(
                    SELECT *,
                        CASE 
                            WHEN (NULLIF(L_BLOCK_SPA1_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SPA1_2, '') IS NOT NULL)
                            THEN REPLACE(L_BLOCK_SPA1_1, L_BLOCK_SPA1_2, '')
                            ELSE NULL
                        END AS L_BLOCK_SPA1,
                        CASE 
                            WHEN (NULLIF(L_BLOCK_SPA2_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SPA2_2, '') IS NOT NULL)
                            THEN REPLACE(L_BLOCK_SPA2_1, L_BLOCK_SPA2_2, '')
                            ELSE NULL
                        END AS L_BLOCK_SPA2,
                        CASE 
                            WHEN (NULLIF(L_BLOCK_SPA3_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SPA3_2, '') IS NOT NULL)
                            THEN REPLACE(L_BLOCK_SPA3_1, L_BLOCK_SPA3_2, '')
                            ELSE NULL
                        END AS L_BLOCK_SPA3,
                        CASE 
                            WHEN (NULLIF(L_BLOCK_SPA4_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SPA4_2, '') IS NOT NULL)
                            THEN REPLACE(L_BLOCK_SPA4_1, L_BLOCK_SPA4_2, '')
                            ELSE NULL
                        END AS L_BLOCK_SPA4,
                        CASE 
                            WHEN (NULLIF(L_BLOCK_SPA5_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SPA5_2, '') IS NOT NULL)
                            THEN REPLACE(L_BLOCK_SPA5_1, L_BLOCK_SPA5_2, '')
                            ELSE NULL
                        END AS L_BLOCK_SPA5,
                        CASE 
                            WHEN (NULLIF(L_BLOCK_SPA6_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SPA6_2, '') IS NOT NULL)
                            THEN REPLACE(L_BLOCK_SPA6_1, L_BLOCK_SPA6_2, '')
                            ELSE NULL
                        END AS L_BLOCK_SPA6,
                        CASE 
                            WHEN (NULLIF(L_BLOCK_SPA7_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SPA7_2, '') IS NOT NULL)
                            THEN REPLACE(L_BLOCK_SPA7_1, L_BLOCK_SPA7_2, '')
                            ELSE NULL
                        END AS L_BLOCK_SPA7,
                        CASE 
                            WHEN (NULLIF(L_BLOCK_SPA8_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SPA8_2, '') IS NOT NULL)
                            THEN REPLACE(L_BLOCK_SPA8_1, L_BLOCK_SPA8_2, '')
                            ELSE NULL
                        END AS L_BLOCK_SPA8,
                        CASE 
                            WHEN (NULLIF(L_BLOCK_SPA9_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SPA9_2, '') IS NOT NULL)
                            THEN REPLACE(L_BLOCK_SPA9_1, L_BLOCK_SPA9_2, '')
                            ELSE NULL
                        END AS L_BLOCK_SPA9,
                        CASE 
                            WHEN (NULLIF(L_BLOCK_SPA10_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SPA10_2, '') IS NOT NULL)
                            THEN REPLACE(L_BLOCK_SPA10_1, L_BLOCK_SPA10_2, '')
                            ELSE NULL
                        END AS L_BLOCK_SPA10,
                        CASE 
                            WHEN (NULLIF(L_BLOCK_SPA11_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SPA11_2, '') IS NOT NULL)
                            THEN REPLACE(L_BLOCK_SPA11_1, L_BLOCK_SPA11_2, '')
                            ELSE NULL
                        END AS L_BLOCK_SPA11
                    FROM(
                        SELECT *,
                            CASE 
                                WHEN (NULLIF(L_BLOCK_COM1_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM1_2, '') IS NOT NULL)
                                THEN REPLACE(L_BLOCK_COM1_1, L_BLOCK_COM1_2, '')
                                ELSE NULL
                            END AS L_BLOCK_COM1,
                            CASE 
                                WHEN (NULLIF(L_BLOCK_COM2_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM2_2, '') IS NOT NULL)
                                THEN REPLACE(L_BLOCK_COM2_1, L_BLOCK_COM2_2, '')
                                ELSE NULL
                            END AS L_BLOCK_COM2,
                            CASE 
                                WHEN (NULLIF(L_BLOCK_COM3_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM3_2, '') IS NOT NULL)
                                THEN REPLACE(L_BLOCK_COM3_1, L_BLOCK_COM3_2, '')
                                ELSE NULL
                            END AS L_BLOCK_COM3,
                            CASE 
                                WHEN (NULLIF(L_BLOCK_COM4_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM4_2, '') IS NOT NULL)
                                THEN REPLACE(L_BLOCK_COM4_1, L_BLOCK_COM4_2, '')
                                ELSE NULL
                            END AS L_BLOCK_COM4,
                            CASE 
                                WHEN (NULLIF(L_BLOCK_COM5_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM5_2, '') IS NOT NULL)
                                THEN REPLACE(L_BLOCK_COM5_1, L_BLOCK_COM5_2, '')
                                ELSE NULL
                            END AS L_BLOCK_COM5,
                            CASE 
                                WHEN (NULLIF(L_BLOCK_COM6_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM6_2, '') IS NOT NULL)
                                THEN REPLACE(L_BLOCK_COM6_1, L_BLOCK_COM6_2, '')
                                ELSE NULL
                            END AS L_BLOCK_COM6,
                            CASE 
                                WHEN (NULLIF(L_BLOCK_COM7_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM7_2, '') IS NOT NULL)
                                THEN REPLACE(L_BLOCK_COM7_1, L_BLOCK_COM7_2, '')
                                ELSE NULL
                            END AS L_BLOCK_COM7,
                            CASE 
                                WHEN (NULLIF(L_BLOCK_COM8_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM8_2, '') IS NOT NULL)
                                THEN REPLACE(L_BLOCK_COM8_1, L_BLOCK_COM8_2, '')
                                ELSE NULL
                            END AS L_BLOCK_COM8,
                            CASE 
                                WHEN (NULLIF(L_BLOCK_COM9_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM9_2, '') IS NOT NULL)
                                THEN REPLACE(L_BLOCK_COM9_1, L_BLOCK_COM9_2, '')
                                ELSE NULL
                            END AS L_BLOCK_COM9,
                            CASE 
                                WHEN (NULLIF(L_BLOCK_COM10_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM10_2, '') IS NOT NULL)
                                THEN REPLACE(L_BLOCK_COM10_1, L_BLOCK_COM10_2, '')
                                ELSE NULL
                            END AS L_BLOCK_COM10,
                            CASE 
                                WHEN (NULLIF(L_BLOCK_COM11_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM11_2, '') IS NOT NULL)
                                THEN REPLACE(L_BLOCK_COM11_1, L_BLOCK_COM11_2, '')
                                ELSE NULL
                            END AS L_BLOCK_COM11
                        FROM(
                            SELECT *,
                                CASE 
                                    WHEN (NULLIF(L_BLOCK1_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SEMI1_1, '') IS NOT NULL AND INSTR(L_BLOCK1_1, '\";') != 0)
                                    THEN SUBSTR(L_BLOCK1_1, INSTR(L_BLOCK1_1, '\";'))
                                    WHEN (NULLIF(L_BLOCK1_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SEMI1_1, '') IS NOT NULL AND INSTR(L_BLOCK1_1, '\";') = 0)
                                    THEN SUBSTR(L_BLOCK1_1, INSTR(L_BLOCK1_1, ';') != 0)
                                    ELSE NULL
                                END AS L_BLOCK_SEMI1_2,
                                CASE 
                                    WHEN (NULLIF(L_BLOCK2_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SEMI2_1, '') IS NOT NULL AND INSTR(L_BLOCK2_1, '\";') != 0)
                                    THEN SUBSTR(L_BLOCK2_1, INSTR(L_BLOCK2_1, '\";'))
                                    WHEN (NULLIF(L_BLOCK2_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SEMI2_1, '') IS NOT NULL AND INSTR(L_BLOCK2_1, '\";') = 0)
                                    THEN SUBSTR(L_BLOCK2_1, INSTR(L_BLOCK2_1, ';') != 0)
                                    ELSE NULL
                                END AS L_BLOCK_SEMI2_2,
                                CASE 
                                    WHEN (NULLIF(L_BLOCK3_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SEMI3_1, '') IS NOT NULL AND INSTR(L_BLOCK3_1, '\";') != 0)
                                    THEN SUBSTR(L_BLOCK3_1, INSTR(L_BLOCK3_1, '\";'))
                                    WHEN (NULLIF(L_BLOCK3_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SEMI3_1, '') IS NOT NULL AND INSTR(L_BLOCK3_1, '\";') = 0)
                                    THEN SUBSTR(L_BLOCK3_1, INSTR(L_BLOCK3_1, ';') != 0)
                                    ELSE NULL
                                END AS L_BLOCK_SEMI3_2,
                                CASE 
                                    WHEN (NULLIF(L_BLOCK4_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SEMI4_1, '') IS NOT NULL AND INSTR(L_BLOCK4_1, '\";') != 0)
                                    THEN SUBSTR(L_BLOCK4_1, INSTR(L_BLOCK4_1, '\";'))
                                    WHEN (NULLIF(L_BLOCK4_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SEMI4_1, '') IS NOT NULL AND INSTR(L_BLOCK4_1, '\";') = 0)
                                    THEN SUBSTR(L_BLOCK4_1, INSTR(L_BLOCK4_1, ';') != 0)
                                    ELSE NULL
                                END AS L_BLOCK_SEMI4_2,
                                CASE 
                                    WHEN (NULLIF(L_BLOCK5_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SEMI5_1, '') IS NOT NULL AND INSTR(L_BLOCK5_1, '\";') != 0)
                                    THEN SUBSTR(L_BLOCK5_1, INSTR(L_BLOCK5_1, '\";'))
                                    WHEN (NULLIF(L_BLOCK5_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SEMI5_1, '') IS NOT NULL AND INSTR(L_BLOCK5_1, '\";') = 0)
                                    THEN SUBSTR(L_BLOCK5_1, INSTR(L_BLOCK5_1, ';') != 0)
                                    ELSE NULL
                                END AS L_BLOCK_SEMI5_2,
                                CASE 
                                    WHEN (NULLIF(L_BLOCK6_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SEMI6_1, '') IS NOT NULL AND INSTR(L_BLOCK6_1, '\";') != 0)
                                    THEN SUBSTR(L_BLOCK6_1, INSTR(L_BLOCK6_1, '\";'))
                                    WHEN (NULLIF(L_BLOCK6_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SEMI6_1, '') IS NOT NULL AND INSTR(L_BLOCK6_1, '\";') = 0)
                                    THEN SUBSTR(L_BLOCK6_1, INSTR(L_BLOCK6_1, ';') != 0)
                                    ELSE NULL
                                END AS L_BLOCK_SEMI6_2,
                                CASE 
                                    WHEN (NULLIF(L_BLOCK7_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SEMI7_1, '') IS NOT NULL AND INSTR(L_BLOCK7_1, '\";') != 0)
                                    THEN SUBSTR(L_BLOCK7_1, INSTR(L_BLOCK7_1, '\";'))
                                    WHEN (NULLIF(L_BLOCK7_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SEMI7_1, '') IS NOT NULL AND INSTR(L_BLOCK7_1, '\";') = 0)
                                    THEN SUBSTR(L_BLOCK7_1, INSTR(L_BLOCK7_1, ';') != 0)
                                    ELSE NULL
                                END AS L_BLOCK_SEMI7_2,
                                CASE 
                                    WHEN (NULLIF(L_BLOCK8_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SEMI8_1, '') IS NOT NULL AND INSTR(L_BLOCK8_1, '\";') != 0)
                                    THEN SUBSTR(L_BLOCK8_1, INSTR(L_BLOCK8_1, '\";'))
                                    WHEN (NULLIF(L_BLOCK8_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SEMI8_1, '') IS NOT NULL AND INSTR(L_BLOCK8_1, '\";') = 0)
                                    THEN SUBSTR(L_BLOCK8_1, INSTR(L_BLOCK8_1, ';') != 0)
                                    ELSE NULL
                                END AS L_BLOCK_SEMI8_2,
                                CASE 
                                    WHEN (NULLIF(L_BLOCK9_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SEMI9_1, '') IS NOT NULL AND INSTR(L_BLOCK9_1, '\";') != 0)
                                    THEN SUBSTR(L_BLOCK9_1, INSTR(L_BLOCK9_1, '\";'))
                                    WHEN (NULLIF(L_BLOCK9_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SEMI9_1, '') IS NOT NULL AND INSTR(L_BLOCK9_1, '\";') = 0)
                                    THEN SUBSTR(L_BLOCK9_1, INSTR(L_BLOCK9_1, ';') != 0)
                                    ELSE NULL
                                END AS L_BLOCK_SEMI9_2,
                                CASE 
                                    WHEN (NULLIF(L_BLOCK10_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SEMI10_1, '') IS NOT NULL AND INSTR(L_BLOCK10_1, '\";') != 0)
                                    THEN SUBSTR(L_BLOCK10_1, INSTR(L_BLOCK10_1, '\";'))
                                    WHEN (NULLIF(L_BLOCK10_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SEMI10_1, '') IS NOT NULL AND INSTR(L_BLOCK10_1, '\";') = 0)
                                    THEN SUBSTR(L_BLOCK10_1, INSTR(L_BLOCK10_1, ';') != 0)
                                    ELSE NULL
                                END AS L_BLOCK_SEMI10_2,
                                CASE 
                                    WHEN (NULLIF(L_BLOCK11_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SEMI11_1, '') IS NOT NULL AND INSTR(L_BLOCK11_1, '\";') != 0)
                                    THEN SUBSTR(L_BLOCK11_1, INSTR(L_BLOCK11_1, '\";'))
                                    WHEN (NULLIF(L_BLOCK11_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SEMI11_1, '') IS NOT NULL AND INSTR(L_BLOCK11_1, '\";') = 0)
                                    THEN SUBSTR(L_BLOCK11_1, INSTR(L_BLOCK11_1, ';') != 0)
                                    ELSE NULL
                                END AS L_BLOCK_SEMI11_2
                            FROM(
                                SELECT *,
                                    CASE 
                                        WHEN (NULLIF(L_BLOCK1_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SPA1_1, '') IS NOT NULL)
                                        THEN SUBSTR(L_BLOCK1_1, INSTR(L_BLOCK1_1, '\" '))
                                        ELSE NULL
                                    END AS L_BLOCK_SPA1_2,
                                    CASE 
                                        WHEN (NULLIF(L_BLOCK2_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SPA2_1, '') IS NOT NULL)
                                        THEN SUBSTR(L_BLOCK2_1, INSTR(L_BLOCK2_1, '\" '))
                                        ELSE NULL
                                    END AS L_BLOCK_SPA2_2,
                                    CASE 
                                        WHEN (NULLIF(L_BLOCK3_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SPA3_1, '') IS NOT NULL)
                                        THEN SUBSTR(L_BLOCK3_1, INSTR(L_BLOCK3_1, '\" '))
                                        ELSE NULL
                                    END AS L_BLOCK_SPA3_2,
                                    CASE 
                                        WHEN (NULLIF(L_BLOCK4_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SPA4_1, '') IS NOT NULL)
                                        THEN SUBSTR(L_BLOCK4_1, INSTR(L_BLOCK4_1, '\" '))
                                        ELSE NULL
                                    END AS L_BLOCK_SPA4_2,
                                    CASE 
                                        WHEN (NULLIF(L_BLOCK5_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SPA5_1, '') IS NOT NULL)
                                        THEN SUBSTR(L_BLOCK5_1, INSTR(L_BLOCK5_1, '\" '))
                                        ELSE NULL
                                    END AS L_BLOCK_SPA5_2,
                                    CASE 
                                        WHEN (NULLIF(L_BLOCK6_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SPA6_1, '') IS NOT NULL)
                                        THEN SUBSTR(L_BLOCK6_1, INSTR(L_BLOCK6_1, '\" '))
                                        ELSE NULL
                                    END AS L_BLOCK_SPA6_2,
                                    CASE 
                                        WHEN (NULLIF(L_BLOCK7_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SPA7_1, '') IS NOT NULL)
                                        THEN SUBSTR(L_BLOCK7_1, INSTR(L_BLOCK7_1, '\" '))
                                        ELSE NULL
                                    END AS L_BLOCK_SPA7_2,
                                    CASE 
                                        WHEN (NULLIF(L_BLOCK8_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SPA8_1, '') IS NOT NULL)
                                        THEN SUBSTR(L_BLOCK8_1, INSTR(L_BLOCK8_1, '\" '))
                                        ELSE NULL
                                    END AS L_BLOCK_SPA8_2,
                                    CASE 
                                        WHEN (NULLIF(L_BLOCK9_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SPA9_1, '') IS NOT NULL)
                                        THEN SUBSTR(L_BLOCK9_1, INSTR(L_BLOCK9_1, '\" '))
                                        ELSE NULL
                                    END AS L_BLOCK_SPA9_2,
                                    CASE 
                                        WHEN (NULLIF(L_BLOCK10_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SPA10_1, '') IS NOT NULL)
                                        THEN SUBSTR(L_BLOCK10_1, INSTR(L_BLOCK10_1, '\" '))
                                        ELSE NULL
                                    END AS L_BLOCK_SPA10_2,
                                    CASE 
                                        WHEN (NULLIF(L_BLOCK11_1, '') IS NOT NULL AND NULLIF(L_BLOCK_SPA11_1, '') IS NOT NULL)
                                        THEN SUBSTR(L_BLOCK11_1, INSTR(L_BLOCK11_1, '\" '))
                                        ELSE NULL
                                    END AS L_BLOCK_SPA11_2
                                FROM(
                                    SELECT *,
                                        CASE 
                                            WHEN (NULLIF(L_BLOCK1_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM1_1, '') IS NOT NULL)
                                            THEN SUBSTR(L_BLOCK1_1, INSTR(L_BLOCK1_1, '\",'))
                                            ELSE NULL
                                        END AS L_BLOCK_COM1_2,
                                        CASE 
                                            WHEN (NULLIF(L_BLOCK2_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM2_1, '') IS NOT NULL)
                                            THEN SUBSTR(L_BLOCK2_1, INSTR(L_BLOCK2_1, '\",'))
                                            ELSE NULL
                                        END AS L_BLOCK_COM2_2,
                                        CASE 
                                            WHEN (NULLIF(L_BLOCK3_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM3_1, '') IS NOT NULL)
                                            THEN SUBSTR(L_BLOCK3_1, INSTR(L_BLOCK3_1, '\",'))
                                            ELSE NULL
                                        END AS L_BLOCK_COM3_2,
                                        CASE 
                                            WHEN (NULLIF(L_BLOCK4_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM4_1, '') IS NOT NULL)
                                            THEN SUBSTR(L_BLOCK4_1, INSTR(L_BLOCK4_1, '\",'))
                                            ELSE NULL
                                        END AS L_BLOCK_COM4_2,
                                        CASE 
                                            WHEN (NULLIF(L_BLOCK5_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM5_1, '') IS NOT NULL)
                                            THEN SUBSTR(L_BLOCK5_1, INSTR(L_BLOCK5_1, '\",'))
                                            ELSE NULL
                                        END AS L_BLOCK_COM5_2,
                                        CASE 
                                            WHEN (NULLIF(L_BLOCK6_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM6_1, '') IS NOT NULL)
                                            THEN SUBSTR(L_BLOCK6_1, INSTR(L_BLOCK6_1, '\",'))
                                            ELSE NULL
                                        END AS L_BLOCK_COM6_2,
                                        CASE 
                                            WHEN (NULLIF(L_BLOCK7_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM7_1, '') IS NOT NULL)
                                            THEN SUBSTR(L_BLOCK7_1, INSTR(L_BLOCK7_1, '\",'))
                                            ELSE NULL
                                        END AS L_BLOCK_COM7_2,
                                        CASE 
                                            WHEN (NULLIF(L_BLOCK8_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM8_1, '') IS NOT NULL)
                                            THEN SUBSTR(L_BLOCK8_1, INSTR(L_BLOCK8_1, '\",'))
                                            ELSE NULL
                                        END AS L_BLOCK_COM8_2,
                                        CASE 
                                            WHEN (NULLIF(L_BLOCK9_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM9_1, '') IS NOT NULL)
                                            THEN SUBSTR(L_BLOCK9_1, INSTR(L_BLOCK9_1, '\",'))
                                            ELSE NULL
                                        END AS L_BLOCK_COM9_2,
                                        CASE 
                                            WHEN (NULLIF(L_BLOCK10_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM10_1, '') IS NOT NULL)
                                            THEN SUBSTR(L_BLOCK10_1, INSTR(L_BLOCK10_1, '\",'))
                                            ELSE NULL
                                        END AS L_BLOCK_COM10_2,
                                        CASE 
                                            WHEN (NULLIF(L_BLOCK11_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM11_1, '') IS NOT NULL)
                                            THEN SUBSTR(L_BLOCK11_1, INSTR(L_BLOCK11_1, '\",'))
                                            ELSE NULL
                                        END AS L_BLOCK_COM11_2
                                    FROM(
                                        SELECT *,
                                            CASE 
                                                WHEN (NULLIF(L_BLOCK1_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM1_1, '') IS NULL AND NULLIF(L_BLOCK_SPA1_1, '') IS NULL AND INSTR(L_BLOCK1_1, '\";') != 0 AND INSTR(L_BLOCK1_1, 'Slide key') = 0)
                                                THEN SUBSTR(L_BLOCK1_1, INSTR(L_BLOCK1_1, ' \"'))
                                                ELSE NULL
                                            END AS L_BLOCK_SEMI1_1,
                                            CASE 
                                                WHEN (NULLIF(L_BLOCK2_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM2_1, '') IS NULL AND NULLIF(L_BLOCK_SPA2_1, '') IS NULL AND INSTR(L_BLOCK2_1, '\";') != 0 AND INSTR(L_BLOCK2_1, 'Slide key') = 0)
                                                THEN SUBSTR(L_BLOCK2_1, INSTR(L_BLOCK2_1, ' \"'))
                                                ELSE NULL
                                            END AS L_BLOCK_SEMI2_1,
                                            CASE 
                                                WHEN (NULLIF(L_BLOCK3_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM3_1, '') IS NULL AND NULLIF(L_BLOCK_SPA3_1, '') IS NULL AND INSTR(L_BLOCK3_1, '\";') != 0 AND INSTR(L_BLOCK3_1, 'Slide key') = 0)
                                                THEN SUBSTR(L_BLOCK3_1, INSTR(L_BLOCK3_1, ' \"'))
                                                ELSE NULL
                                            END AS L_BLOCK_SEMI3_1,
                                            CASE 
                                                WHEN (NULLIF(L_BLOCK4_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM4_1, '') IS NULL AND NULLIF(L_BLOCK_SPA4_1, '') IS NULL AND INSTR(L_BLOCK4_1, '\";') != 0 AND INSTR(L_BLOCK4_1, 'Slide key') = 0)
                                                THEN SUBSTR(L_BLOCK4_1, INSTR(L_BLOCK4_1, ' \"'))
                                                ELSE NULL
                                            END AS L_BLOCK_SEMI4_1,
                                            CASE 
                                                WHEN (NULLIF(L_BLOCK5_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM5_1, '') IS NULL AND NULLIF(L_BLOCK_SPA5_1, '') IS NULL AND INSTR(L_BLOCK5_1, '\";') != 0 AND INSTR(L_BLOCK5_1, 'Slide key') = 0)
                                                THEN SUBSTR(L_BLOCK5_1, INSTR(L_BLOCK5_1, ' \"'))
                                                ELSE NULL
                                            END AS L_BLOCK_SEMI5_1,
                                            CASE 
                                                WHEN (NULLIF(L_BLOCK6_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM6_1, '') IS NULL AND NULLIF(L_BLOCK_SPA6_1, '') IS NULL AND INSTR(L_BLOCK6_1, '\";') != 0 AND INSTR(L_BLOCK6_1, 'Slide key') = 0)
                                                THEN SUBSTR(L_BLOCK6_1, INSTR(L_BLOCK6_1, ' \"'))
                                                ELSE NULL
                                            END AS L_BLOCK_SEMI6_1,
                                            CASE 
                                                WHEN (NULLIF(L_BLOCK7_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM7_1, '') IS NULL AND NULLIF(L_BLOCK_SPA7_1, '') IS NULL AND INSTR(L_BLOCK7_1, '\";') != 0 AND INSTR(L_BLOCK7_1, 'Slide key') = 0)
                                                THEN SUBSTR(L_BLOCK7_1, INSTR(L_BLOCK7_1, ' \"'))
                                                ELSE NULL
                                            END AS L_BLOCK_SEMI7_1,
                                            CASE 
                                                WHEN (NULLIF(L_BLOCK8_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM8_1, '') IS NULL AND NULLIF(L_BLOCK_SPA8_1, '') IS NULL AND INSTR(L_BLOCK8_1, '\";') != 0 AND INSTR(L_BLOCK8_1, 'Slide key') = 0)
                                                THEN SUBSTR(L_BLOCK8_1, INSTR(L_BLOCK8_1, ' \"'))
                                                ELSE NULL
                                            END AS L_BLOCK_SEMI8_1,
                                            CASE 
                                                WHEN (NULLIF(L_BLOCK9_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM9_1, '') IS NULL AND NULLIF(L_BLOCK_SPA9_1, '') IS NULL AND INSTR(L_BLOCK9_1, '\";') != 0 AND INSTR(L_BLOCK9_1, 'Slide key') = 0)
                                                THEN SUBSTR(L_BLOCK9_1, INSTR(L_BLOCK9_1, ' \"'))
                                                ELSE NULL
                                            END AS L_BLOCK_SEMI9_1,
                                            CASE 
                                                WHEN (NULLIF(L_BLOCK10_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM10_1, '') IS NULL AND NULLIF(L_BLOCK_SPA10_1, '') IS NULL AND INSTR(L_BLOCK10_1, '\";') != 0 AND INSTR(L_BLOCK10_1, 'Slide key') = 0)
                                                THEN SUBSTR(L_BLOCK10_1, INSTR(L_BLOCK10_1, ' \"'))
                                                ELSE NULL
                                            END AS L_BLOCK_SEMI10_1,
                                            CASE 
                                                WHEN (NULLIF(L_BLOCK11_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM11_1, '') IS NULL AND NULLIF(L_BLOCK_SPA11_1, '') IS NULL AND INSTR(L_BLOCK11_1, '\";') != 0 AND INSTR(L_BLOCK11_1, 'Slide key') = 0)
                                                THEN SUBSTR(L_BLOCK11_1, INSTR(L_BLOCK11_1, ' \"'))
                                                ELSE NULL
                                            END AS L_BLOCK_SEMI11_1
                                        FROM(
                                            SELECT *,
                                                CASE 
                                                    WHEN (NULLIF(L_BLOCK1_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM1_1, '') IS NULL AND INSTR(L_BLOCK1_1, '\" ') != 0 AND INSTR(L_BLOCK1_1, 'Slide key') = 0)
                                                    THEN SUBSTR(L_BLOCK1_1, INSTR(L_BLOCK1_1, ' \"'))
                                                    ELSE NULL
                                                END AS L_BLOCK_SPA1_1,
                                                CASE 
                                                    WHEN (NULLIF(L_BLOCK2_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM2_1, '') IS NULL AND INSTR(L_BLOCK2_1, '\" ') != 0 AND INSTR(L_BLOCK2_1, 'Slide key') = 0)
                                                    THEN SUBSTR(L_BLOCK2_1, INSTR(L_BLOCK2_1, ' \"'))
                                                    ELSE NULL
                                                END AS L_BLOCK_SPA2_1,
                                                CASE 
                                                    WHEN (NULLIF(L_BLOCK3_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM3_1, '') IS NULL AND INSTR(L_BLOCK3_1, '\" ') != 0 AND INSTR(L_BLOCK3_1, 'Slide key') = 0)
                                                    THEN SUBSTR(L_BLOCK3_1, INSTR(L_BLOCK3_1, ' \"'))
                                                    ELSE NULL
                                                END AS L_BLOCK_SPA3_1,
                                                CASE 
                                                    WHEN (NULLIF(L_BLOCK4_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM4_1, '') IS NULL AND INSTR(L_BLOCK4_1, '\" ') != 0 AND INSTR(L_BLOCK4_1, 'Slide key') = 0)
                                                    THEN SUBSTR(L_BLOCK4_1, INSTR(L_BLOCK4_1, ' \"'))
                                                    ELSE NULL
                                                END AS L_BLOCK_SPA4_1,
                                                CASE 
                                                    WHEN (NULLIF(L_BLOCK5_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM5_1, '') IS NULL AND INSTR(L_BLOCK5_1, '\" ') != 0 AND INSTR(L_BLOCK5_1, 'Slide key') = 0)
                                                    THEN SUBSTR(L_BLOCK5_1, INSTR(L_BLOCK5_1, ' \"'))
                                                    ELSE NULL
                                                END AS L_BLOCK_SPA5_1,
                                                CASE 
                                                    WHEN (NULLIF(L_BLOCK6_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM6_1, '') IS NULL AND INSTR(L_BLOCK6_1, '\" ') != 0 AND INSTR(L_BLOCK6_1, 'Slide key') = 0)
                                                    THEN SUBSTR(L_BLOCK6_1, INSTR(L_BLOCK6_1, ' \"'))
                                                    ELSE NULL
                                                END AS L_BLOCK_SPA6_1,
                                                CASE 
                                                    WHEN (NULLIF(L_BLOCK7_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM7_1, '') IS NULL AND INSTR(L_BLOCK7_1, '\" ') != 0 AND INSTR(L_BLOCK7_1, 'Slide key') = 0)
                                                    THEN SUBSTR(L_BLOCK7_1, INSTR(L_BLOCK7_1, ' \"'))
                                                    ELSE NULL
                                                END AS L_BLOCK_SPA7_1,
                                                CASE 
                                                    WHEN (NULLIF(L_BLOCK8_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM8_1, '') IS NULL AND INSTR(L_BLOCK8_1, '\" ') != 0 AND INSTR(L_BLOCK8_1, 'Slide key') = 0)
                                                    THEN SUBSTR(L_BLOCK8_1, INSTR(L_BLOCK8_1, ' \"'))
                                                    ELSE NULL
                                                END AS L_BLOCK_SPA8_1,
                                                CASE 
                                                    WHEN (NULLIF(L_BLOCK9_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM9_1, '') IS NULL AND INSTR(L_BLOCK9_1, '\" ') != 0 AND INSTR(L_BLOCK9_1, 'Slide key') = 0)
                                                    THEN SUBSTR(L_BLOCK9_1, INSTR(L_BLOCK9_1, ' \"'))
                                                    ELSE NULL
                                                END AS L_BLOCK_SPA9_1,
                                                CASE 
                                                    WHEN (NULLIF(L_BLOCK10_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM10_1, '') IS NULL AND INSTR(L_BLOCK10_1, '\" ') != 0 AND INSTR(L_BLOCK10_1, 'Slide key') = 0)
                                                    THEN SUBSTR(L_BLOCK10_1, INSTR(L_BLOCK10_1, ' \"'))
                                                    ELSE NULL
                                                END AS L_BLOCK_SPA10_1,
                                                CASE 
                                                    WHEN (NULLIF(L_BLOCK11_1, '') IS NOT NULL AND NULLIF(L_BLOCK_COM11_1, '') IS NULL AND INSTR(L_BLOCK11_1, '\" ') != 0 AND INSTR(L_BLOCK11_1, 'Slide key') = 0)
                                                    THEN SUBSTR(L_BLOCK11_1, INSTR(L_BLOCK11_1, ' \"'))
                                                    ELSE NULL
                                                END AS L_BLOCK_SPA11_1
                                            FROM(
                                                SELECT *,
                                                    CASE 
                                                        WHEN (NULLIF(L_BLOCK1_1, '') IS NOT NULL AND INSTR(L_BLOCK1_1, '\",') != 0 AND INSTR(L_BLOCK1_1, 'Slide key') = 0)
                                                        THEN SUBSTR(L_BLOCK1_1, INSTR(L_BLOCK1_1, ' \"'))
                                                        ELSE NULL
                                                    END AS L_BLOCK_COM1_1,
                                                    CASE 
                                                        WHEN (NULLIF(L_BLOCK2_1, '') IS NOT NULL AND INSTR(L_BLOCK2_1, '\",') != 0 AND INSTR(L_BLOCK2_1, 'Slide key') = 0)
                                                        THEN SUBSTR(L_BLOCK2_1, INSTR(L_BLOCK2_1, ' \"'))
                                                        ELSE NULL
                                                    END AS L_BLOCK_COM2_1,
                                                    CASE 
                                                        WHEN (NULLIF(L_BLOCK3_1, '') IS NOT NULL AND INSTR(L_BLOCK3_1, '\",') != 0 AND INSTR(L_BLOCK3_1, 'Slide key') = 0)
                                                        THEN SUBSTR(L_BLOCK3_1, INSTR(L_BLOCK3_1, ' \"'))
                                                        ELSE NULL
                                                    END AS L_BLOCK_COM3_1,
                                                    CASE 
                                                        WHEN (NULLIF(L_BLOCK4_1, '') IS NOT NULL AND INSTR(L_BLOCK4_1, '\",') != 0 AND INSTR(L_BLOCK4_1, 'Slide key') = 0)
                                                        THEN SUBSTR(L_BLOCK4_1, INSTR(L_BLOCK4_1, ' \"'))
                                                        ELSE NULL
                                                    END AS L_BLOCK_COM4_1,
                                                    CASE 
                                                        WHEN (NULLIF(L_BLOCK5_1, '') IS NOT NULL AND INSTR(L_BLOCK5_1, '\",') != 0 AND INSTR(L_BLOCK5_1, 'Slide key') = 0)
                                                        THEN SUBSTR(L_BLOCK5_1, INSTR(L_BLOCK5_1, ' \"'))
                                                        ELSE NULL
                                                    END AS L_BLOCK_COM5_1,
                                                    CASE 
                                                        WHEN (NULLIF(L_BLOCK6_1, '') IS NOT NULL AND INSTR(L_BLOCK6_1, '\",') != 0 AND INSTR(L_BLOCK6_1, 'Slide key') = 0)
                                                        THEN SUBSTR(L_BLOCK6_1, INSTR(L_BLOCK6_1, ' \"'))
                                                        ELSE NULL
                                                    END AS L_BLOCK_COM6_1,
                                                    CASE 
                                                        WHEN (NULLIF(L_BLOCK7_1, '') IS NOT NULL AND INSTR(L_BLOCK7_1, '\",') != 0 AND INSTR(L_BLOCK7_1, 'Slide key') = 0)
                                                        THEN SUBSTR(L_BLOCK7_1, INSTR(L_BLOCK7_1, ' \"'))
                                                        ELSE NULL
                                                    END AS L_BLOCK_COM7_1,
                                                    CASE 
                                                        WHEN (NULLIF(L_BLOCK8_1, '') IS NOT NULL AND INSTR(L_BLOCK8_1, '\",') != 0 AND INSTR(L_BLOCK8_1, 'Slide key') = 0)
                                                        THEN SUBSTR(L_BLOCK8_1, INSTR(L_BLOCK8_1, ' \"'))
                                                        ELSE NULL
                                                    END AS L_BLOCK_COM8_1,
                                                    CASE 
                                                        WHEN (NULLIF(L_BLOCK9_1, '') IS NOT NULL AND INSTR(L_BLOCK9_1, '\",') != 0 AND INSTR(L_BLOCK9_1, 'Slide key') = 0)
                                                        THEN SUBSTR(L_BLOCK9_1, INSTR(L_BLOCK9_1, ' \"'))
                                                        ELSE NULL
                                                    END AS L_BLOCK_COM9_1,
                                                    CASE 
                                                        WHEN (NULLIF(L_BLOCK10_1, '') IS NOT NULL AND INSTR(L_BLOCK10_1, '\",') != 0 AND INSTR(L_BLOCK10_1, 'Slide key') = 0)
                                                        THEN SUBSTR(L_BLOCK10_1, INSTR(L_BLOCK10_1, ' \"'))
                                                        ELSE NULL
                                                    END AS L_BLOCK_COM10_1,
                                                    CASE 
                                                        WHEN (NULLIF(L_BLOCK11_1, '') IS NOT NULL AND INSTR(L_BLOCK11_1, '\",') != 0 AND INSTR(L_BLOCK11_1, 'Slide key') = 0)
                                                        THEN SUBSTR(L_BLOCK11_1, INSTR(L_BLOCK11_1, ' \"'))
                                                        ELSE NULL
                                                    END AS L_BLOCK_COM11_1
                                                FROM(
                                                    SELECT *,
                                                        CASE 
                                                            WHEN (NULLIF(L_BLOCK1_1, '') IS NOT NULL AND INSTR(L_BLOCK1_1, 'Slide key') != 0)
                                                            THEN SUBSTR(L_BLOCK1_1, INSTR(L_BLOCK1_1, 'Slide key'))
                                                            ELSE NULL
                                                        END AS L_BLOCK_SLIDE1,
                                                        CASE 
                                                            WHEN (NULLIF(L_BLOCK2_1, '') IS NOT NULL AND INSTR(L_BLOCK2_1, 'Slide key') != 0)
                                                            THEN SUBSTR(L_BLOCK2_1, INSTR(L_BLOCK2_1, 'Slide key'))
                                                            ELSE NULL
                                                        END AS L_BLOCK_SLIDE2,
                                                        CASE 
                                                            WHEN (NULLIF(L_BLOCK3_1, '') IS NOT NULL AND INSTR(L_BLOCK3_1, 'Slide key') != 0)
                                                            THEN SUBSTR(L_BLOCK3_1, INSTR(L_BLOCK3_1, 'Slide key'))
                                                            ELSE NULL
                                                        END AS L_BLOCK_SLIDE3,
                                                        CASE 
                                                            WHEN (NULLIF(L_BLOCK4_1, '') IS NOT NULL AND INSTR(L_BLOCK4_1, 'Slide key') != 0)
                                                            THEN SUBSTR(L_BLOCK4_1, INSTR(L_BLOCK4_1, 'Slide key'))
                                                            ELSE NULL
                                                        END AS L_BLOCK_SLIDE4,
                                                        CASE 
                                                            WHEN (NULLIF(L_BLOCK5_1, '') IS NOT NULL AND INSTR(L_BLOCK5_1, 'Slide key') != 0)
                                                            THEN SUBSTR(L_BLOCK5_1, INSTR(L_BLOCK5_1, 'Slide key'))
                                                            ELSE NULL
                                                        END AS L_BLOCK_SLIDE5,
                                                        CASE 
                                                            WHEN (NULLIF(L_BLOCK6_1, '') IS NOT NULL AND INSTR(L_BLOCK6_1, 'Slide key') != 0)
                                                            THEN SUBSTR(L_BLOCK6_1, INSTR(L_BLOCK6_1, 'Slide key'))
                                                            ELSE NULL
                                                        END AS L_BLOCK_SLIDE6,
                                                        CASE 
                                                            WHEN (NULLIF(L_BLOCK7_1, '') IS NOT NULL AND INSTR(L_BLOCK7_1, 'Slide key') != 0)
                                                            THEN SUBSTR(L_BLOCK7_1, INSTR(L_BLOCK7_1, 'Slide key'))
                                                            ELSE NULL
                                                        END AS L_BLOCK_SLIDE7,
                                                        CASE 
                                                            WHEN (NULLIF(L_BLOCK8_1, '') IS NOT NULL AND INSTR(L_BLOCK8_1, 'Slide key') != 0)
                                                            THEN SUBSTR(L_BLOCK8_1, INSTR(L_BLOCK8_1, 'Slide key'))
                                                            ELSE NULL
                                                        END AS L_BLOCK_SLIDE8,
                                                        CASE 
                                                            WHEN (NULLIF(L_BLOCK9_1, '') IS NOT NULL AND INSTR(L_BLOCK9_1, 'Slide key') != 0)
                                                            THEN SUBSTR(L_BLOCK9_1, INSTR(L_BLOCK9_1, 'Slide key'))
                                                            ELSE NULL
                                                        END AS L_BLOCK_SLIDE9,
                                                        CASE 
                                                            WHEN (NULLIF(L_BLOCK10_1, '') IS NOT NULL AND INSTR(L_BLOCK10_1, 'Slide key') != 0)
                                                            THEN SUBSTR(L_BLOCK10_1, INSTR(L_BLOCK10_1, 'Slide key'))
                                                            ELSE NULL
                                                        END AS L_BLOCK_SLIDE10,
                                                        CASE 
                                                            WHEN (NULLIF(L_BLOCK11_1, '') IS NOT NULL AND INSTR(L_BLOCK11_1, 'Slide key') != 0)
                                                            THEN SUBSTR(L_BLOCK11_1, INSTR(L_BLOCK11_1, 'Slide key'))
                                                            ELSE NULL
                                                        END AS L_BLOCK_SLIDE11
                                                    FROM test_type2_block_02
                                                ) a
                                            ) a
                                        ) a
                                    ) a
                                ) a
                            ) a
                        ) a
                    ) a
                ) a
            ) a
        ) a
    ) a
) a