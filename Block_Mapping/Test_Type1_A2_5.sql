SELECT
    DISTINCT (원무접수ID),
    SLIDE_KEYS_1,
    SLIDE_KEYS_2,
    SLIDE_KEYS_3,
    SLIDE_KEYS_4,
    PARAFFIN_BLOCK_KEYS_1
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(SLIDE_KEYS1, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_R1_RE3, '') IS NOT NULL)
            THEN REPLACE(SLIDE_KEYS_R1_RE3, '; ', ';')
            ELSE SLIDE_KEYS1
        END AS SLIDE_KEYS_1
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(SLIDE_KEYS_R1_RE2, '') IS NOT NULL)
                THEN REPLACE(SLIDE_KEYS_R1_RE2, ' ;', ';')
                ELSE SLIDE_KEYS_R1_RE2
            END AS SLIDE_KEYS_R1_RE3
        FROM(
            SELECT *,
                CASE
                    WHEN (NULLIF(SLIDE_KEYS_R1_RE, '') IS NOT NULL)
                    THEN REPLACE(SLIDE_KEYS_R1_RE, ' ;', ';')
                    ELSE SLIDE_KEYS_R1_RE
                END AS SLIDE_KEYS_R1_RE2,
                CASE
                    WHEN (NULLIF(SLIDE_KEYS2, '') IS NOT NULL)
                    THEN SLIDE_KEYS2
                    ELSE NULL
                END AS SLIDE_KEYS_2,
                CASE
                    WHEN (NULLIF(SLIDE_KEYS3, '') IS NOT NULL)
                    THEN SLIDE_KEYS3
                    ELSE NULL
                END AS SLIDE_KEYS_3,
                CASE
                    WHEN (NULLIF(SLIDE_KEYS4, '') IS NOT NULL)
                    THEN SLIDE_KEYS4
                    ELSE NULL
                END AS SLIDE_KEYS_4
            FROM(
                SELECT *,
                    CASE
                        WHEN (NULLIF(EX1_A1_1, '') IS NOT NULL AND NULLIF(EX2_A2_1, '') IS NOT NULL AND NULLIF(EX3_A3_1, '') IS NULL AND NULLIF(EX4_A4_1, '') IS NULL AND NULLIF(EX5_A5_1, '') IS NULL AND NULLIF(EX6_A6_1, '') IS NULL AND NULLIF(EX7_A7_1, '') IS NULL AND NULLIF(EX8_A8_1, '') IS NULL AND NULLIF(EX9_A9_1, '') IS NULL AND NULLIF(EX10_A10_1, '') IS NULL)
                        THEN CONCAT(
                            CONCAT(
                                EX1_A1_1, ';'
                            ), EX2_A2_1
                        )
                        WHEN (NULLIF(EX1_A1_1, '') IS NOT NULL AND NULLIF(EX2_A2_1, '') IS NOT NULL AND NULLIF(EX3_A3_1, '') IS NOT NULL AND NULLIF(EX4_A4_1, '') IS NULL AND NULLIF(EX5_A5_1, '') IS NULL AND NULLIF(EX6_A6_1, '') IS NULL AND NULLIF(EX7_A7_1, '') IS NULL AND NULLIF(EX8_A8_1, '') IS NULL AND NULLIF(EX9_A9_1, '') IS NULL AND NULLIF(EX10_A10_1, '') IS NULL)
                        THEN CONCAT(
                            CONCAT(
                                CONCAT(
                                    CONCAT(
                                        EX1_A1_1, ';'
                                    ), EX2_A2_1
                                ), ';'
                            ), EX3_A3_1
                        )
                        WHEN (NULLIF(EX1_A1_1, '') IS NOT NULL AND NULLIF(EX2_A2_1, '') IS NOT NULL AND NULLIF(EX3_A3_1, '') IS NOT NULL AND NULLIF(EX4_A4_1, '') IS NOT NULL AND NULLIF(EX5_A5_1, '') IS NULL AND NULLIF(EX6_A6_1, '') IS NULL AND NULLIF(EX7_A7_1, '') IS NULL AND NULLIF(EX8_A8_1, '') IS NULL AND NULLIF(EX9_A9_1, '') IS NULL AND NULLIF(EX10_A10_1, '') IS NULL)
                        THEN CONCAT(
                            CONCAT(
                                CONCAT(
                                    CONCAT(
                                        CONCAT(
                                            CONCAT(
                                                EX1_A1_1, ';'
                                            ), EX2_A2_1
                                        ), ';'
                                    ), EX3_A3_1
                                ), ';'
                            ), EX4_A4_1
                        )
                        WHEN (NULLIF(EX1_A1_1, '') IS NOT NULL AND NULLIF(EX2_A2_1, '') IS NOT NULL AND NULLIF(EX3_A3_1, '') IS NOT NULL AND NULLIF(EX4_A4_1, '') IS NOT NULL AND NULLIF(EX5_A5_1, '') IS NOT NULL AND NULLIF(EX6_A6_1, '') IS NULL AND NULLIF(EX7_A7_1, '') IS NULL AND NULLIF(EX8_A8_1, '') IS NULL AND NULLIF(EX9_A9_1, '') IS NULL AND NULLIF(EX10_A10_1, '') IS NULL)
                        THEN CONCAT(
                            CONCAT(
                                CONCAT(
                                    CONCAT(
                                        CONCAT(
                                            CONCAT(
                                                CONCAT(
                                                    CONCAT(
                                                        EX1_A1_1, ';'
                                                    ), EX2_A2_1
                                                ), ';'
                                            ), EX3_A3_1
                                        ), ';'
                                    ), EX4_A4_1
                                ), ';'
                            ), EX5_A5_1
                        )
                        WHEN (NULLIF(EX1_A1_1, '') IS NOT NULL AND NULLIF(EX2_A2_1, '') IS NOT NULL AND NULLIF(EX3_A3_1, '') IS NOT NULL AND NULLIF(EX4_A4_1, '') IS NOT NULL AND NULLIF(EX5_A5_1, '') IS NOT NULL AND NULLIF(EX6_A6_1, '') IS NOT NULL AND NULLIF(EX7_A7_1, '') IS NULL AND NULLIF(EX8_A8_1, '') IS NULL AND NULLIF(EX9_A9_1, '') IS NULL AND NULLIF(EX10_A10_1, '') IS NULL)
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
                                                                EX1_A1_1, ';'
                                                            ), EX2_A2_1
                                                        ), ';'
                                                    ), EX3_A3_1
                                                ), ';'
                                            ), EX4_A4_1
                                        ), ';'
                                    ), EX5_A5_1
                                ), ';'
                            ), EX6_A6_1
                        )
                        WHEN (NULLIF(EX1_A1_1, '') IS NOT NULL AND NULLIF(EX2_A2_1, '') IS NOT NULL AND NULLIF(EX3_A3_1, '') IS NOT NULL AND NULLIF(EX4_A4_1, '') IS NOT NULL AND NULLIF(EX5_A5_1, '') IS NOT NULL AND NULLIF(EX6_A6_1, '') IS NOT NULL AND NULLIF(EX7_A7_1, '') IS NOT NULL AND NULLIF(EX8_A8_1, '') IS NULL AND NULLIF(EX9_A9_1, '') IS NULL AND NULLIF(EX10_A10_1, '') IS NULL)
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
                                                                        EX1_A1_1, ';'
                                                                    ), EX2_A2_1
                                                                ), ';'
                                                            ), EX3_A3_1
                                                        ), ';'
                                                    ), EX4_A4_1
                                                ), ';'
                                            ), EX5_A5_1
                                        ), ';'
                                    ), EX6_A6_1
                                ), ';'
                            ), EX7_A7_1
                        )
                        WHEN (NULLIF(EX1_A1_1, '') IS NOT NULL AND NULLIF(EX2_A2_1, '') IS NOT NULL AND NULLIF(EX3_A3_1, '') IS NOT NULL AND NULLIF(EX4_A4_1, '') IS NOT NULL AND NULLIF(EX5_A5_1, '') IS NOT NULL AND NULLIF(EX6_A6_1, '') IS NOT NULL AND NULLIF(EX7_A7_1, '') IS NOT NULL AND NULLIF(EX8_A8_1, '') IS NOT NULL AND NULLIF(EX9_A9_1, '') IS NULL AND NULLIF(EX10_A10_1, '') IS NULL)
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
                                                                        CONCAT(
                                                                            CONCAT(
                                                                                EX1_A1_1, ';'
                                                                            ), EX2_A2_1
                                                                        ), ';'
                                                                    ), EX3_A3_1
                                                                ), ';'
                                                            ), EX4_A4_1
                                                        ), ';'
                                                    ), EX5_A5_1
                                                ), ';'
                                            ), EX6_A6_1
                                        ), ';'
                                    ), EX7_A7_1
                                ), ';'
                            ), EX8_A8_1
                        )
                        WHEN (NULLIF(EX1_A1_1, '') IS NOT NULL AND NULLIF(EX2_A2_1, '') IS NOT NULL AND NULLIF(EX3_A3_1, '') IS NOT NULL AND NULLIF(EX4_A4_1, '') IS NOT NULL AND NULLIF(EX5_A5_1, '') IS NOT NULL AND NULLIF(EX6_A6_1, '') IS NOT NULL AND NULLIF(EX7_A7_1, '') IS NOT NULL AND NULLIF(EX8_A8_1, '') IS NOT NULL AND NULLIF(EX9_A9_1, '') IS NOT NULL AND NULLIF(EX10_A10_1, '') IS NULL)
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
                                                                        CONCAT(
                                                                            CONCAT(
                                                                                CONCAT(
                                                                                    CONCAT(
                                                                                        EX1_A1_1, ';'
                                                                                    ), EX2_A2_1
                                                                                ), ';'
                                                                            ), EX3_A3_1
                                                                        ), ';'
                                                                    ), EX4_A4_1
                                                                ), ';'
                                                            ), EX5_A5_1
                                                        ), ';'
                                                    ), EX6_A6_1
                                                ), ';'
                                            ), EX7_A7_1
                                        ), ';'
                                    ), EX8_A8_1
                                ), ';'
                            ), EX9_A9_1
                        )
                        WHEN (NULLIF(EX1_A1_1, '') IS NOT NULL AND NULLIF(EX2_A2_1, '') IS NOT NULL AND NULLIF(EX3_A3_1, '') IS NOT NULL AND NULLIF(EX4_A4_1, '') IS NOT NULL AND NULLIF(EX5_A5_1, '') IS NOT NULL AND NULLIF(EX6_A6_1, '') IS NOT NULL AND NULLIF(EX7_A7_1, '') IS NOT NULL AND NULLIF(EX8_A8_1, '') IS NOT NULL AND NULLIF(EX9_A9_1, '') IS NOT NULL AND NULLIF(EX10_A10_1, '') IS NOT NULL)
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
                                                                        CONCAT(
                                                                            CONCAT(
                                                                                CONCAT(
                                                                                    CONCAT(
                                                                                        CONCAT(
                                                                                            CONCAT(
                                                                                                EX1_A1_1, ';'
                                                                                            ), EX2_A2_1
                                                                                        ), ';'
                                                                                    ), EX3_A3_1
                                                                                ), ';'
                                                                            ), EX4_A4_1
                                                                        ), ';'
                                                                    ), EX5_A5_1
                                                                ), ';'
                                                            ), EX6_A6_1
                                                        ), ';'
                                                    ), EX7_A7_1
                                                ), ';'
                                            ), EX8_A8_1
                                        ), ';'
                                    ), EX9_A9_1
                                ), ';'
                            ), EX10_A10_1
                        )
                        ELSE NULL
                    END AS SLIDE_KEYS_R1_RE
                FROM(
                    SELECT *,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX1_1, ' [A-Z]{1,2}[0-9]{1,3}[-][A-Z]{1,2}[0-9]{1,3} ') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    CONCAT(
                                        CONCAT(
                                            SUBSTR(EX1_1, 1, REGEXP_INSTR(BINARY EX1_1, ' [A-Z]{1,2}[0-9]{1,3}[-][A-Z]{1,2}[0-9]{1,3}')), ';'
                                        ), SUBSTR(EX1_1, REGEXP_INSTR(BINARY EX1_1, '[A-Z]{1,2}[0-9]{1,3}[-][A-Z]{1,2}[0-9]{1,3}'), REGEXP_INSTR(BINARY EX1_1, '[0-9] [a-z]+'))
                                    ), ';'
                                ), REGEXP_REPLACE(SUBSTR(EX1_1, REGEXP_INSTR(BINARY EX1_1, '[0-9] [a-z]+')), '[0-9]', '')
                            )
                            ELSE EX1_1
                        END AS EX1_A1_1,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX2_1, ' [A-Z]{1,2}[0-9]{1,3}[-][A-Z]{1,2}[0-9]{1,3} ') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    CONCAT(
                                        CONCAT(
                                            SUBSTR(EX2_1, 1, REGEXP_INSTR(BINARY EX2_1, ' [A-Z]{1,2}[0-9]{1,3}[-][A-Z]{1,2}[0-9]{1,3}')), ';'
                                        ), SUBSTR(EX2_1, REGEXP_INSTR(BINARY EX2_1, '[A-Z]{1,2}[0-9]{1,3}[-][A-Z]{1,2}[0-9]{1,3}'), REGEXP_INSTR(BINARY EX2_1, '[0-9] [a-z]+'))
                                    ), ';'
                                ), REGEXP_REPLACE(SUBSTR(EX2_1, REGEXP_INSTR(BINARY EX2_1, '[0-9] [a-z]+')), '[0-9]', '')
                            )
                            ELSE EX2_1
                        END AS EX2_A2_1,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX3_1, ' [A-Z]{1,2}[0-9]{1,3}[-][A-Z]{1,2}[0-9]{1,3} ') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    CONCAT(
                                        CONCAT(
                                            SUBSTR(EX3_1, 1, REGEXP_INSTR(BINARY EX3_1, ' [A-Z]{1,2}[0-9]{1,3}[-][A-Z]{1,2}[0-9]{1,3}')), ';'
                                        ), REGEXP_REPLACE(SUBSTR(BINARY EX3_1, REGEXP_INSTR(BINARY EX3_1, '[A-Z]{1,2}[0-9]{1,3}[-]')), '[a-z]', '')
                                    ), ';'
                                ), REGEXP_REPLACE(SUBSTR(EX3_1, REGEXP_INSTR(BINARY EX3_1, '[0-9] [a-z]+')), '[0-9]', '')
                            )
                            ELSE EX3_1
                        END AS EX3_A3_1,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX4_1, ' [A-Z]{1,2}[0-9]{1,3}[-][A-Z]{1,2}[0-9]{1,3} ') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    CONCAT(
                                        CONCAT(
                                            SUBSTR(EX4_1, 1, REGEXP_INSTR(BINARY EX4_1, ' [A-Z]{1,2}[0-9]{1,3}[-][A-Z]{1,2}[0-9]{1,3}')), ';'
                                        ), SUBSTR(EX4_1, REGEXP_INSTR(BINARY EX4_1, '[A-Z]{1,2}[0-9]{1,3}[-][A-Z]{1,2}[0-9]{1,3}'), REGEXP_INSTR(BINARY EX4_1, '[0-9] [a-z]+'))
                                    ), ';'
                                ), REGEXP_REPLACE(SUBSTR(EX4_1, REGEXP_INSTR(BINARY EX4_1, '[0-9] [a-z]+')), '[0-9]', '')
                            )
                            ELSE EX4_1
                        END AS EX4_A4_1,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX5_1, ' [A-Z]{1,2}[0-9]{1,3}[-][A-Z]{1,2}[0-9]{1,3} ') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    CONCAT(
                                        CONCAT(
                                            SUBSTR(EX5_1, 1, REGEXP_INSTR(BINARY EX5_1, ' [A-Z]{1,2}[0-9]{1,3}[-][A-Z]{1,2}[0-9]{1,3}')), ';'
                                        ), SUBSTR(EX5_1, REGEXP_INSTR(BINARY EX5_1, '[A-Z]{1,2}[0-9]{1,3}[-][A-Z]{1,2}[0-9]{1,3}'), REGEXP_INSTR(BINARY EX5_1, '[0-9] [a-z]+'))
                                    ), ';'
                                ), REGEXP_REPLACE(SUBSTR(EX5_1, REGEXP_INSTR(BINARY EX5_1, '[0-9] [a-z]+')), '[0-9]', '')
                            )
                            ELSE EX5_1
                        END AS EX5_A5_1,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX6_1, ' [A-Z]{1,2}[0-9]{1,3}[-][A-Z]{1,2}[0-9]{1,3} ') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    CONCAT(
                                        CONCAT(
                                            SUBSTR(EX6_1, 1, REGEXP_INSTR(BINARY EX6_1, ' [A-Z]{1,2}[0-9]{1,3}[-][A-Z]{1,2}[0-9]{1,3}')), ';'
                                        ), SUBSTR(EX6_1, REGEXP_INSTR(BINARY EX6_1, '[A-Z]{1,2}[0-9]{1,3}[-][A-Z]{1,2}[0-9]{1,3}'), REGEXP_INSTR(BINARY EX6_1, '[0-9] [a-z]+'))
                                    ), ';'
                                ), REGEXP_REPLACE(SUBSTR(EX6_1, REGEXP_INSTR(BINARY EX6_1, '[0-9] [a-z]+')), '[0-9]', '')
                            )
                            ELSE EX6_1
                        END AS EX6_A6_1,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX7_1, ' [A-Z]{1,2}[0-9]{1,3}[-][A-Z]{1,2}[0-9]{1,3} ') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    CONCAT(
                                        CONCAT(
                                            SUBSTR(EX7_1, 1, REGEXP_INSTR(BINARY EX7_1, ' [A-Z]{1,2}[0-9]{1,3}[-][A-Z]{1,2}[0-9]{1,3}')), ';'
                                        ), SUBSTR(EX7_1, REGEXP_INSTR(BINARY EX7_1, '[A-Z]{1,2}[0-9]{1,3}[-][A-Z]{1,2}[0-9]{1,3}'), REGEXP_INSTR(BINARY EX7_1, '[0-9] [a-z]+'))
                                    ), ';'
                                ), REGEXP_REPLACE(SUBSTR(EX7_1, REGEXP_INSTR(BINARY EX7_1, '[0-9] [a-z]+')), '[0-9]', '')
                            )
                            ELSE EX7_1
                        END AS EX7_A7_1,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX8_1, ' [A-Z]{1,2}[0-9]{1,3}[-][A-Z]{1,2}[0-9]{1,3} ') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    CONCAT(
                                        CONCAT(
                                            SUBSTR(EX8_1, 1, REGEXP_INSTR(BINARY EX8_1, ' [A-Z]{1,2}[0-9]{1,3}[-][A-Z]{1,2}[0-9]{1,3}')), ';'
                                        ), SUBSTR(EX8_1, REGEXP_INSTR(BINARY EX8_1, '[A-Z]{1,2}[0-9]{1,3}[-][A-Z]{1,2}[0-9]{1,3}'), REGEXP_INSTR(BINARY EX8_1, '[0-9] [a-z]+'))
                                    ), ';'
                                ), REGEXP_REPLACE(SUBSTR(EX8_1, REGEXP_INSTR(BINARY EX8_1, '[0-9] [a-z]+')), '[0-9]', '')
                            )
                            ELSE EX8_1
                        END AS EX8_A8_1,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX9_1, ' [A-Z]{1,2}[0-9]{1,3}[-][A-Z]{1,2}[0-9]{1,3} ') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    CONCAT(
                                        CONCAT(
                                            SUBSTR(EX9_1, 1, REGEXP_INSTR(BINARY EX9_1, ' [A-Z]{1,2}[0-9]{1,3}[-][A-Z]{1,2}[0-9]{1,3}')), ';'
                                        ), SUBSTR(EX9_1, REGEXP_INSTR(BINARY EX9_1, '[A-Z]{1,2}[0-9]{1,3}[-][A-Z]{1,2}[0-9]{1,3}'), REGEXP_INSTR(BINARY EX9_1, '[0-9] [a-z]+'))
                                    ), ';'
                                ), REGEXP_REPLACE(SUBSTR(EX9_1, REGEXP_INSTR(BINARY EX9_1, '[0-9] [a-z]+')), '[0-9]', '')
                            )
                            ELSE EX9_1
                        END AS EX9_A9_1,
                        CASE
                            WHEN (REGEXP_INSTR(BINARY EX10_1, ' [A-Z]{1,2}[0-9]{1,3}[-][A-Z]{1,2}[0-9]{1,3} ') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    CONCAT(
                                        CONCAT(
                                            SUBSTR(EX10_1, 1, REGEXP_INSTR(BINARY EX10_1, ' [A-Z]{1,2}[0-9]{1,3}[-][A-Z]{1,2}[0-9]{1,3}')), ';'
                                        ), SUBSTR(EX10_1, REGEXP_INSTR(BINARY EX10_1, '[A-Z]{1,2}[0-9]{1,3}[-][A-Z]{1,2}[0-9]{1,3}'), REGEXP_INSTR(BINARY EX10_1, '[0-9] [a-z]+'))
                                    ), ';'
                                ), REGEXP_REPLACE(SUBSTR(EX10_1, REGEXP_INSTR(BINARY EX10_1, '[0-9] [a-z]+')), '[0-9]', '')
                            )
                            ELSE EX10_1
                        END AS EX10_A10_1
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (NULLIF(SLIDE_KEYS_ELSE, REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 1)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 1)
                                ELSE NULL
                            END AS EX1_1,
                            CASE
                                WHEN (NULLIF(SLIDE_KEYS_ELSE, REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 2)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 2)
                                ELSE NULL
                            END AS EX2_1,
                            CASE
                                WHEN (NULLIF(SLIDE_KEYS_ELSE, REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 3)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 3)
                                ELSE NULL
                            END AS EX3_1,
                            CASE
                                WHEN (NULLIF(SLIDE_KEYS_ELSE, REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 4)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 4)
                                ELSE NULL
                            END AS EX4_1,
                            CASE
                                WHEN (NULLIF(SLIDE_KEYS_ELSE, REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 5)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 5)
                                ELSE NULL
                            END AS EX5_1,
                            CASE
                                WHEN (NULLIF(SLIDE_KEYS_ELSE, REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 6)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 6)
                                ELSE NULL
                            END AS EX6_1,
                            CASE
                                WHEN (NULLIF(SLIDE_KEYS_ELSE, REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 7)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 7)
                                ELSE NULL
                            END AS EX7_1,
                            CASE
                                WHEN (NULLIF(SLIDE_KEYS_ELSE, REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 8)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 8)
                                ELSE NULL
                            END AS EX8_1,
                            CASE
                                WHEN (NULLIF(SLIDE_KEYS_ELSE, REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 9)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 9)
                                ELSE NULL
                            END AS EX9_1,
                            CASE
                                WHEN (NULLIF(SLIDE_KEYS_ELSE, REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 10)) IS NOT NULL)
                                THEN REGEXP_SUBSTR(SLIDE_KEYS_ELSE, '[^;]+', 1, 10)
                                ELSE NULL
                            END AS EX10_1
                        FROM(
                            SELECT *,
                                CASE
                                    WHEN (REGEXP_INSTR(BINARY SLIDE_KEYS1, ' [A-Z]{1,2}[0-9]{1,3}[-][A-Z]{1,2}[0-9]{1,3} ') != 0)
                                    THEN SLIDE_KEYS1
                                    ELSE NULL
                                END AS SLIDE_KEYS_ELSE
                            FROM test_type1_a2_4
                        ) a
                    ) a
                ) a
            ) a
        ) a
    ) a
) a