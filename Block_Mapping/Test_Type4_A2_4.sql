SELECT
    원무접수ID,
    PARAFFIN_BLOCK_KEYS_1,
    PARAFFIN_BLOCK_KEYS_2,
    SLIDE_KEYS_1
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_R1, '') IS NOT NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_R1_RE, '') IS NOT NULL)
            THEN PARAFFIN_BLOCK_KEYS_R1_RE
            ELSE PARAFFIN_BLOCK_KEYS_R1
        END AS PARAFFIN_BLOCK_KEYS_1,
        CASE
            WHEN (NULLIF(SLIDE_KEYS_R1, '') IS NOT NULL)
            THEN SLIDE_KEYS_R1
            ELSE NULL
        END AS SLIDE_KEYS_1
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_R2, '') IS NOT NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_R2_RE, '') IS NOT NULL)
                THEN REPLACE(PARAFFIN_BLOCK_KEYS_R2_RE, ' ;', ';')
                ELSE PARAFFIN_BLOCK_KEYS_R2
            END AS PARAFFIN_BLOCK_KEYS_2
        FROM(
            SELECT *,
                CASE
                    WHEN (NULLIF(EX1_A1, '') IS NOT NULL AND NULLIF(EX2_A2, '') IS NOT NULL AND NULLIF(EX3_A3, '') IS NULL AND NULLIF(EX4_A4, '') IS NULL AND NULLIF(EX5_A5, '') IS NULL AND NULLIF(EX6_A6, '') IS NULL AND NULLIF(EX7_A7, '') IS NULL)
                    THEN CONCAT(
                        CONCAT(
                            EX1_A1, ';'
                        ), EX2_A2
                    )
                    WHEN (NULLIF(EX1_A1, '') IS NOT NULL AND NULLIF(EX2_A2, '') IS NOT NULL AND NULLIF(EX3_A3, '') IS NOT NULL AND NULLIF(EX4_A4, '') IS NULL AND NULLIF(EX5_A5, '') IS NULL AND NULLIF(EX6_A6, '') IS NULL AND NULLIF(EX7_A7, '') IS NULL)
                    THEN CONCAT(
                        CONCAT(
                            CONCAT(
                                CONCAT(
                                    EX1_A1, ';'
                                ), EX2_A2
                            ), ';'
                        ), EX3_A3
                    )
                    WHEN (NULLIF(EX1_A1, '') IS NOT NULL AND NULLIF(EX2_A2, '') IS NOT NULL AND NULLIF(EX3_A3, '') IS NOT NULL AND NULLIF(EX4_A4, '') IS NOT NULL AND NULLIF(EX5_A5, '') IS NULL AND NULLIF(EX6_A6, '') IS NULL AND NULLIF(EX7_A7, '') IS NULL)
                    THEN CONCAT(
                        CONCAT(
                            CONCAT(
                                CONCAT(
                                    CONCAT(
                                        CONCAT(
                                            EX1_A1, ';'
                                        ), EX2_A2
                                    ), ';'
                                ), EX3_A3
                            ), ';'
                        ), EX4_A4
                    )
                    WHEN (NULLIF(EX1_A1, '') IS NOT NULL AND NULLIF(EX2_A2, '') IS NOT NULL AND NULLIF(EX3_A3, '') IS NOT NULL AND NULLIF(EX4_A4, '') IS NOT NULL AND NULLIF(EX5_A5, '') IS NOT NULL AND NULLIF(EX6_A6, '') IS NULL AND NULLIF(EX7_A7, '') IS NULL)
                    THEN CONCAT(
                        CONCAT(
                            CONCAT(
                                CONCAT(
                                    CONCAT(
                                        CONCAT(
                                            CONCAT(
                                                CONCAT(
                                                    EX1_A1, ';'
                                                ), EX2_A2
                                            ), ';'
                                        ), EX3_A3
                                    ), ';'
                                ), EX4_A4
                            ), ';'
                        ), EX5_A5
                    )
                    WHEN (NULLIF(EX1_A1, '') IS NOT NULL AND NULLIF(EX2_A2, '') IS NOT NULL AND NULLIF(EX3_A3, '') IS NOT NULL AND NULLIF(EX4_A4, '') IS NOT NULL AND NULLIF(EX5_A5, '') IS NOT NULL AND NULLIF(EX6_A6, '') IS NOT NULL AND NULLIF(EX7_A7, '') IS NULL)
                    THEN CONCAT(
                        CONCAT(
                            CONCAT(
                                CONCAT(
                                    CONCAT(
                                        CONCAT(
                                            CONCAT(
                                                CONCAT(
                                                    CONCAT(
                                                        CONCAT(
                                                            EX1_A1, ';'
                                                        ), EX2_A2
                                                    ), ';'
                                                ), EX3_A3
                                            ), ';'
                                        ), EX4_A4
                                    ), ';'
                                ), EX5_A5
                            ), ';'
                        ), EX6_A6
                    )
                    WHEN (NULLIF(EX1_A1, '') IS NOT NULL AND NULLIF(EX2_A2, '') IS NOT NULL AND NULLIF(EX3_A3, '') IS NOT NULL AND NULLIF(EX4_A4, '') IS NOT NULL AND NULLIF(EX5_A5, '') IS NOT NULL AND NULLIF(EX6_A6, '') IS NOT NULL AND NULLIF(EX7_A7, '') IS NOT NULL)
                    THEN CONCAT(
                        CONCAT(
                            CONCAT(
                                CONCAT(
                                    CONCAT(
                                        CONCAT(
                                            CONCAT(
                                                CONCAT(
                                                    CONCAT(
                                                        CONCAT(
                                                            CONCAT(
                                                                CONCAT(
                                                                    EX1_A1, ';'
                                                                ), EX2_A2
                                                            ), ';'
                                                        ), EX3_A3
                                                    ), ';'
                                                ), EX4_A4
                                            ), ';'
                                        ), EX5_A5
                                    ), ';'
                                ), EX6_A6
                            ), ';'
                        ), EX7_A7
                    )
                    ELSE NULL
                END AS PARAFFIN_BLOCK_KEYS_R2_RE
            FROM(
                SELECT *,
                    CASE
                        WHEN (REGEXP_INSTR(BINARY EX1, '[0-9] [A-z]+') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SUBSTR(EX1, 1, REGEXP_INSTR(EX1, '[0-9] ')), ';'
                            ), SUBSTR(EX1, REGEXP_INSTR(BINARY EX1, '[A-z]+'))
                        )
                        WHEN (REGEXP_INSTR(BINARY EX1, '[A-z]+ [0-9]') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SUBSTR(EX1, 1, REGEXP_INSTR(BINARY EX1, ' [0-9]')), ';'
                            ), SUBSTR(EX1, REGEXP_INSTR(EX1, '[0-9]'))
                        )
                        ELSE EX1
                    END AS EX1_A1,
                    CASE
                        WHEN (REGEXP_INSTR(BINARY EX2, '[0-9] [A-z]+') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SUBSTR(EX2, 1, REGEXP_INSTR(EX2, '[0-9] ')), ';'
                            ), SUBSTR(EX2, REGEXP_INSTR(BINARY EX2, '[A-z]+'))
                        )
                        WHEN (REGEXP_INSTR(BINARY EX2, '[A-z]+ [0-9]') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SUBSTR(EX2, 1, REGEXP_INSTR(BINARY EX2, ' [0-9]')), ';'
                            ), SUBSTR(EX2, REGEXP_INSTR(EX2, '[0-9]'))
                        )
                        ELSE EX2
                    END AS EX2_A2,
                    CASE
                        WHEN (REGEXP_INSTR(BINARY EX3, '[0-9] [A-z]+') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SUBSTR(EX3, 1, REGEXP_INSTR(EX3, '[0-9] ')), ';'
                            ), SUBSTR(EX3, REGEXP_INSTR(BINARY EX3, '[A-z]+'))
                        )
                        WHEN (REGEXP_INSTR(BINARY EX3, '[A-z]+ [0-9]') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SUBSTR(EX3, 1, REGEXP_INSTR(BINARY EX3, ' [0-9]')), ';'
                            ), SUBSTR(EX3, REGEXP_INSTR(EX3, '[0-9]'))
                        )
                        ELSE EX3
                    END AS EX3_A3,
                    CASE
                        WHEN (REGEXP_INSTR(BINARY EX4, '[0-9] [A-z]+') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SUBSTR(EX4, 1, REGEXP_INSTR(EX4, '[0-9] ')), ';'
                            ), SUBSTR(EX4, REGEXP_INSTR(BINARY EX4, '[A-z]+'))
                        )
                        WHEN (REGEXP_INSTR(BINARY EX4, '[A-z]+ [0-9]') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SUBSTR(EX4, 1, REGEXP_INSTR(BINARY EX4, ' [0-9]')), ';'
                            ), SUBSTR(EX4, REGEXP_INSTR(EX4, '[0-9]'))
                        )
                        ELSE EX4
                    END AS EX4_A4,
                    CASE
                        WHEN (REGEXP_INSTR(BINARY EX5, '[0-9] [A-z]+') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SUBSTR(EX5, 1, REGEXP_INSTR(EX5, '[0-9] ')), ';'
                            ), SUBSTR(EX5, REGEXP_INSTR(BINARY EX5, '[A-z]+'))
                        )
                        WHEN (REGEXP_INSTR(BINARY EX5, '[A-z]+ [0-9]') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SUBSTR(EX5, 1, REGEXP_INSTR(BINARY EX5, ' [0-9]')), ';'
                            ), SUBSTR(EX5, REGEXP_INSTR(EX5, '[0-9]'))
                        )
                        ELSE EX5
                    END AS EX5_A5,
                    CASE
                        WHEN (REGEXP_INSTR(BINARY EX6, '[0-9] [A-z]+') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SUBSTR(EX6, 1, REGEXP_INSTR(EX6, '[0-9] ')), ';'
                            ), SUBSTR(EX6, REGEXP_INSTR(BINARY EX6, '[A-z]+'))
                        )
                        WHEN (REGEXP_INSTR(BINARY EX6, '[A-z]+ [0-9]') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SUBSTR(EX6, 1, REGEXP_INSTR(BINARY EX6, ' [0-9]')), ';'
                            ), SUBSTR(EX6, REGEXP_INSTR(EX6, '[0-9]'))
                        )
                        ELSE EX6
                    END AS EX6_A6,
                    CASE
                        WHEN (REGEXP_INSTR(BINARY EX7, '[0-9] [A-z]+') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SUBSTR(EX7, 1, REGEXP_INSTR(EX7, '[0-9] ')), ';'
                            ), SUBSTR(EX7, REGEXP_INSTR(BINARY EX7, '[A-z]+'))
                        )
                        WHEN (REGEXP_INSTR(BINARY EX7, '[A-z]+ [0-9]') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SUBSTR(EX7, 1, REGEXP_INSTR(BINARY EX7, ' [0-9]')), ';'
                            ), SUBSTR(EX7, REGEXP_INSTR(EX7, '[0-9]'))
                        )
                        ELSE EX7
                    END AS EX7_A7
                FROM(
                    SELECT *,
                        CASE
                            WHEN (NULLIF(REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_R2_ELSE, '[^;]+', 1, 1), '') IS NOT NULL)
                            THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_R2_ELSE, '[^;]+', 1, 1)
                            ELSE NULL
                        END AS EX1,
                        CASE
                            WHEN (NULLIF(REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_R2_ELSE, '[^;]+', 1, 2), '') IS NOT NULL)
                            THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_R2_ELSE, '[^;]+', 1, 2)
                            ELSE NULL
                        END AS EX2,
                        CASE
                            WHEN (NULLIF(REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_R2_ELSE, '[^;]+', 1, 3), '') IS NOT NULL)
                            THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_R2_ELSE, '[^;]+', 1, 3)
                            ELSE NULL
                        END AS EX3,
                        CASE
                            WHEN (NULLIF(REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_R2_ELSE, '[^;]+', 1, 4), '') IS NOT NULL)
                            THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_R2_ELSE, '[^;]+', 1, 4)
                            ELSE NULL
                        END AS EX4,
                        CASE
                            WHEN (NULLIF(REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_R2_ELSE, '[^;]+', 1, 5), '') IS NOT NULL)
                            THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_R2_ELSE, '[^;]+', 1, 5)
                            ELSE NULL
                        END AS EX5,
                        CASE
                            WHEN (NULLIF(REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_R2_ELSE, '[^;]+', 1, 6), '') IS NOT NULL)
                            THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_R2_ELSE, '[^;]+', 1, 6)
                            ELSE NULL
                        END AS EX6,
                        CASE
                            WHEN (NULLIF(REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_R2_ELSE, '[^;]+', 1, 7), '') IS NOT NULL)
                            THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_R2_ELSE, '[^;]+', 1, 7)
                            ELSE NULL
                        END AS EX7
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_R1, '') IS NOT NULL AND INSTR(BINARY PARAFFIN_BLOCK_KEYS_R1, ';20;') != 0)
                                THEN REPLACE(PARAFFIN_BLOCK_KEYS_R1, ';20;', ';A20;')
                                ELSE NULL
                            END AS PARAFFIN_BLOCK_KEYS_R1_RE,
                            CASE
                                WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_R2, '') IS NOT NULL AND REGEXP_INSTR(BINARY PARAFFIN_BLOCK_KEYS_R2, '[0-9] [A-z]+') != 0)
                                THEN PARAFFIN_BLOCK_KEYS_R2
                                WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_R2, '') IS NOT NULL AND REGEXP_INSTR(BINARY PARAFFIN_BLOCK_KEYS_R2, '[A-z]+ [0-9]') != 0)
                                THEN PARAFFIN_BLOCK_KEYS_R2
                                ELSE NULL
                            END AS PARAFFIN_BLOCK_KEYS_R2_ELSE
                        FROM test_type4_a2_3
                    ) a
                ) a
            ) a
        ) a
    ) a
) a