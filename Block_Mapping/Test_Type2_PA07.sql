SELECT
    원무접수ID,
    E_PA7,
    PA7,
    PARAFFIN_BLOCK_KEYS_A7,
    PARAFFIN_BLOCK_KEYS_1,
    PARAFFIN_BLOCK_KEYS_2,
    PARAFFIN_BLOCK_KEYS_3
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(E_PA7_1, '') IS NOT NULL)
            THEN E_PA7_1
            WHEN (NULLIF(E_PA7_2, '') IS NOT NULL)
            THEN E_PA7_2
            WHEN (NULLIF(E_PA7_3, '') IS NOT NULL)
            THEN E_PA7_3
            ELSE NULL
        END AS E_PA7,
        CASE
            WHEN (NULLIF(PA7_1, '') IS NOT NULL)
            THEN PA7_1
            WHEN (NULLIF(PA7_2, '') IS NOT NULL)
            THEN PA7_2
            WHEN (NULLIF(PA7_3, '') IS NOT NULL)
            THEN PA7_3
            ELSE NULL
        END AS PA7
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(PA7_1_1, '') IS NOT NULL AND NULLIF(PA7_1_1_1, '') IS NULL AND NULLIF(PA7_1_1_2, '') IS NULL AND NULLIF(PA7_1_1_3, '') IS NULL AND NULLIF(PA7_1_1_4, '') IS NULL)
                THEN PA7_1_1
                WHEN (NULLIF(PA7_1_1, '') IS NOT NULL AND NULLIF(PA7_1_1_1, '') IS NOT NULL AND NULLIF(PA7_1_1_2, '') IS NULL AND NULLIF(PA7_1_1_3, '') IS NULL AND NULLIF(PA7_1_1_4, '') IS NULL)
                THEN PA7_1_1_1
                WHEN (NULLIF(PA7_1_1, '') IS NOT NULL AND NULLIF(PA7_1_1_1, '') IS NOT NULL AND NULLIF(PA7_1_1_2, '') IS NOT NULL AND NULLIF(PA7_1_1_3, '') IS NULL AND NULLIF(PA7_1_1_4, '') IS NULL)
                THEN PA7_1_1_2
                WHEN (NULLIF(PA7_1_1, '') IS NOT NULL AND NULLIF(PA7_1_1_1, '') IS NOT NULL AND NULLIF(PA7_1_1_2, '') IS NOT NULL AND NULLIF(PA7_1_1_3, '') IS NOT NULL AND NULLIF(PA7_1_1_4, '') IS NULL)
                THEN PA7_1_1_3
                WHEN (NULLIF(PA7_1_1, '') IS NOT NULL AND NULLIF(PA7_1_1_1, '') IS NOT NULL AND NULLIF(PA7_1_1_2, '') IS NOT NULL AND NULLIF(PA7_1_1_3, '') IS NOT NULL AND NULLIF(PA7_1_1_4, '') IS NOT NULL)
                THEN PA7_1_1_4
                WHEN (NULLIF(PA7_1_2, '') IS NOT NULL AND NULLIF(PA7_1_2_1, '') IS NULL AND NULLIF(PA7_1_2_2, '') IS NULL AND NULLIF(PA7_1_2_3, '') IS NULL AND NULLIF(PA7_1_2_4, '') IS NULL)
                THEN PA7_1_2
                WHEN (NULLIF(PA7_1_2, '') IS NOT NULL AND NULLIF(PA7_1_2_1, '') IS NOT NULL AND NULLIF(PA7_1_2_2, '') IS NULL AND NULLIF(PA7_1_2_3, '') IS NULL AND NULLIF(PA7_1_2_4, '') IS NULL)
                THEN PA7_1_2_1
                WHEN (NULLIF(PA7_1_2, '') IS NOT NULL AND NULLIF(PA7_1_2_1, '') IS NOT NULL AND NULLIF(PA7_1_2_2, '') IS NOT NULL AND NULLIF(PA7_1_2_3, '') IS NULL AND NULLIF(PA7_1_2_4, '') IS NULL)
                THEN PA7_1_2_2
                WHEN (NULLIF(PA7_1_2, '') IS NOT NULL AND NULLIF(PA7_1_2_1, '') IS NOT NULL AND NULLIF(PA7_1_2_2, '') IS NOT NULL AND NULLIF(PA7_1_2_3, '') IS NOT NULL AND NULLIF(PA7_1_2_4, '') IS NULL)
                THEN PA7_1_2_3
                WHEN (NULLIF(PA7_1_2, '') IS NOT NULL AND NULLIF(PA7_1_2_1, '') IS NOT NULL AND NULLIF(PA7_1_2_2, '') IS NOT NULL AND NULLIF(PA7_1_2_3, '') IS NOT NULL AND NULLIF(PA7_1_2_4, '') IS NOT NULL)
                THEN PA7_1_2_4
                ELSE NULL
            END AS PA7_1,
            CASE
                WHEN (NULLIF(PA7_2_1, '') IS NOT NULL)
                THEN PA7_2_1
                ELSE NULL
            END AS PA7_2,
            CASE
                WHEN (NULLIF(PA7_3_1, '') IS NOT NULL AND NULLIF(PA7_3_1_1, '') IS NULL AND NULLIF(PA7_3_1_2, '') IS NULL AND NULLIF(PA7_3_1_3, '') IS NULL AND NULLIF(PA7_3_1_4, '') IS NULL)
                THEN PA7_3_1
                WHEN (NULLIF(PA7_3_1, '') IS NOT NULL AND NULLIF(PA7_3_1_1, '') IS NOT NULL AND NULLIF(PA7_3_1_2, '') IS NULL AND NULLIF(PA7_3_1_3, '') IS NULL AND NULLIF(PA7_3_1_4, '') IS NULL)
                THEN PA7_3_1_1
                WHEN (NULLIF(PA7_3_1, '') IS NOT NULL AND NULLIF(PA7_3_1_1, '') IS NOT NULL AND NULLIF(PA7_3_1_2, '') IS NOT NULL AND NULLIF(PA7_3_1_3, '') IS NULL AND NULLIF(PA7_3_1_4, '') IS NULL)
                THEN PA7_3_1_2
                WHEN (NULLIF(PA7_3_1, '') IS NOT NULL AND NULLIF(PA7_3_1_1, '') IS NOT NULL AND NULLIF(PA7_3_1_2, '') IS NOT NULL AND NULLIF(PA7_3_1_3, '') IS NOT NULL AND NULLIF(PA7_3_1_4, '') IS NULL)
                THEN PA7_3_1_3
                WHEN (NULLIF(PA7_3_1, '') IS NOT NULL AND NULLIF(PA7_3_1_1, '') IS NOT NULL AND NULLIF(PA7_3_1_2, '') IS NOT NULL AND NULLIF(PA7_3_1_3, '') IS NOT NULL AND NULLIF(PA7_3_1_4, '') IS NOT NULL)
                THEN PA7_3_1_4
                WHEN (NULLIF(PA7_3_2, '') IS NOT NULL AND NULLIF(PA7_3_2_1, '') IS NULL AND NULLIF(PA7_3_2_2, '') IS NULL AND NULLIF(PA7_3_2_3, '') IS NULL AND NULLIF(PA7_3_2_4, '') IS NULL)
                THEN PA7_3_2
                WHEN (NULLIF(PA7_3_2, '') IS NOT NULL AND NULLIF(PA7_3_2_1, '') IS NOT NULL AND NULLIF(PA7_3_2_2, '') IS NULL AND NULLIF(PA7_3_2_3, '') IS NULL AND NULLIF(PA7_3_2_4, '') IS NULL)
                THEN PA7_3_2_1
                WHEN (NULLIF(PA7_3_2, '') IS NOT NULL AND NULLIF(PA7_3_2_1, '') IS NOT NULL AND NULLIF(PA7_3_2_2, '') IS NOT NULL AND NULLIF(PA7_3_2_3, '') IS NULL AND NULLIF(PA7_3_2_4, '') IS NULL)
                THEN PA7_3_2_2
                WHEN (NULLIF(PA7_3_2, '') IS NOT NULL AND NULLIF(PA7_3_2_1, '') IS NOT NULL AND NULLIF(PA7_3_2_2, '') IS NOT NULL AND NULLIF(PA7_3_2_3, '') IS NOT NULL AND NULLIF(PA7_3_2_4, '') IS NULL)
                THEN PA7_3_2_3
                WHEN (NULLIF(PA7_3_2, '') IS NOT NULL AND NULLIF(PA7_3_2_1, '') IS NOT NULL AND NULLIF(PA7_3_2_2, '') IS NOT NULL AND NULLIF(PA7_3_2_3, '') IS NOT NULL AND NULLIF(PA7_3_2_4, '') IS NOT NULL)
                THEN PA7_3_2_4
                ELSE NULL
            END AS PA7_3
        FROM(
            SELECT *,
                CASE
                    WHEN (NULLIF(E_PA7_1_1, '') IS NOT NULL)
                    THEN E_PA7_1_1
                    WHEN (NULLIF(E_PA7_1_2, '') IS NOT NULL)
                    THEN E_PA7_1_2
                    ELSE NULL
                END AS E_PA7_1,
                CASE
                    WHEN (NULLIF(E_PA7_2_1, '') IS NOT NULL)
                    THEN E_PA7_2_1
                    ELSE NULL
                END AS E_PA7_2,
                CASE
                    WHEN (NULLIF(E_PA7_3_1, '') IS NOT NULL)
                    THEN E_PA7_3_1
                    WHEN (NULLIF(E_PA7_3_2, '') IS NOT NULL)
                    THEN E_PA7_3_2
                    ELSE NULL
                END AS E_PA7_3
            FROM(
                SELECT *,
                    CASE
                        WHEN (NULLIF(PA7_1_1_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_1_7, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                PA7_1_1_3, ';'
                            ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_1_7, '[^;]+', 1, 6)
                        )
                        ELSE NULL
                    END AS PA7_1_1_4,
                    CASE
                        WHEN (NULLIF(PA7_1_2_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_1_7, '[^;]+', 1, 7), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                PA7_1_2_3, ';'
                            ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_1_7, '[^;]+', 1, 7)
                        )
                        ELSE NULL
                    END AS PA7_1_2_4,
                    CASE
                        WHEN (NULLIF(PA7_3_1_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 6), '^[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                PA7_3_1_3, ';'
                            ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 6)
                        )
                        WHEN (NULLIF(PA7_3_1_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                PA7_3_1_3, ';'
                            ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 6)
                        )
                        ELSE NULL
                    END AS PA7_3_1_4,
                    CASE
                        WHEN (NULLIF(PA7_3_2_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 7), '^[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                PA7_3_2_3, ';'
                            ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 7)
                        )
                        WHEN (NULLIF(PA7_3_2_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 7), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                PA7_3_2_3, ';'
                            ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 7)
                        )
                        ELSE NULL
                    END AS PA7_3_2_4
                FROM(
                    SELECT *,
                        CASE
                            WHEN (NULLIF(PA7_1_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_1_7, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    PA7_1_1_2, ';'
                                ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_1_7, '[^;]+', 1, 5)
                            )
                            ELSE NULL
                        END AS PA7_1_1_3,
                        CASE
                            WHEN (NULLIF(PA7_1_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_1_7, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    PA7_1_2_2, ';'
                                ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_1_7, '[^;]+', 1, 6)
                            )
                            ELSE NULL
                        END AS PA7_1_2_3,
                        CASE
                            WHEN (NULLIF(PA7_3_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 5), '^[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    PA7_3_1_2, ';'
                                ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 5)
                            )
                            WHEN (NULLIF(PA7_3_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    PA7_3_1_2, ';'
                                ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 5)
                            )
                            ELSE NULL
                        END AS PA7_3_1_3,
                        CASE
                            WHEN (NULLIF(PA7_3_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 6), '^[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    PA7_3_2_2, ';'
                                ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 6)
                            )
                            WHEN (NULLIF(PA7_3_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    PA7_3_2_2, ';'
                                ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 6)
                            )
                            ELSE NULL
                        END AS PA7_3_2_3
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (NULLIF(PA7_1_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_1_7, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        PA7_1_1_1, ';'
                                    ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_1_7, '[^;]+', 1, 4)
                                )
                                ELSE NULL
                            END AS PA7_1_1_2,
                            CASE
                                WHEN (NULLIF(PA7_1_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_1_7, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        PA7_1_2_1, ';'
                                    ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_1_7, '[^;]+', 1, 5)
                                )
                                ELSE NULL
                            END AS PA7_1_2_2,
                            CASE
                                WHEN (NULLIF(PA7_3_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 4), '^[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        PA7_3_1_1, ';'
                                    ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 4)
                                )
                                WHEN (NULLIF(PA7_3_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        PA7_3_1_1, ';'
                                    ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 4)
                                )
                                ELSE NULL
                            END AS PA7_3_1_2,
                            CASE
                                WHEN (NULLIF(PA7_3_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 5), '^[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        PA7_3_2_1, ';'
                                    ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 5)
                                )
                                WHEN (NULLIF(PA7_3_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        PA7_3_2_1, ';'
                                    ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 5)
                                )
                                ELSE NULL
                            END AS PA7_3_2_2
                        FROM(
                            SELECT *,
                                CASE
                                    WHEN (NULLIF(PA7_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_1_7, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            PA7_1_1, ';'
                                        ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_1_7, '[^;]+', 1, 3)
                                    )
                                    ELSE NULL
                                END AS PA7_1_1_1,
                                CASE
                                    WHEN (NULLIF(PA7_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_1_7, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            PA7_1_2, ';'
                                        ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_1_7, '[^;]+', 1, 4)
                                    )
                                    ELSE NULL
                                END AS PA7_1_2_1,
                                CASE
                                    WHEN (NULLIF(PA7_3_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 3), '^[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            PA7_3_1, ';'
                                        ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 3)
                                    )
                                    WHEN (NULLIF(PA7_3_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            PA7_3_1, ';'
                                        ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 3)
                                    )
                                    ELSE NULL
                                END AS PA7_3_1_1,
                                CASE
                                    WHEN (NULLIF(PA7_3_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 4), '^[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            PA7_3_2, ';'
                                        ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 4)
                                    )
                                    WHEN (NULLIF(PA7_3_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            PA7_3_2, ';'
                                        ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 4)
                                    )
                                    ELSE NULL
                                END AS PA7_3_2_1
                            FROM(
                                SELECT *,
                                    CASE
                                        WHEN (NULLIF(E_PA7_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_1_7, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_1_7, '[^;]+', 1, 2)
                                        ELSE NULL
                                    END AS PA7_1_1,
                                    CASE
                                        WHEN (NULLIF(E_PA7_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_1_7, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_1_7, '[^;]+', 1, 3)
                                        ELSE NULL
                                    END AS PA7_1_2,
                                    CASE
                                        WHEN (NULLIF(E_PA7_2_1, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_2_7, '[^;]+', 1, 2)
                                        ELSE NULL
                                    END AS PA7_2_1,
                                    CASE
                                        WHEN (NULLIF(E_PA7_3_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 2), '^[0-9]{1,3}') != 0)
                                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 2)
                                        WHEN (NULLIF(E_PA7_3_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 2)
                                        ELSE NULL
                                    END AS PA7_3_1,
                                    CASE
                                        WHEN (NULLIF(E_PA7_3_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 3), '^[0-9]{1,3}') != 0)
                                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 3)
                                        WHEN (NULLIF(E_PA7_3_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 3)
                                        ELSE NULL
                                    END AS PA7_3_2
                                FROM(
                                    SELECT *,
                                        CASE
                                            WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_1_7, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_1_7, '[^;]+', 1, 1), '[A-Z]{1,2}[0-9]{1,3}') = 0)
                                            THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_1_7, '[^;]+', 1, 1)
                                            ELSE NULL
                                        END AS E_PA7_1_1,
                                        CASE
                                            WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_1_7, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_1_7, '[^;]+', 1, 1), '[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_1_7, '[^;]+', 1, 2), '[A-Z]{1,2}[0-9]{1,3}') = 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_1_7, '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_1_7, '[^;]+', 1, 2)
                                            )
                                            ELSE NULL
                                        END AS E_PA7_1_2,
                                        CASE
                                            WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_2_7, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_2_7, '[^;]+', 1, 2), '[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_2_7, '[^;]+', 1, 1)
                                            ELSE NULL
                                        END AS E_PA7_2_1,
                                        CASE
                                            WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_3_7, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 2), '^[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 1)
                                            WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_3_7, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 1)
                                            ELSE NULL
                                        END AS E_PA7_3_1,
                                        CASE
                                            WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_3_7, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 2), '^[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 3), '^[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 2)
                                            )
                                            WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_3_7, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 2), '^[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 2)
                                            )
                                            WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_3_7, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 3), '^[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 2)
                                            )
                                            WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_3_7, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_3_7, '[^;]+', 1, 2)
                                            )
                                            ELSE NULL
                                        END AS E_PA7_3_2
                                    FROM(
                                        SELECT *,
                                            CASE
                                                WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_A7, '') IS NOT NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_1, '') IS NOT NULL)
                                                THEN PARAFFIN_BLOCK_KEYS_A7
                                                ELSE NULL
                                            END AS PARAFFIN_BLOCK_KEYS_1_7,
                                            CASE
                                                WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_A7, '') IS NOT NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_2, '') IS NOT NULL)
                                                THEN PARAFFIN_BLOCK_KEYS_A7
                                                ELSE NULL
                                            END AS PARAFFIN_BLOCK_KEYS_2_7,
                                            CASE
                                                WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_A7, '') IS NOT NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_3, '') IS NOT NULL)
                                                THEN PARAFFIN_BLOCK_KEYS_A7
                                                ELSE NULL
                                            END AS PARAFFIN_BLOCK_KEYS_3_7
                                        FROM(
                                            SELECT *,
                                                CASE
                                                    WHEN (NULLIF(RE_PARAFFIN_BLOCK_KEYS, '') IS NOT NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_1, '') IS NOT NULL)
                                                    THEN SUBSTR(RE_PARAFFIN_BLOCK_KEYS, INSTR(RE_PARAFFIN_BLOCK_KEYS, REGEXP_SUBSTR(RE_PARAFFIN_BLOCK_KEYS, '[^;]+', 2, 1)))
                                                    WHEN (NULLIF(RE_PARAFFIN_BLOCK_KEYS, '') IS NOT NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_2, '') IS NOT NULL)
                                                    THEN SUBSTR(RE_PARAFFIN_BLOCK_KEYS, INSTR(RE_PARAFFIN_BLOCK_KEYS, REGEXP_SUBSTR(RE_PARAFFIN_BLOCK_KEYS, '[^;]+', 2, 1)))
                                                    WHEN (NULLIF(RE_PARAFFIN_BLOCK_KEYS, '') IS NOT NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_3, '') IS NOT NULL)
                                                    THEN SUBSTR(RE_PARAFFIN_BLOCK_KEYS, INSTR(RE_PARAFFIN_BLOCK_KEYS, REGEXP_SUBSTR(RE_PARAFFIN_BLOCK_KEYS, '[^;]+', 2, 1)))
                                                    ELSE NULL
                                                END AS PARAFFIN_BLOCK_KEYS_A7
                                            FROM(
                                                SELECT *,
                                                    CASE
                                                        WHEN (NULLIF(PA6, '') IS NOT NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_1, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            BINARY PARAFFIN_BLOCK_KEYS_A6, LENGTH(CONCAT(CONCAT(CONCAT(E_PA6, ';'), PA6), ';'))
                                                        )
                                                        WHEN (NULLIF(PA6, '') IS NOT NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_2, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            BINARY PARAFFIN_BLOCK_KEYS_A6, LENGTH(CONCAT(CONCAT(CONCAT(E_PA6, ';'), PA6), ';'))
                                                        )
                                                        WHEN (NULLIF(PA6, '') IS NOT NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_3, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            BINARY PARAFFIN_BLOCK_KEYS_A6, LENGTH(CONCAT(CONCAT(CONCAT(E_PA6, ';'), PA6), ';'))
                                                        )
                                                        ELSE NULL
                                                    END AS RE_PARAFFIN_BLOCK_KEYS
                                                FROM test_type2_pa06
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