SELECT
    원무접수ID,
    환자번호,
    1_BLOCK1,
    2_BLOCK1,
    1_BLOCK2,
    2_BLOCK2,
    1_BLOCK3,
    2_BLOCK3,
    1_BLOCK4,
    2_BLOCK4,
    1_BLOCK5,
    2_BLOCK5,
    1_BLOCK6,
    2_BLOCK6,
    1_BLOCK7,
    2_BLOCK7,
    1_BLOCK8,
    2_BLOCK8,
    1_BLOCK9,
    2_BLOCK9,
    1_BLOCK10,
    2_BLOCK10,
    1_BLOCK11,
    2_BLOCK11,
    1_BLOCK12,
    1_BLOCK13,
    1_BLOCK14,
    1_BLOCK15,
    1_BLOCK16,
    REBLOCK_ELSE
FROM(
    SELECT *
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(BLOCK1_1, '') IS NOT NULL)
                THEN REPLACE(BLOCK1_1, BLOCK1_2, '')
                ELSE NULL
            END AS 1_BLOCK1,
            CASE
                WHEN (NULLIF(BLOCK2_1, '') IS NOT NULL)
                THEN REPLACE(BLOCK2_1, BLOCK2_2, '')
                ELSE NULL
            END AS 2_BLOCK1
        FROM(
            SELECT *,
                CASE
                    WHEN (NULLIF(BLOCK1_2, '') IS NOT NULL)
                    THEN REPLACE(BLOCK1_2, BLOCK1_3, '')
                    ELSE NULL
                END AS 1_BLOCK2,
                CASE
                    WHEN (NULLIF(BLOCK2_2, '') IS NOT NULL)
                    THEN REPLACE(BLOCK2_2, BLOCK2_3, '')
                    ELSE NULL
                END AS 2_BLOCK2
            FROM(
                SELECT *,
                    CASE
                        WHEN (NULLIF(BLOCK1_3, '') IS NOT NULL)
                        THEN REPLACE(BLOCK1_3, BLOCK1_4, '')
                        ELSE NULL
                    END AS 1_BLOCK3,
                    CASE
                        WHEN (NULLIF(BLOCK2_3, '') IS NOT NULL)
                        THEN REPLACE(BLOCK2_3, BLOCK2_4, '')
                        ELSE NULL
                    END AS 2_BLOCK3
                FROM(
                    SELECT *,
                        CASE
                            WHEN (NULLIF(BLOCK1_4, '') IS NOT NULL)
                            THEN REPLACE(BLOCK1_4, BLOCK1_5, '')
                            ELSE NULL
                        END AS 1_BLOCK4,
                        CASE
                            WHEN (NULLIF(BLOCK2_4, '') IS NOT NULL)
                            THEN REPLACE(BLOCK2_4, BLOCK2_5, '')
                            ELSE NULL
                        END AS 2_BLOCK4
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (NULLIF(BLOCK1_5, '') IS NOT NULL)
                                THEN REPLACE(BLOCK1_5, BLOCK1_6, '')
                                ELSE NULL
                            END AS 1_BLOCK5,
                            CASE
                                WHEN (NULLIF(BLOCK2_5, '') IS NOT NULL)
                                THEN REPLACE(BLOCK2_5, BLOCK2_6, '')
                                ELSE NULL
                            END AS 2_BLOCK5
                        FROM(
                            SELECT *,
                                CASE
                                    WHEN (NULLIF(BLOCK1_6, '') IS NOT NULL)
                                    THEN REPLACE(BLOCK1_6, BLOCK1_7, '')
                                    ELSE NULL
                                END AS 1_BLOCK6,
                                CASE
                                    WHEN (NULLIF(BLOCK2_6, '') IS NOT NULL)
                                    THEN REPLACE(BLOCK2_6, BLOCK2_7, '')
                                    ELSE NULL
                                END AS 2_BLOCK6
                            FROM(
                                SELECT *,
                                    CASE
                                        WHEN (NULLIF(BLOCK1_7, '') IS NOT NULL)
                                        THEN REPLACE(BLOCK1_7, BLOCK1_8, '')
                                        ELSE NULL
                                    END AS 1_BLOCK7,
                                    CASE
                                        WHEN (NULLIF(BLOCK2_7, '') IS NOT NULL)
                                        THEN REPLACE(BLOCK2_7, BLOCK2_8, '')
                                        ELSE NULL
                                    END AS 2_BLOCK7
                                FROM(
                                    SELECT *,
                                        CASE
                                            WHEN (NULLIF(BLOCK1_8, '') IS NOT NULL)
                                            THEN REPLACE(BLOCK1_8, BLOCK1_9, '')
                                            ELSE NULL
                                        END AS 1_BLOCK8,
                                        CASE
                                            WHEN (NULLIF(BLOCK2_8, '') IS NOT NULL)
                                            THEN REPLACE(BLOCK2_8, BLOCK2_9, '')
                                            ELSE NULL
                                        END AS 2_BLOCK8
                                    FROM(
                                        SELECT *,
                                            CASE
                                                WHEN (NULLIF(BLOCK1_9, '') IS NOT NULL)
                                                THEN REPLACE(BLOCK1_9, BLOCK1_10, '')
                                                ELSE NULL
                                            END AS 1_BLOCK9,
                                            CASE
                                                WHEN (NULLIF(BLOCK2_9, '') IS NOT NULL)
                                                THEN REPLACE(BLOCK2_9, BLOCK2_10, '')
                                                ELSE NULL
                                            END AS 2_BLOCK9
                                        FROM(
                                            SELECT *,
                                                CASE
                                                    WHEN (NULLIF(BLOCK1_10, '') IS NOT NULL)
                                                    THEN REPLACE(BLOCK1_10, BLOCK1_11, '')
                                                    ELSE NULL
                                                END AS 1_BLOCK10,
                                                CASE
                                                    WHEN (NULLIF(BLOCK2_10, '') IS NOT NULL)
                                                    THEN REPLACE(BLOCK2_10, BLOCK2_11, '')
                                                    ELSE NULL
                                                END AS 2_BLOCK10
                                            FROM(
                                                SELECT *,
                                                    CASE
                                                        WHEN (NULLIF(BLOCK1_11, '') IS NOT NULL)
                                                        THEN REPLACE(BLOCK1_11, BLOCK1_12, '')
                                                        ELSE NULL
                                                    END AS 1_BLOCK11,
                                                    CASE
                                                        WHEN (NULLIF(BLOCK2_11, '') IS NOT NULL)
                                                        THEN BLOCK2_11
                                                        ELSE NULL
                                                    END AS 2_BLOCK11
                                                FROM(
                                                    SELECT *,
                                                        CASE
                                                            WHEN (NULLIF(BLOCK1_12, '') IS NOT NULL)
                                                            THEN REPLACE(BLOCK1_12, BLOCK1_13, '')
                                                            ELSE NULL
                                                        END AS 1_BLOCK12
                                                    FROM(
                                                        SELECT *,
                                                            CASE
                                                                WHEN (NULLIF(BLOCK1_13, '') IS NOT NULL)
                                                                THEN REPLACE(BLOCK1_13, BLOCK1_14, '')
                                                                ELSE NULL
                                                            END AS 1_BLOCK13
                                                        FROM(
                                                            SELECT *,
                                                                CASE
                                                                    WHEN (NULLIF(BLOCK1_14, '') IS NOT NULL)
                                                                    THEN REPLACE(BLOCK1_14, BLOCK1_15, '')
                                                                    ELSE NULL
                                                                END AS 1_BLOCK14
                                                            FROM(
                                                                SELECT *,
                                                                    CASE
                                                                        WHEN (NULLIF(BLOCK1_15, '') IS NOT NULL)
                                                                        THEN REPLACE(BLOCK1_15, BLOCK1_16, '')
                                                                        ELSE NULL
                                                                    END AS 1_BLOCK15,
                                                                    CASE
                                                                        WHEN (NULLIF(BLOCK1_16, '') IS NOT NULL)
                                                                        THEN BLOCK1_16
                                                                        ELSE NULL
                                                                    END AS 1_BLOCK16
                                                                FROM(
                                                                    SELECT *,
                                                                        CASE
                                                                            WHEN (NULLIF(REBLOCK_YES, '') IS NOT NULL)
                                                                            THEN SUBSTR(BINARY REBLOCK_YES, INSTR(BINARY REBLOCK_YES, 'No.2;'))
                                                                            ELSE NULL
                                                                        END AS BLOCK1_1,
                                                                        CASE
                                                                            WHEN (NULLIF(REBLOCK_NO, '') IS NOT NULL)
                                                                            THEN SUBSTR(BINARY REBLOCK_NO, INSTR(BINARY REBLOCK_NO, '(1)'))
                                                                            ELSE NULL
                                                                        END AS BLOCK2_1,
                                                                        CASE
                                                                            WHEN (NULLIF(REBLOCK_YES, '') IS NOT NULL)
                                                                            THEN SUBSTR(BINARY REBLOCK_YES, INSTR(BINARY REBLOCK_YES, 'No.3;'))
                                                                            ELSE NULL
                                                                        END AS BLOCK1_2,
                                                                        CASE
                                                                            WHEN (NULLIF(REBLOCK_NO, '') IS NOT NULL)
                                                                            THEN SUBSTR(BINARY REBLOCK_NO, INSTR(BINARY REBLOCK_NO, '(2)'))
                                                                            ELSE NULL
                                                                        END AS BLOCK2_2,
                                                                        CASE
                                                                            WHEN (NULLIF(REBLOCK_YES, '') IS NOT NULL)
                                                                            THEN SUBSTR(BINARY REBLOCK_YES, INSTR(BINARY REBLOCK_YES, 'No.4;'))
                                                                            ELSE NULL
                                                                        END AS BLOCK1_3,
                                                                        CASE
                                                                            WHEN (NULLIF(REBLOCK_NO, '') IS NOT NULL)
                                                                            THEN SUBSTR(BINARY REBLOCK_NO, INSTR(BINARY REBLOCK_NO, '(3)'))
                                                                            ELSE NULL
                                                                        END AS BLOCK2_3,
                                                                        CASE
                                                                            WHEN (NULLIF(REBLOCK_YES, '') IS NOT NULL)
                                                                            THEN SUBSTR(BINARY REBLOCK_YES, INSTR(BINARY REBLOCK_YES, 'No.5;'))
                                                                            ELSE NULL
                                                                        END AS BLOCK1_4,
                                                                        CASE
                                                                            WHEN (NULLIF(REBLOCK_NO, '') IS NOT NULL)
                                                                            THEN SUBSTR(BINARY REBLOCK_NO, INSTR(BINARY REBLOCK_NO, '(4)'))
                                                                            ELSE NULL
                                                                        END AS BLOCK2_4,
                                                                        CASE
                                                                            WHEN (NULLIF(REBLOCK_YES, '') IS NOT NULL)
                                                                            THEN SUBSTR(BINARY REBLOCK_YES, INSTR(BINARY REBLOCK_YES, 'No.6;'))
                                                                            ELSE NULL
                                                                        END AS BLOCK1_5,
                                                                        CASE
                                                                            WHEN (NULLIF(REBLOCK_NO, '') IS NOT NULL)
                                                                            THEN SUBSTR(BINARY REBLOCK_NO, INSTR(BINARY REBLOCK_NO, '(5)'))
                                                                            ELSE NULL
                                                                        END AS BLOCK2_5,
                                                                        CASE
                                                                            WHEN (NULLIF(REBLOCK_YES, '') IS NOT NULL)
                                                                            THEN SUBSTR(BINARY REBLOCK_YES, INSTR(BINARY REBLOCK_YES, 'No.7;'))
                                                                            ELSE NULL
                                                                        END AS BLOCK1_6,
                                                                        CASE
                                                                            WHEN (NULLIF(REBLOCK_NO, '') IS NOT NULL)
                                                                            THEN SUBSTR(BINARY REBLOCK_NO, INSTR(BINARY REBLOCK_NO, '(6)'))
                                                                            ELSE NULL
                                                                        END AS BLOCK2_6,
                                                                        CASE
                                                                            WHEN (NULLIF(REBLOCK_YES, '') IS NOT NULL)
                                                                            THEN SUBSTR(BINARY REBLOCK_YES, INSTR(BINARY REBLOCK_YES, 'No.8;'))
                                                                            ELSE NULL
                                                                        END AS BLOCK1_7,
                                                                        CASE
                                                                            WHEN (NULLIF(REBLOCK_NO, '') IS NOT NULL)
                                                                            THEN SUBSTR(BINARY REBLOCK_NO, INSTR(BINARY REBLOCK_NO, '(7)'))
                                                                            ELSE NULL
                                                                        END AS BLOCK2_7,
                                                                        CASE
                                                                            WHEN (NULLIF(REBLOCK_YES, '') IS NOT NULL)
                                                                            THEN SUBSTR(BINARY REBLOCK_YES, INSTR(BINARY REBLOCK_YES, 'No.9;'))
                                                                            ELSE NULL
                                                                        END AS BLOCK1_8,
                                                                        CASE
                                                                            WHEN (NULLIF(REBLOCK_NO, '') IS NOT NULL)
                                                                            THEN SUBSTR(BINARY REBLOCK_NO, INSTR(BINARY REBLOCK_NO, '(8)'))
                                                                            ELSE NULL
                                                                        END AS BLOCK2_8,
                                                                        CASE
                                                                            WHEN (NULLIF(REBLOCK_YES, '') IS NOT NULL AND REGEXP_INSTR(BINARY REBLOCK_YES, 'No[.][0-9][;]'))
                                                                            THEN SUBSTR(BINARY REBLOCK_YES, INSTR(BINARY REBLOCK_YES, 'No.10;'))
                                                                            ELSE NULL
                                                                        END AS BLOCK1_9,
                                                                        CASE
                                                                            WHEN (NULLIF(REBLOCK_NO, '') IS NOT NULL)
                                                                            THEN SUBSTR(BINARY REBLOCK_NO, INSTR(BINARY REBLOCK_NO, '(9)'))
                                                                            ELSE NULL
                                                                        END AS BLOCK2_9,
                                                                        CASE
                                                                            WHEN (NULLIF(REBLOCK_YES, '') IS NOT NULL)
                                                                            THEN SUBSTR(BINARY REBLOCK_YES, INSTR(BINARY REBLOCK_YES, 'No.11;'))
                                                                            ELSE NULL
                                                                        END AS BLOCK1_10,
                                                                        CASE
                                                                            WHEN (NULLIF(REBLOCK_NO, '') IS NOT NULL)
                                                                            THEN SUBSTR(BINARY REBLOCK_NO, INSTR(BINARY REBLOCK_NO, '(10)'))
                                                                            ELSE NULL
                                                                        END AS BLOCK2_10,
                                                                        CASE
                                                                            WHEN (NULLIF(REBLOCK_YES, '') IS NOT NULL)
                                                                            THEN SUBSTR(BINARY REBLOCK_YES, INSTR(BINARY REBLOCK_YES, 'No.12;'))
                                                                            ELSE NULL
                                                                        END AS BLOCK1_11,
                                                                        CASE
                                                                            WHEN (NULLIF(REBLOCK_NO, '') IS NOT NULL)
                                                                            THEN SUBSTR(BINARY REBLOCK_NO, INSTR(BINARY REBLOCK_NO, '(11)'))
                                                                            ELSE NULL
                                                                        END AS BLOCK2_11,
                                                                        CASE
                                                                            WHEN (NULLIF(REBLOCK_YES, '') IS NOT NULL)
                                                                            THEN SUBSTR(BINARY REBLOCK_YES, INSTR(BINARY REBLOCK_YES, 'No.13;'))
                                                                            ELSE NULL
                                                                        END AS BLOCK1_12,
                                                                        CASE
                                                                            WHEN (NULLIF(REBLOCK_YES, '') IS NOT NULL)
                                                                            THEN SUBSTR(BINARY REBLOCK_YES, INSTR(BINARY REBLOCK_YES, 'No.14;'))
                                                                            ELSE NULL
                                                                        END AS BLOCK1_13,
                                                                        CASE
                                                                            WHEN (NULLIF(REBLOCK_YES, '') IS NOT NULL)
                                                                            THEN SUBSTR(BINARY REBLOCK_YES, INSTR(BINARY REBLOCK_YES, 'No.15;'))
                                                                            ELSE NULL
                                                                        END AS BLOCK1_14,
                                                                        CASE
                                                                            WHEN (NULLIF(REBLOCK_YES, '') IS NOT NULL)
                                                                            THEN SUBSTR(BINARY REBLOCK_YES, INSTR(BINARY REBLOCK_YES, 'No.16;'))
                                                                            ELSE NULL
                                                                        END AS BLOCK1_15,
                                                                        CASE
                                                                            WHEN (NULLIF(REBLOCK_YES, '') IS NOT NULL)
                                                                            THEN SUBSTR(BINARY REBLOCK_YES, INSTR(BINARY REBLOCK_YES, 'No.17;'))
                                                                            ELSE NULL
                                                                        END AS BLOCK1_16
                                                                    FROM test_type6_block_03
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
            ) a
        ) a
    ) a
) a