SELECT
    원무접수ID,
    E_SA8,
    SA8,
    SLIDE_KEYS_A8,
    SLIDE_KEYS_1,
    SLIDE_KEYS_2,
    SLIDE_KEYS_3,
    SLIDE_KEYS_4
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(E_SA8_1, '') IS NOT NULL)
            THEN E_SA8_1
            WHEN (NULLIF(E_SA8_2, '') IS NOT NULL)
            THEN E_SA8_2
            WHEN (NULLIF(E_SA8_3, '') IS NOT NULL)
            THEN E_SA8_3
            WHEN (NULLIF(E_SA8_4, '') IS NOT NULL)
            THEN E_SA8_4
            ELSE NULL
        END AS E_SA8,
        CASE
            WHEN (NULLIF(SA8_1, '') IS NOT NULL)
            THEN SA8_1
            WHEN (NULLIF(SA8_2, '') IS NOT NULL)
            THEN SA8_2
            WHEN (NULLIF(SA8_3, '') IS NOT NULL)
            THEN SA8_3
            WHEN (NULLIF(SA8_4, '') IS NOT NULL)
            THEN SA8_4
            ELSE NULL
        END AS SA8
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(SA8_1_1, '') IS NOT NULL)
                THEN SA8_1_1
                WHEN (NULLIF(SA8_1_2, '') IS NOT NULL)
                THEN SA8_1_2
                ELSE NULL
            END AS SA8_1,
            CASE
                WHEN (NULLIF(SA8_2_1, '') IS NOT NULL)
                THEN SA8_2_1
                WHEN (NULLIF(SA8_2_2, '') IS NOT NULL)
                THEN SA8_2_2
                ELSE NULL
            END AS SA8_2,
            CASE
                WHEN (NULLIF(SA8_3_1, '') IS NOT NULL AND NULLIF(SA8_3_1_1, '') IS NULL AND NULLIF(SA8_3_1_2, '') IS NULL AND NULLIF(SA8_3_1_3, '') IS NULL AND NULLIF(SA8_3_1_4, '') IS NULL)
                THEN SA8_3_1
                WHEN (NULLIF(SA8_3_1, '') IS NOT NULL AND NULLIF(SA8_3_1_1, '') IS NOT NULL AND NULLIF(SA8_3_1_2, '') IS NULL AND NULLIF(SA8_3_1_3, '') IS NULL AND NULLIF(SA8_3_1_4, '') IS NULL)
                THEN SA8_3_1_1
                WHEN (NULLIF(SA8_3_1, '') IS NOT NULL AND NULLIF(SA8_3_1_1, '') IS NOT NULL AND NULLIF(SA8_3_1_2, '') IS NOT NULL AND NULLIF(SA8_3_1_3, '') IS NULL AND NULLIF(SA8_3_1_4, '') IS NULL)
                THEN SA8_3_1_2
                WHEN (NULLIF(SA8_3_1, '') IS NOT NULL AND NULLIF(SA8_3_1_1, '') IS NOT NULL AND NULLIF(SA8_3_1_2, '') IS NOT NULL AND NULLIF(SA8_3_1_3, '') IS NOT NULL AND NULLIF(SA8_3_1_4, '') IS NULL)
                THEN SA8_3_1_3
                WHEN (NULLIF(SA8_3_1, '') IS NOT NULL AND NULLIF(SA8_3_1_1, '') IS NOT NULL AND NULLIF(SA8_3_1_2, '') IS NOT NULL AND NULLIF(SA8_3_1_3, '') IS NOT NULL AND NULLIF(SA8_3_1_4, '') IS NOT NULL)
                THEN SA8_3_1_4
                WHEN (NULLIF(SA8_3_2, '') IS NOT NULL AND NULLIF(SA8_3_2_1, '') IS NULL AND NULLIF(SA8_3_2_2, '') IS NULL AND NULLIF(SA8_3_2_3, '') IS NULL AND NULLIF(SA8_3_2_4, '') IS NULL)
                THEN SA8_3_2
                WHEN (NULLIF(SA8_3_2, '') IS NOT NULL AND NULLIF(SA8_3_2_1, '') IS NOT NULL AND NULLIF(SA8_3_2_2, '') IS NULL AND NULLIF(SA8_3_2_3, '') IS NULL AND NULLIF(SA8_3_2_4, '') IS NULL)
                THEN SA8_3_2_1
                WHEN (NULLIF(SA8_3_2, '') IS NOT NULL AND NULLIF(SA8_3_2_1, '') IS NOT NULL AND NULLIF(SA8_3_2_2, '') IS NOT NULL AND NULLIF(SA8_3_2_3, '') IS NULL AND NULLIF(SA8_3_2_4, '') IS NULL)
                THEN SA8_3_2_2
                WHEN (NULLIF(SA8_3_2, '') IS NOT NULL AND NULLIF(SA8_3_2_1, '') IS NOT NULL AND NULLIF(SA8_3_2_2, '') IS NOT NULL AND NULLIF(SA8_3_2_3, '') IS NOT NULL AND NULLIF(SA8_3_2_4, '') IS NULL)
                THEN SA8_3_2_3
                WHEN (NULLIF(SA8_3_2, '') IS NOT NULL AND NULLIF(SA8_3_2_1, '') IS NOT NULL AND NULLIF(SA8_3_2_2, '') IS NOT NULL AND NULLIF(SA8_3_2_3, '') IS NOT NULL AND NULLIF(SA8_3_2_4, '') IS NOT NULL)
                THEN SA8_3_2_4
                ELSE NULL
            END AS SA8_3,
            CASE
                WHEN (NULLIF(SA8_4_1, '') IS NOT NULL AND NULLIF(SA8_4_1_1, '') IS NULL AND NULLIF(SA8_4_1_2, '') IS NULL AND NULLIF(SA8_4_1_3, '') IS NULL AND NULLIF(SA8_4_1_4, '') IS NULL)
                THEN SA8_4_1
                WHEN (NULLIF(SA8_4_1, '') IS NOT NULL AND NULLIF(SA8_4_1_1, '') IS NOT NULL AND NULLIF(SA8_4_1_2, '') IS NULL AND NULLIF(SA8_4_1_3, '') IS NULL AND NULLIF(SA8_4_1_4, '') IS NULL)
                THEN SA8_4_1_1
                WHEN (NULLIF(SA8_4_1, '') IS NOT NULL AND NULLIF(SA8_4_1_1, '') IS NOT NULL AND NULLIF(SA8_4_1_2, '') IS NOT NULL AND NULLIF(SA8_4_1_3, '') IS NULL AND NULLIF(SA8_4_1_4, '') IS NULL)
                THEN SA8_4_1_2
                WHEN (NULLIF(SA8_4_1, '') IS NOT NULL AND NULLIF(SA8_4_1_1, '') IS NOT NULL AND NULLIF(SA8_4_1_2, '') IS NOT NULL AND NULLIF(SA8_4_1_3, '') IS NOT NULL AND NULLIF(SA8_4_1_4, '') IS NULL)
                THEN SA8_4_1_3
                WHEN (NULLIF(SA8_4_1, '') IS NOT NULL AND NULLIF(SA8_4_1_1, '') IS NOT NULL AND NULLIF(SA8_4_1_2, '') IS NOT NULL AND NULLIF(SA8_4_1_3, '') IS NOT NULL AND NULLIF(SA8_4_1_4, '') IS NOT NULL)
                THEN SA8_4_1_4
                WHEN (NULLIF(SA8_4_2, '') IS NOT NULL AND NULLIF(SA8_4_2_1, '') IS NULL AND NULLIF(SA8_4_2_2, '') IS NULL AND NULLIF(SA8_4_2_3, '') IS NULL AND NULLIF(SA8_4_2_4, '') IS NULL)
                THEN SA8_4_2
                WHEN (NULLIF(SA8_4_2, '') IS NOT NULL AND NULLIF(SA8_4_2_1, '') IS NOT NULL AND NULLIF(SA8_4_2_2, '') IS NULL AND NULLIF(SA8_4_2_3, '') IS NULL AND NULLIF(SA8_4_2_4, '') IS NULL)
                THEN SA8_4_2_1
                WHEN (NULLIF(SA8_4_2, '') IS NOT NULL AND NULLIF(SA8_4_2_1, '') IS NOT NULL AND NULLIF(SA8_4_2_2, '') IS NOT NULL AND NULLIF(SA8_4_2_3, '') IS NULL AND NULLIF(SA8_4_2_4, '') IS NULL)
                THEN SA8_4_2_2
                WHEN (NULLIF(SA8_4_2, '') IS NOT NULL AND NULLIF(SA8_4_2_1, '') IS NOT NULL AND NULLIF(SA8_4_2_2, '') IS NOT NULL AND NULLIF(SA8_4_2_3, '') IS NOT NULL AND NULLIF(SA8_4_2_4, '') IS NULL)
                THEN SA8_4_2_3
                WHEN (NULLIF(SA8_4_2, '') IS NOT NULL AND NULLIF(SA8_4_2_1, '') IS NOT NULL AND NULLIF(SA8_4_2_2, '') IS NOT NULL AND NULLIF(SA8_4_2_3, '') IS NOT NULL AND NULLIF(SA8_4_2_4, '') IS NOT NULL)
                THEN SA8_4_2_4
                ELSE NULL
            END AS SA8_4
        FROM(
            SELECT *,
                CASE
                    WHEN (NULLIF(E_SA8_1_1, '') IS NOT NULL)
                    THEN E_SA8_1_1
                    WHEN (NULLIF(E_SA8_1_2, '') IS NOT NULL)
                    THEN E_SA8_1_2
                    ELSE NULL
                END AS E_SA8_1,
                CASE
                    WHEN (NULLIF(E_SA8_2_1, '') IS NOT NULL)
                    THEN E_SA8_2_1
                    WHEN (NULLIF(E_SA8_2_2, '') IS NOT NULL)
                    THEN E_SA8_2_2
                    ELSE NULL
                END AS E_SA8_2,
                CASE
                    WHEN (NULLIF(E_SA8_3_1, '') IS NOT NULL)
                    THEN E_SA8_3_1
                    WHEN (NULLIF(E_SA8_3_2, '') IS NOT NULL)
                    THEN E_SA8_3_2
                    ELSE NULL
                END AS E_SA8_3,
                CASE
                    WHEN (NULLIF(E_SA8_4_1, '') IS NOT NULL)
                    THEN E_SA8_4_1
                    WHEN (NULLIF(E_SA8_4_2, '') IS NOT NULL)
                    THEN E_SA8_4_2
                    ELSE NULL
                END AS E_SA8_4
            FROM(
                SELECT *,
                    CASE
                        WHEN (NULLIF(SA8_3_1_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_3_8, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA8_3_1_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_3_8, '[^;]+', 1, 6)
                        )
                        ELSE NULL
                    END AS SA8_3_1_4,
                    CASE
                        WHEN (NULLIF(SA8_3_2_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_3_8, '[^;]+', 1, 7), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA8_3_2_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_3_8, '[^;]+', 1, 7)
                        )
                        ELSE NULL
                    END AS SA8_3_2_4,
                    CASE
                        WHEN (NULLIF(SA8_4_1_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 6), '^[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA8_4_1_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 6)
                        )
                        WHEN (NULLIF(SA8_4_1_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA8_4_1_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 6)
                        )
                        ELSE NULL
                    END AS SA8_4_1_4,
                    CASE
                        WHEN (NULLIF(SA8_4_2_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 7), '^[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA8_4_2_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 7)
                        )
                        WHEN (NULLIF(SA8_4_2_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 7), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA8_4_2_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 7)
                        )
                        ELSE NULL
                    END AS SA8_4_2_4
                FROM(
                    SELECT *,
                        CASE
                            WHEN (NULLIF(SA8_3_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_3_8, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA8_3_1_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_3_8, '[^;]+', 1, 5)
                            )
                            ELSE NULL
                        END AS SA8_3_1_3,
                        CASE
                            WHEN (NULLIF(SA8_3_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_3_8, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA8_3_2_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_3_8, '[^;]+', 1, 6)
                            )
                            ELSE NULL
                        END AS SA8_3_2_3,
                        CASE
                            WHEN (NULLIF(SA8_4_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_8, '[^;]+', 1, 5), '^[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA8_4_1_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 5)
                            )
                            WHEN (NULLIF(SA8_4_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_8, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA8_4_1_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 5)
                            )
                            ELSE NULL
                        END AS SA8_4_1_3,
                        CASE
                            WHEN (NULLIF(SA8_4_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_8, '[^;]+', 1, 6), '^[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA8_4_2_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 6)
                            )
                            WHEN (NULLIF(SA8_4_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_8, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA8_4_2_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 6)
                            )
                            ELSE NULL
                        END AS SA8_4_2_3
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (NULLIF(SA8_3_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_3_8, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA8_3_1_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_3_8, '[^;]+', 1, 4)
                                )
                                ELSE NULL
                            END AS SA8_3_1_2,
                            CASE
                                WHEN (NULLIF(SA8_3_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_3_8, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA8_3_2_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_3_8, '[^;]+', 1, 5)
                                )
                                ELSE NULL
                            END AS SA8_3_2_2,
                            CASE
                                WHEN (NULLIF(SA8_4_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 4), '^[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA8_4_1_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 4)
                                )
                                WHEN (NULLIF(SA8_4_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA8_4_1_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 4)
                                )
                                ELSE NULL
                            END AS SA8_4_1_2,
                            CASE
                                WHEN (NULLIF(SA8_4_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 5), '^[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA8_4_2_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 5)
                                )
                                WHEN (NULLIF(SA8_4_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA8_4_2_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 5)
                                )
                                ELSE NULL
                            END AS SA8_4_2_2
                        FROM(
                            SELECT *,
                                CASE
                                    WHEN (NULLIF(SA8_3_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_3_8, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA8_3_1, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_3_8, '[^;]+', 1, 3)
                                    )
                                    ELSE NULL
                                END AS SA8_3_1_1,
                                CASE
                                    WHEN (NULLIF(SA8_3_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_3_8, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA8_3_2, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_3_8, '[^;]+', 1, 4)
                                    )
                                    ELSE NULL
                                END AS SA8_3_2_1,
                                CASE
                                    WHEN (NULLIF(SA8_4_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 3), '^[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA8_4_1, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 3)
                                    )
                                    WHEN (NULLIF(SA8_4_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA8_4_1, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 3)
                                    )
                                    ELSE NULL
                                END AS SA8_4_1_1,
                                CASE
                                    WHEN (NULLIF(SA8_4_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 4), '^[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA8_4_2, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 4)
                                    )
                                    WHEN (NULLIF(SA8_4_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA8_4_2, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 4)
                                    )
                                    ELSE NULL
                                END AS SA8_4_2_1
                            FROM(
                                SELECT *,
                                    CASE
                                        WHEN (NULLIF(E_SA8_1_1, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_8, '[^\n]+', 1, 1), '[^;]+', 1, 1)
                                        ELSE NULL
                                    END AS SA8_1_1,
                                    CASE
                                        WHEN (NULLIF(E_SA8_1_2, '') IS NOT NULL)
                                        THEN CONCAT(
                                            CONCAT(
                                                REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_8, '[^\n]+', 1, 1), '[^;]+', 1, 1), ';'
                                            ), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_8, '[^\n]+', 1, 1), '[^;]+', 1, 2)
                                        )
                                        ELSE NULL
                                    END AS SA8_1_2,
                                    CASE
                                        WHEN (NULLIF(E_SA8_2_1, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '[^;]+', 1, 1)
                                        ELSE NULL
                                    END AS SA8_2_1,
                                    CASE
                                        WHEN (NULLIF(E_SA8_2_2, '') IS NOT NULL)
                                        THEN CONCAT(
                                            CONCAT(
                                                REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '[^;]+', 1, 1), ';'
                                            ), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '[^;]+', 1, 2)
                                        )
                                        ELSE NULL
                                    END AS SA8_2_2,
                                    CASE
                                        WHEN (NULLIF(E_SA8_3_1, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_3_8, '[^;]+', 1, 2)
                                        ELSE NULL
                                    END AS SA8_3_1,
                                    CASE
                                        WHEN (NULLIF(E_SA8_3_2, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_3_8, '[^;]+', 1, 3)
                                        ELSE NULL
                                    END AS SA8_3_2,
                                    CASE
                                        WHEN (NULLIF(E_SA8_4_1, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 2)
                                        ELSE NULL
                                    END AS SA8_4_1,
                                    CASE
                                        WHEN (NULLIF(E_SA8_4_2, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 3)
                                        ELSE NULL
                                    END AS SA8_4_2
                                FROM(
                                    SELECT *,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_1_8, '') IS NOT NULL AND NULLIF(REGEXP_SUBSTR(SLIDE_KEYS_1_8, '[^\n]+', 1, 1), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_8, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_8, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0)
                                            THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_8, '[^\n]+', 1, 1), INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_8, '[^\n]+', 1, 1), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_8, '[^\n]+', 1, 1), '[^;]+', 1, 2)))
                                            WHEN (NULLIF(SLIDE_KEYS_1_8, '') IS NOT NULL AND NULLIF(REGEXP_SUBSTR(SLIDE_KEYS_1_8, '[^\n]+', 1, 1), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_8, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^ [A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_8, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0)
                                            THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_8, '[^\n]+', 1, 1), INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_8, '[^\n]+', 1, 1), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_8, '[^\n]+', 1, 1), '[^;]+', 1, 2)))
                                            ELSE NULL
                                        END AS E_SA8_1_1,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_1_8, '') IS NOT NULL AND NULLIF(REGEXP_SUBSTR(SLIDE_KEYS_1_8, '[^\n]+', 1, 1), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_8, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_8, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_8, '[^\n]+', 1, 1), INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_8, '[^\n]+', 1, 1), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_8, '[^\n]+', 1, 1), '[^;]+', 1, 3)))
                                            WHEN (NULLIF(SLIDE_KEYS_1_8, '') IS NOT NULL AND NULLIF(REGEXP_SUBSTR(SLIDE_KEYS_1_8, '[^\n]+', 1, 1), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_8, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^ [A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_8, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_8, '[^\n]+', 1, 1), INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_8, '[^\n]+', 1, 1), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_8, '[^\n]+', 1, 1), '[^;]+', 1, 3)))
                                            ELSE NULL
                                        END AS E_SA8_1_2,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_2_8, '') IS NOT NULL AND NULLIF(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[0-9]{1,3}') = 0)
                                            THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), INSTR(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '[^;]+', 1, 2)))
                                            WHEN (NULLIF(SLIDE_KEYS_2_8, '') IS NOT NULL AND NULLIF(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0)
                                            THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), INSTR(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '[^;]+', 1, 2)))
                                            WHEN (NULLIF(SLIDE_KEYS_2_8, '') IS NOT NULL AND NULLIF(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^ [0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[0-9]{1,3}') = 0)
                                            THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), INSTR(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '[^;]+', 1, 2)))
                                            WHEN (NULLIF(SLIDE_KEYS_2_8, '') IS NOT NULL AND NULLIF(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^ [A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0)
                                            THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), INSTR(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '[^;]+', 1, 2)))
                                            ELSE NULL
                                        END AS E_SA8_2_1,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_2_8, '') IS NOT NULL AND NULLIF(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[0-9]{1,3}') != 0)
                                            THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), INSTR(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '[^;]+', 1, 3)))
                                            WHEN (NULLIF(SLIDE_KEYS_2_8, '') IS NOT NULL AND NULLIF(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), INSTR(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '[^;]+', 1, 3)))
                                            WHEN (NULLIF(SLIDE_KEYS_2_8, '') IS NOT NULL AND NULLIF(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^ [0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[0-9]{1,3}') != 0)
                                            THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), INSTR(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '[^;]+', 1, 3)))
                                            WHEN (NULLIF(SLIDE_KEYS_2_8, '') IS NOT NULL AND NULLIF(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^ [A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), INSTR(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_2_8, '[^\n]+', 1, 1), '[^;]+', 1, 3)))
                                            ELSE NULL
                                        END AS E_SA8_2_2,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_3_8, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_3_8, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_3_8, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_3_8, '[^;]+', 1, 1)
                                            ELSE NULL
                                        END AS E_SA8_3_1,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_3_8, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_3_8, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_3_8, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_3_8, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(SLIDE_KEYS_3_8, '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(SLIDE_KEYS_3_8, '[^;]+', 1, 2)
                                            )
                                            ELSE NULL
                                        END AS E_SA8_3_2,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_4_8, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 1), '^[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 2), '^[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 1)
                                            WHEN (NULLIF(SLIDE_KEYS_4_8, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 1)
                                            ELSE NULL
                                        END AS E_SA8_4_1,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_4_8, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 1), '^[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 2), '^[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 3), '^[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 2)
                                            )
                                            WHEN (NULLIF(SLIDE_KEYS_4_8, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(SLIDE_KEYS_4_8, '[^;]+', 1, 2)
                                            )
                                            ELSE NULL
                                        END AS E_SA8_4_2
                                    FROM(
                                        SELECT *,
                                            CASE
                                                WHEN (NULLIF(SLIDE_KEYS_A8, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_1, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_A8
                                                ELSE NULL
                                            END AS SLIDE_KEYS_1_8,
                                            CASE
                                                WHEN (NULLIF(SLIDE_KEYS_A8, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_2, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_A8
                                                ELSE NULL
                                            END AS SLIDE_KEYS_2_8,
                                            CASE
                                                WHEN (NULLIF(SLIDE_KEYS_A8, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_3, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_A8
                                                ELSE NULL
                                            END AS SLIDE_KEYS_3_8,
                                            CASE
                                                WHEN (NULLIF(SLIDE_KEYS_A8, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_4, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_A8
                                                ELSE NULL
                                            END AS SLIDE_KEYS_4_8
                                        FROM(
                                            SELECT *,
                                                CASE
                                                    WHEN (NULLIF(RE_SLIDE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_1, '') IS NOT NULL)
                                                    THEN SUBSTR(
                                                        RE_SLIDE_KEYS, INSTR(RE_SLIDE_KEYS, REGEXP_SUBSTR(RE_SLIDE_KEYS, '[^\n]+', 1, 2))
                                                    )
                                                    WHEN (NULLIF(RE_SLIDE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_2, '') IS NOT NULL)
                                                    THEN SUBSTR(
                                                        RE_SLIDE_KEYS, INSTR(RE_SLIDE_KEYS, REGEXP_SUBSTR(RE_SLIDE_KEYS, '[^\n]+', 1, 2))
                                                    )
                                                    WHEN (NULLIF(RE_SLIDE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_3, '') IS NOT NULL)
                                                    THEN SUBSTR(RE_SLIDE_KEYS, INSTR(RE_SLIDE_KEYS, REGEXP_SUBSTR(RE_SLIDE_KEYS, '[^;]+', 2, 1)))
                                                    WHEN (NULLIF(RE_SLIDE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_4, '') IS NOT NULL)
                                                    THEN SUBSTR(RE_SLIDE_KEYS, INSTR(RE_SLIDE_KEYS, REGEXP_SUBSTR(RE_SLIDE_KEYS, '[^;]+', 2, 1)))
                                                    ELSE NULL
                                                END AS SLIDE_KEYS_A8
                                            FROM(
                                                SELECT *,
                                                    CASE
                                                        WHEN (NULLIF(SA7, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_1, '') IS NOT NULL)
                                                        THEN SLIDE_KEYS_A7
                                                        WHEN (NULLIF(SA7, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_2, '') IS NOT NULL)
                                                        THEN SLIDE_KEYS_A7
                                                        WHEN (NULLIF(SA7, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_3, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            SLIDE_KEYS_A7, LENGTH(CONCAT(CONCAT(CONCAT(E_SA7, ';'), SA7), ';'))
                                                        )
                                                        WHEN (NULLIF(SA7, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_4, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            SLIDE_KEYS_A7, LENGTH(CONCAT(CONCAT(CONCAT(E_SA7, ';'), SA7), ';'))
                                                        )
                                                        ELSE NULL
                                                    END AS RE_SLIDE_KEYS
                                                FROM test_type3_sa07
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