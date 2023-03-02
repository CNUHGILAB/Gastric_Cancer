SELECT
    원무접수ID,
    환자번호,
    1_BLOCK1,
    2_BLOCK1,
    3_BLOCK1,
    1_BLOCK2,
    2_BLOCK2,
    3_BLOCK2,
    1_BLOCK3,
    2_BLOCK3,
    3_BLOCK3,
    1_BLOCK4,
    2_BLOCK4,
    3_BLOCK4,
    1_BLOCK5,
    2_BLOCK5,
    3_BLOCK5,
    1_BLOCK6,
    2_BLOCK6,
    3_BLOCK6,
    1_BLOCK7,
    2_BLOCK7,
    3_BLOCK7,
    1_BLOCK8,
    2_BLOCK8,
    3_BLOCK8,
    1_BLOCK9,
    2_BLOCK9,
    3_BLOCK9,
    1_BLOCK10,
    2_BLOCK10,
    1_BLOCK11,
    2_BLOCK11,
    1_BLOCK12,
    1_BLOCK13,
    1_BLOCK14,
    1_BLOCK15,
    1_BLOCK16
FROM(
    SELECT *,
        # NO.2
        CASE
            WHEN (SUBSTR(BLOCK3_1, 1) != SUBSTR(BLOCK3_2, 1))
            THEN REPLACE(BLOCK3_1, BLOCK3_2, '')
            WHEN (SUBSTR(BLOCK3_1, 1) = SUBSTR(BLOCK3_2, 1))
            THEN 3_BLOCK2
            ELSE BLOCK3_1
        END AS 3_BLOCK1
    FROM(
        SELECT *,
            # NO.3
            CASE
                WHEN (SUBSTR(BLOCK3_2, 1) != SUBSTR(BLOCK3_3, 1))
                THEN REPLACE(BLOCK3_2, BLOCK3_3, '')
                WHEN (SUBSTR(BLOCK3_2, 1) = SUBSTR(BLOCK3_3, 1))
                THEN 3_BLOCK3
                ELSE BLOCK3_2
            END AS 3_BLOCK2
        FROM(
            SELECT *,
                # NO.4
                CASE
                    WHEN (SUBSTR(BLOCK3_3, 1) != SUBSTR(BLOCK3_4, 1))
                    THEN REPLACE(BLOCK3_3, BLOCK3_4, '')
                    WHEN (SUBSTR(BLOCK3_3, 1) = SUBSTR(BLOCK3_4, 1))
                    THEN 3_BLOCK4
                    ELSE BLOCK3_3
                END AS 3_BLOCK3
            FROM(
                SELECT *,
                    # NO.5
                    CASE
                        WHEN (SUBSTR(BLOCK3_4, 1) != SUBSTR(BLOCK3_5, 1))
                        THEN REPLACE(BLOCK3_4, BLOCK3_5, '')
                        WHEN (SUBSTR(BLOCK3_4, 1) = SUBSTR(BLOCK3_5, 1))
                        THEN 3_BLOCK5
                        ELSE BLOCK3_4
                    END AS 3_BLOCK4
                FROM(
                    SELECT *,
                        # NO.6
                        CASE
                            WHEN (SUBSTR(BLOCK3_5, 1) != SUBSTR(BLOCK3_6, 1))
                            THEN REPLACE(BLOCK3_5, BLOCK3_6, '')
                            WHEN (SUBSTR(BLOCK3_5, 1) = SUBSTR(BLOCK3_6, 1))
                            THEN 3_BLOCK6
                            ELSE BLOCK3_5
                        END AS 3_BLOCK5
                    FROM(
                        SELECT *,
                            # NO.7
                            CASE
                                WHEN (SUBSTR(BLOCK3_6, 1) != SUBSTR(BLOCK3_7, 1))
                                THEN REPLACE(BLOCK3_6, BLOCK3_7, '')
                                WHEN (SUBSTR(BLOCK3_6, 1) = SUBSTR(BLOCK3_7, 1))
                                THEN 3_BLOCK7
                                ELSE BLOCK3_6
                            END AS 3_BLOCK6
                        FROM(
                            SELECT *,
                                # NO.8
                                CASE
                                    WHEN (SUBSTR(BLOCK3_7, 1) != SUBSTR(BLOCK3_8, 1))
                                    THEN REPLACE(BLOCK3_7, BLOCK3_8, '')
                                    WHEN (SUBSTR(BLOCK3_7, 1) = SUBSTR(BLOCK3_8, 1))
                                    THEN 3_BLOCK8
                                    ELSE BLOCK3_7
                                END AS 3_BLOCK7
                            FROM(
                                SELECT *,
                                    # NO.9
                                    CASE
                                        WHEN (SUBSTR(BLOCK3_8, 1) != SUBSTR(BLOCK3_9, 1))
                                        THEN REPLACE(BLOCK3_8, BLOCK3_9, '')
                                        WHEN (SUBSTR(BLOCK3_8, 1) = SUBSTR(BLOCK3_9, 1))
                                        THEN 3_BLOCK9
                                        ELSE BLOCK3_8
                                    END AS 3_BLOCK8
                                FROM(
                                    SELECT *,
                                        # NO.10
                                        CASE
                                            WHEN (NULLIF(BLOCK3_9, '') IS NOT NULL)
                                            THEN BLOCK3_9
                                            ELSE NULL
                                        END AS 3_BLOCK9
                                    FROM(
                                        SELECT *,
                                            # NO.2
                                            CASE
                                                WHEN (NULLIF(REBLOCK_ELSE, '') IS NOT NULL AND NULLIF(BLOCK_ELSE1_2, '') IS NOT NULL)
                                                THEN BLOCK_ELSE1_2
                                                WHEN (NULLIF(REBLOCK_ELSE, '') IS NOT NULL AND NULLIF(BLOCK_ELSE3_2, '') IS NOT NULL)
                                                THEN BLOCK_ELSE3_2
                                                ELSE NULL
                                            END AS BLOCK3_1,
                                            # NO.3
                                            CASE
                                                WHEN (NULLIF(REBLOCK_ELSE, '') IS NOT NULL AND NULLIF(BLOCK_ELSE1_3, '') IS NOT NULL)
                                                THEN BLOCK_ELSE1_3
                                                WHEN (NULLIF(REBLOCK_ELSE, '') IS NOT NULL AND NULLIF(BLOCK_ELSE2_3_1, '') IS NOT NULL)
                                                THEN BLOCK_ELSE2_3_1
                                                WHEN (NULLIF(REBLOCK_ELSE, '') IS NOT NULL AND NULLIF(BLOCK_ELSE2_3_2, '') IS NOT NULL)
                                                THEN BLOCK_ELSE2_3_2
                                                WHEN (NULLIF(REBLOCK_ELSE, '') IS NOT NULL AND NULLIF(BLOCK_ELSE3_3_1, '') IS NOT NULL)
                                                THEN BLOCK_ELSE3_3_1
                                                WHEN (NULLIF(REBLOCK_ELSE, '') IS NOT NULL AND NULLIF(BLOCK_ELSE3_3_2, '') IS NOT NULL)
                                                THEN BLOCK_ELSE3_3_2
                                                ELSE NULL
                                            END AS BLOCK3_2,
                                            # NO.4
                                            CASE
                                                WHEN (NULLIF(REBLOCK_ELSE, '') IS NOT NULL AND NULLIF(BLOCK_ELSE1_4, '') IS NOT NULL)
                                                THEN BLOCK_ELSE1_4
                                                WHEN (NULLIF(REBLOCK_ELSE, '') IS NOT NULL AND NULLIF(BLOCK_ELSE2_3_1, '') IS NOT NULL)
                                                THEN BLOCK_ELSE2_3_1
                                                WHEN (NULLIF(REBLOCK_ELSE, '') IS NOT NULL AND NULLIF(BLOCK_ELSE2_3_2, '') IS NOT NULL)
                                                THEN BLOCK_ELSE2_3_2
                                                WHEN (NULLIF(REBLOCK_ELSE, '') IS NOT NULL AND NULLIF(BLOCK_ELSE3_2, '') IS NOT NULL)
                                                THEN BLOCK_ELSE3_2
                                                WHEN (NULLIF(REBLOCK_ELSE, '') IS NOT NULL AND NULLIF(BLOCK_ELSE3_3_1, '') IS NOT NULL)
                                                THEN BLOCK_ELSE3_3_1
                                                WHEN (NULLIF(REBLOCK_ELSE, '') IS NOT NULL AND NULLIF(BLOCK_ELSE3_4, '') IS NOT NULL)
                                                THEN BLOCK_ELSE3_4
                                                ELSE NULL
                                            END AS BLOCK3_3,
                                            # NO.5
                                            CASE
                                                WHEN (NULLIF(REBLOCK_ELSE, '') IS NOT NULL AND NULLIF(BLOCK_ELSE1_5, '') IS NOT NULL)
                                                THEN BLOCK_ELSE1_5
                                                WHEN (NULLIF(REBLOCK_ELSE, '') IS NOT NULL AND NULLIF(BLOCK_ELSE2_3_1, '') IS NOT NULL)
                                                THEN BLOCK_ELSE2_3_1
                                                WHEN (NULLIF(REBLOCK_ELSE, '') IS NOT NULL AND NULLIF(BLOCK_ELSE2_3_2, '') IS NOT NULL)
                                                THEN BLOCK_ELSE2_3_2
                                                WHEN (NULLIF(REBLOCK_ELSE, '') IS NOT NULL AND NULLIF(BLOCK_ELSE2_5, '') IS NOT NULL)
                                                THEN BLOCK_ELSE2_5
                                                WHEN (NULLIF(REBLOCK_ELSE, '') IS NOT NULL AND NULLIF(BLOCK_ELSE3_2, '') IS NOT NULL)
                                                THEN BLOCK_ELSE3_2
                                                WHEN (NULLIF(REBLOCK_ELSE, '') IS NOT NULL AND NULLIF(BLOCK_ELSE3_4, '') IS NOT NULL)
                                                THEN BLOCK_ELSE3_4
                                                ELSE NULL
                                            END AS BLOCK3_4,
                                            # NO.6
                                            CASE
                                                WHEN (NULLIF(REBLOCK_ELSE, '') IS NOT NULL AND NULLIF(BLOCK_ELSE1_6, '') IS NOT NULL)
                                                THEN BLOCK_ELSE1_6
                                                WHEN (NULLIF(REBLOCK_ELSE, '') IS NOT NULL AND NULLIF(BLOCK_ELSE2_3_2, '') IS NOT NULL)
                                                THEN BLOCK_ELSE2_3_2
                                                WHEN (NULLIF(REBLOCK_ELSE, '') IS NOT NULL AND NULLIF(BLOCK_ELSE2_5, '') IS NOT NULL)
                                                THEN BLOCK_ELSE2_5
                                                WHEN (NULLIF(REBLOCK_ELSE, '') IS NOT NULL AND NULLIF(BLOCK_ELSE3_6, '') IS NOT NULL)
                                                THEN BLOCK_ELSE3_6
                                                WHEN (NULLIF(REBLOCK_ELSE, '') IS NOT NULL AND NULLIF(BLOCK_ELSE3_3_2, '') IS NOT NULL)
                                                THEN BLOCK_ELSE3_3_2
                                                ELSE NULL
                                            END AS BLOCK3_5,
                                            # NO.7
                                            CASE
                                                WHEN (NULLIF(REBLOCK_ELSE, '') IS NOT NULL AND NULLIF(BLOCK_ELSE1_7, '') IS NOT NULL)
                                                THEN BLOCK_ELSE1_7
                                                WHEN (NULLIF(REBLOCK_ELSE, '') IS NOT NULL AND NULLIF(BLOCK_ELSE2_5, '') IS NOT NULL)
                                                THEN BLOCK_ELSE2_5
                                                WHEN (NULLIF(REBLOCK_ELSE, '') IS NOT NULL AND NULLIF(BLOCK_ELSE3_6, '') IS NOT NULL)
                                                THEN BLOCK_ELSE3_6
                                                ELSE NULL
                                            END AS BLOCK3_6,
                                            # NO.8
                                            CASE
                                                WHEN (NULLIF(REBLOCK_ELSE, '') IS NOT NULL AND NULLIF(BLOCK_ELSE1_8, '') IS NOT NULL)
                                                THEN BLOCK_ELSE1_8
                                                ELSE NULL
                                            END AS BLOCK3_7,
                                            # NO.9
                                            CASE
                                                WHEN (NULLIF(REBLOCK_ELSE, '') IS NOT NULL AND NULLIF(BLOCK_ELSE1_9, '') IS NOT NULL)
                                                THEN BLOCK_ELSE1_9
                                                WHEN (NULLIF(REBLOCK_ELSE, '') IS NOT NULL AND NULLIF(BLOCK_ELSE2_9, '') IS NOT NULL)
                                                THEN BLOCK_ELSE2_9
                                                ELSE NULL
                                            END AS BLOCK3_8,
                                            # NO.10
                                            CASE
                                                WHEN (NULLIF(REBLOCK_ELSE, '') IS NOT NULL AND NULLIF(BLOCK_ELSE1_10, '') IS NOT NULL)
                                                THEN BLOCK_ELSE1_10
                                                WHEN (NULLIF(REBLOCK_ELSE, '') IS NOT NULL AND NULLIF(BLOCK_ELSE2_9, '') IS NOT NULL)
                                                THEN BLOCK_ELSE2_9
                                                ELSE NULL
                                            END AS BLOCK3_9
                                        FROM(
                                            SELECT *,
                                                # NO.2
                                                CASE
                                                    WHEN (INSTR(BINARY REBLOCK_ELSE, 'No.2;') != 0)
                                                    THEN SUBSTR(BINARY REBLOCK_ELSE, INSTR(BINARY REBLOCK_ELSE, 'No.2;'))
                                                    ELSE NULL
                                                END AS BLOCK_ELSE1_2,
                                                CASE
                                                    WHEN (INSTR(BINARY REBLOCK_ELSE, 'No.2,4,5;') != 0)
                                                    THEN SUBSTR(BINARY REBLOCK_ELSE, INSTR(BINARY REBLOCK_ELSE, 'No.2,4,5;'))
                                                    ELSE NULL
                                                END AS BLOCK_ELSE3_2
                                            FROM(
                                                SELECT *,
                                                    # NO.3
                                                    CASE
                                                        WHEN (INSTR(BINARY REBLOCK_ELSE, 'No.3;') != 0)
                                                        THEN SUBSTR(BINARY REBLOCK_ELSE, INSTR(BINARY REBLOCK_ELSE, 'No.3;'))
                                                        ELSE NULL
                                                    END AS BLOCK_ELSE1_3,
                                                    # NO.3-5
                                                    CASE
                                                        WHEN (INSTR(BINARY REBLOCK_ELSE, 'No.3-5;') != 0)
                                                        THEN BINARY SUBSTR(REBLOCK_ELSE, INSTR(BINARY REBLOCK_ELSE, 'No.3-5;'))
                                                        ELSE NULL
                                                    END AS BLOCK_ELSE2_3_1,
                                                    # NO.3-6
                                                    CASE
                                                        WHEN (INSTR(BINARY REBLOCK_ELSE, 'No.3-6;') != 0)
                                                        THEN BINARY SUBSTR(REBLOCK_ELSE, INSTR(BINARY REBLOCK_ELSE, 'No.3-6;'))
                                                        ELSE NULL
                                                    END AS BLOCK_ELSE2_3_2,
                                                    # N0.3,4
                                                    CASE
                                                        WHEN (INSTR(BINARY REBLOCK_ELSE, 'No.3,4;') != 0)
                                                        THEN BINARY SUBSTR(REBLOCK_ELSE, INSTR(BINARY REBLOCK_ELSE, 'No.3,4;'))
                                                        ELSE NULL
                                                    END AS BLOCK_ELSE3_3_1,
                                                    # NO.3,6
                                                    CASE
                                                        WHEN (INSTR(BINARY REBLOCK_ELSE, 'No.3,6;') != 0)
                                                        THEN BINARY SUBSTR(REBLOCK_ELSE, INSTR(BINARY REBLOCK_ELSE, 'No.3,6;'))
                                                        ELSE NULL
                                                    END AS BLOCK_ELSE3_3_2
                                                FROM(
                                                    SELECT *,
                                                        # NO.4
                                                        CASE
                                                            WHEN (INSTR(BINARY REBLOCK_ELSE, 'No.4;') != 0)
                                                            THEN SUBSTR(BINARY REBLOCK_ELSE, INSTR(BINARY REBLOCK_ELSE, 'No.4;'))
                                                            ELSE NULL
                                                        END AS BLOCK_ELSE1_4,
                                                        # NO.4,5
                                                        CASE
                                                            WHEN (INSTR(BINARY REBLOCK_ELSE, 'No.4,5;') != 0)
                                                            THEN BINARY SUBSTR(REBLOCK_ELSE, INSTR(BINARY REBLOCK_ELSE, 'No.4,5;'))
                                                            ELSE NULL
                                                        END AS BLOCK_ELSE3_4
                                                    FROM(
                                                        SELECT *,
                                                            # NO.5
                                                            CASE
                                                                WHEN (INSTR(BINARY REBLOCK_ELSE, 'No.5;') != 0)
                                                                THEN SUBSTR(BINARY REBLOCK_ELSE, INSTR(BINARY REBLOCK_ELSE, 'No.5;'))
                                                                ELSE NULL
                                                            END AS BLOCK_ELSE1_5,
                                                            # NO.5-7
                                                            CASE
                                                                WHEN (INSTR(BINARY REBLOCK_ELSE, 'No.5-7;') != 0)
                                                                THEN BINARY SUBSTR(REBLOCK_ELSE, INSTR(BINARY REBLOCK_ELSE, 'No.5-7;'))
                                                                ELSE NULL
                                                            END AS BLOCK_ELSE2_5
                                                        FROM(
                                                            SELECT *,
                                                                # NO.6
                                                                CASE
                                                                    WHEN (INSTR(BINARY REBLOCK_ELSE, 'No.6;') != 0)
                                                                    THEN SUBSTR(BINARY REBLOCK_ELSE, INSTR(BINARY REBLOCK_ELSE, 'No.6;'))
                                                                    ELSE NULL
                                                                END AS BLOCK_ELSE1_6,
                                                                # NO.6,7
                                                                CASE
                                                                    WHEN (INSTR(BINARY REBLOCK_ELSE, 'No.6,7;') != 0)
                                                                    THEN BINARY SUBSTR(REBLOCK_ELSE, INSTR(BINARY REBLOCK_ELSE, 'No.6,7;'))
                                                                    ELSE NULL
                                                                END AS BLOCK_ELSE3_6
                                                            FROM(
                                                                SELECT *,
                                                                    # NO.7
                                                                    CASE
                                                                        WHEN (INSTR(BINARY REBLOCK_ELSE, 'No.7;') != 0)
                                                                        THEN SUBSTR(BINARY REBLOCK_ELSE, INSTR(BINARY REBLOCK_ELSE, 'No.7;'))
                                                                        ELSE NULL
                                                                    END AS BLOCK_ELSE1_7
                                                                FROM(
                                                                    SELECT *,
                                                                        # NO.8
                                                                        CASE
                                                                            WHEN (INSTR(BINARY REBLOCK_ELSE, 'No.8;') != 0)
                                                                            THEN SUBSTR(BINARY REBLOCK_ELSE, INSTR(BINARY REBLOCK_ELSE, 'No.8;'))
                                                                            ELSE NULL
                                                                        END AS BLOCK_ELSE1_8
                                                                    FROM(
                                                                        SELECT *,
                                                                            # NO.9
                                                                            CASE
                                                                                WHEN (INSTR(BINARY REBLOCK_ELSE, 'No.9;') != 0)
                                                                                THEN SUBSTR(BINARY REBLOCK_ELSE, INSTR(BINARY REBLOCK_ELSE, 'No.9;'))
                                                                                ELSE NULL
                                                                            END AS BLOCK_ELSE1_9,
                                                                            # NO.9-10
                                                                            CASE
                                                                                WHEN (INSTR(BINARY REBLOCK_ELSE, 'No.9-10') != 0)
                                                                                THEN BINARY SUBSTR(REBLOCK_ELSE, INSTR(BINARY REBLOCK_ELSE, 'No.9-10;'))
                                                                                ELSE NULL
                                                                            END AS BLOCK_ELSE2_9
                                                                        FROM(
                                                                            SELECT *,
                                                                                # NO.10
                                                                                CASE
                                                                                    WHEN (INSTR(BINARY REBLOCK_ELSE, 'No.10;') != 0)
                                                                                    THEN SUBSTR(BINARY REBLOCK_ELSE, INSTR(BINARY REBLOCK_ELSE, 'No.10;'))
                                                                                    ELSE NULL
                                                                                END AS BLOCK_ELSE1_10
                                                                            FROM test_type6_block_04
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
                                )a
                            ) a
                        ) a
                    ) a
                ) a
            ) a
        ) a
    ) a
) a