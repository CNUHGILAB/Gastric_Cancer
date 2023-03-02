SELECT
    원무접수ID,
    E_SA6,
    SA6,
    SLIDE_KEYS_A6,
    SLIDE_KEYS_1,
    SLIDE_KEYS_2,
    SLIDE_KEYS_3,
    SLIDE_KEYS_4
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(E_SA6_1, '') IS NOT NULL)
            THEN E_SA6_1
            WHEN (NULLIF(E_SA6_2, '') IS NOT NULL)
            THEN E_SA6_2
            WHEN (NULLIF(E_SA6_3, '') IS NOT NULL)
            THEN E_SA6_3
            WHEN (NULLIF(E_SA6_4, '') IS NOT NULL)
            THEN E_SA6_4
            ELSE NULL
        END AS E_SA6,
        CASE
            WHEN (NULLIF(SA6_1, '') IS NOT NULL)
            THEN SA6_1
            WHEN (NULLIF(SA6_2, '') IS NOT NULL)
            THEN SA6_2
            WHEN (NULLIF(SA6_3, '') IS NOT NULL)
            THEN SA6_3
            WHEN (NULLIF(SA6_4, '') IS NOT NULL)
            THEN SA6_4
            ELSE NULL
        END AS SA6
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(SA6_1_1, '') IS NOT NULL AND NULLIF(SA6_1_1_1, '') IS NULL AND NULLIF(SA6_1_1_2, '') IS NULL AND NULLIF(SA6_1_1_3, '') IS NULL AND NULLIF(SA6_1_1_4, '') IS NULL)
                THEN SA6_1_1
                WHEN (NULLIF(SA6_1_1, '') IS NOT NULL AND NULLIF(SA6_1_1_1, '') IS NOT NULL AND NULLIF(SA6_1_1_2, '') IS NULL AND NULLIF(SA6_1_1_3, '') IS NULL AND NULLIF(SA6_1_1_4, '') IS NULL)
                THEN SA6_1_1_1
                WHEN (NULLIF(SA6_1_1, '') IS NOT NULL AND NULLIF(SA6_1_1_1, '') IS NOT NULL AND NULLIF(SA6_1_1_2, '') IS NOT NULL AND NULLIF(SA6_1_1_3, '') IS NULL AND NULLIF(SA6_1_1_4, '') IS NULL)
                THEN SA6_1_1_2
                WHEN (NULLIF(SA6_1_1, '') IS NOT NULL AND NULLIF(SA6_1_1_1, '') IS NOT NULL AND NULLIF(SA6_1_1_2, '') IS NOT NULL AND NULLIF(SA6_1_1_3, '') IS NOT NULL AND NULLIF(SA6_1_1_4, '') IS NULL)
                THEN SA6_1_1_3
                WHEN (NULLIF(SA6_1_1, '') IS NOT NULL AND NULLIF(SA6_1_1_1, '') IS NOT NULL AND NULLIF(SA6_1_1_2, '') IS NOT NULL AND NULLIF(SA6_1_1_3, '') IS NOT NULL AND NULLIF(SA6_1_1_4, '') IS NOT NULL)
                THEN SA6_1_1_4
                WHEN (NULLIF(SA6_1_2, '') IS NOT NULL AND NULLIF(SA6_1_2_1, '') IS NULL AND NULLIF(SA6_1_2_2, '') IS NULL AND NULLIF(SA6_1_2_3, '') IS NULL AND NULLIF(SA6_1_2_4, '') IS NULL)
                THEN SA6_1_2
                WHEN (NULLIF(SA6_1_2, '') IS NOT NULL AND NULLIF(SA6_1_2_1, '') IS NOT NULL AND NULLIF(SA6_1_2_2, '') IS NULL AND NULLIF(SA6_1_2_3, '') IS NULL AND NULLIF(SA6_1_2_4, '') IS NULL)
                THEN SA6_1_2_1
                WHEN (NULLIF(SA6_1_2, '') IS NOT NULL AND NULLIF(SA6_1_2_1, '') IS NOT NULL AND NULLIF(SA6_1_2_2, '') IS NOT NULL AND NULLIF(SA6_1_2_3, '') IS NULL AND NULLIF(SA6_1_2_4, '') IS NULL)
                THEN SA6_1_2_2
                WHEN (NULLIF(SA6_1_2, '') IS NOT NULL AND NULLIF(SA6_1_2_1, '') IS NOT NULL AND NULLIF(SA6_1_2_2, '') IS NOT NULL AND NULLIF(SA6_1_2_3, '') IS NOT NULL AND NULLIF(SA6_1_2_4, '') IS NULL)
                THEN SA6_1_2_3
                WHEN (NULLIF(SA6_1_2, '') IS NOT NULL AND NULLIF(SA6_1_2_1, '') IS NOT NULL AND NULLIF(SA6_1_2_2, '') IS NOT NULL AND NULLIF(SA6_1_2_3, '') IS NOT NULL AND NULLIF(SA6_1_2_4, '') IS NOT NULL)
                THEN SA6_1_2_4
                ELSE NULL
            END AS SA6_1,
            CASE
                WHEN (NULLIF(SA6_2_1, '') IS NOT NULL AND NULLIF(SA6_2_1_1, '') IS NULL AND NULLIF(SA6_2_1_2, '') IS NULL AND NULLIF(SA6_2_1_3, '') IS NULL AND NULLIF(SA6_2_1_4, '') IS NULL)
                THEN SA6_2_1
                WHEN (NULLIF(SA6_2_1, '') IS NOT NULL AND NULLIF(SA6_2_1_1, '') IS NOT NULL AND NULLIF(SA6_2_1_2, '') IS NULL AND NULLIF(SA6_2_1_3, '') IS NULL AND NULLIF(SA6_2_1_4, '') IS NULL)
                THEN SA6_2_1_1
                WHEN (NULLIF(SA6_2_1, '') IS NOT NULL AND NULLIF(SA6_2_1_1, '') IS NOT NULL AND NULLIF(SA6_2_1_2, '') IS NOT NULL AND NULLIF(SA6_2_1_3, '') IS NULL AND NULLIF(SA6_2_1_4, '') IS NULL)
                THEN SA6_2_1_2
                WHEN (NULLIF(SA6_2_1, '') IS NOT NULL AND NULLIF(SA6_2_1_1, '') IS NOT NULL AND NULLIF(SA6_2_1_2, '') IS NOT NULL AND NULLIF(SA6_2_1_3, '') IS NOT NULL AND NULLIF(SA6_2_1_4, '') IS NULL)
                THEN SA6_2_1_3
                WHEN (NULLIF(SA6_2_1, '') IS NOT NULL AND NULLIF(SA6_2_1_1, '') IS NOT NULL AND NULLIF(SA6_2_1_2, '') IS NOT NULL AND NULLIF(SA6_2_1_3, '') IS NOT NULL AND NULLIF(SA6_2_1_4, '') IS NOT NULL)
                THEN SA6_2_1_4
                WHEN (NULLIF(SA6_2_2, '') IS NOT NULL AND NULLIF(SA6_2_2_1, '') IS NULL AND NULLIF(SA6_2_2_2, '') IS NULL AND NULLIF(SA6_2_2_3, '') IS NULL AND NULLIF(SA6_2_2_4, '') IS NULL)
                THEN SA6_2_2
                WHEN (NULLIF(SA6_2_2, '') IS NOT NULL AND NULLIF(SA6_2_2_1, '') IS NOT NULL AND NULLIF(SA6_2_2_2, '') IS NULL AND NULLIF(SA6_2_2_3, '') IS NULL AND NULLIF(SA6_2_2_4, '') IS NULL)
                THEN SA6_2_2_1
                WHEN (NULLIF(SA6_2_2, '') IS NOT NULL AND NULLIF(SA6_2_2_1, '') IS NOT NULL AND NULLIF(SA6_2_2_2, '') IS NOT NULL AND NULLIF(SA6_2_2_3, '') IS NULL AND NULLIF(SA6_2_2_4, '') IS NULL)
                THEN SA6_2_2_2
                WHEN (NULLIF(SA6_2_2, '') IS NOT NULL AND NULLIF(SA6_2_2_1, '') IS NOT NULL AND NULLIF(SA6_2_2_2, '') IS NOT NULL AND NULLIF(SA6_2_2_3, '') IS NOT NULL AND NULLIF(SA6_2_2_4, '') IS NULL)
                THEN SA6_2_2_3
                WHEN (NULLIF(SA6_2_2, '') IS NOT NULL AND NULLIF(SA6_2_2_1, '') IS NOT NULL AND NULLIF(SA6_2_2_2, '') IS NOT NULL AND NULLIF(SA6_2_2_3, '') IS NOT NULL AND NULLIF(SA6_2_2_4, '') IS NOT NULL)
                THEN SA6_2_2_4
                ELSE NULL
            END AS SA6_2
        FROM(
            SELECT *,
                CASE
                    WHEN (NULLIF(E_SA6_1_1, '') IS NOT NULL)
                    THEN E_SA6_1_1
                    WHEN (NULLIF(E_SA6_1_2, '') IS NOT NULL)
                    THEN E_SA6_1_2
                    ELSE NULL
                END AS E_SA6_1,
                CASE
                    WHEN (NULLIF(E_SA6_2_1, '') IS NOT NULL)
                    THEN E_SA6_2_1
                    WHEN (NULLIF(E_SA6_2_2, '') IS NOT NULL)
                    THEN E_SA6_2_2
                    ELSE NULL
                END AS E_SA6_2
            FROM(
                SELECT *,
                    CASE
                        WHEN (NULLIF(SA6_1_1_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 6), '^[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA6_1_1_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 6)
                        )
                        WHEN (NULLIF(SA6_1_1_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_6, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA6_1_1_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 6)
                        )
                        ELSE NULL
                    END AS SA6_1_1_4,
                    CASE
                        WHEN (NULLIF(SA6_1_2_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 7), '^[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA6_1_2_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 7)
                        )
                        WHEN (NULLIF(SA6_1_2_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_6, '[^;]+', 1, 7), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA6_1_2_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 7)
                        )
                        ELSE NULL
                    END AS SA6_1_2_4,
                    CASE
                        WHEN (NULLIF(SA6_2_1_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_6, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA6_1_1_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_2_6, '[^;]+', 1, 6)
                        )
                        ELSE NULL
                    END AS SA6_2_1_4,
                    CASE
                        WHEN (NULLIF(SA6_2_2_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_6, '[^;]+', 1, 7), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA6_2_2_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_2_6, '[^;]+', 1, 7)
                        )
                        ELSE NULL
                    END AS SA6_2_2_4
                FROM(
                    SELECT *,
                        CASE
                            WHEN (NULLIF(SA6_1_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 5), '^[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA6_1_1_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 5)
                            )
                            WHEN (NULLIF(SA6_1_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_6, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA6_1_1_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 5)
                            )
                            ELSE NULL
                        END AS SA6_1_1_3,
                        CASE
                            WHEN (NULLIF(SA6_1_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 6), '^[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA6_1_2_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 6)
                            )
                            WHEN (NULLIF(SA6_1_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_6, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA6_1_2_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 6)
                            )
                            ELSE NULL
                        END AS SA6_1_2_3,
                        CASE
                            WHEN (NULLIF(SA6_2_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_6, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA6_2_1_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_2_6, '[^;]+', 1, 5)
                            )
                            ELSE NULL
                        END AS SA6_2_1_3,
                        CASE
                            WHEN (NULLIF(SA6_2_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_6, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA6_2_2_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_2_6, '[^;]+', 1, 6)
                            )
                            ELSE NULL
                        END AS SA6_2_2_3
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (NULLIF(SA6_1_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 4), '^[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA6_1_1_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 4)
                                )
                                WHEN (NULLIF(SA6_1_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_6, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA6_1_1_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 4)
                                )
                                ELSE NULL
                            END AS SA6_1_1_2,
                            CASE
                                WHEN (NULLIF(SA6_1_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 5), '^[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA6_1_2_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 5)
                                )
                                WHEN (NULLIF(SA6_1_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_6, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA6_1_2_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 5)
                                )
                                ELSE NULL
                            END AS SA6_1_2_2,
                            CASE
                                WHEN (NULLIF(SA6_2_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_6, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA6_1_1_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_2_6, '[^;]+', 1, 4)
                                )
                                ELSE NULL
                            END AS SA6_2_1_2,
                            CASE
                                WHEN (NULLIF(SA6_2_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_6, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA6_2_2_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_2_6, '[^;]+', 1, 5)
                                )
                                ELSE NULL
                            END AS SA6_2_2_2
                        FROM(
                            SELECT *,
                                CASE
                                    WHEN (NULLIF(SA6_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 3), '^[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA6_1_1, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 3)
                                    )
                                    WHEN (NULLIF(SA6_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_6, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA6_1_1, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 3)
                                    )
                                    ELSE NULL
                                END AS SA6_1_1_1,
                                CASE
                                    WHEN (NULLIF(SA6_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 4), '^[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA6_1_2, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 4)
                                    )
                                    WHEN (NULLIF(SA6_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_6, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA6_1_2, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 4)
                                    )
                                    ELSE NULL
                                END AS SA6_1_2_1,
                                CASE
                                    WHEN (NULLIF(SA6_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_6, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA6_2_1, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_2_6, '[^;]+', 1, 3)
                                    )
                                    ELSE NULL
                                END AS SA6_2_1_1,
                                CASE
                                    WHEN (NULLIF(SA6_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_6, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA6_2_2, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_2_6, '[^;]+', 1, 4)
                                    )
                                    ELSE NULL
                                END AS SA6_2_2_1
                            FROM(
                                SELECT *,
                                    CASE
                                        WHEN (NULLIF(E_SA6_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 2), '^[0-9]{1,3}') != 0)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 2)
                                        WHEN (NULLIF(E_SA6_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_6, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 2)
                                        ELSE NULL
                                    END AS SA6_1_1,
                                    CASE
                                        WHEN (NULLIF(E_SA6_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 3), '^[0-9]{1,3}') != 0)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 3)
                                        WHEN (NULLIF(E_SA6_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_6, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 3)
                                        ELSE NULL
                                    END AS SA6_1_2,
                                    CASE
                                        WHEN (NULLIF(E_SA6_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_6, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_2_6, '[^;]+', 1, 2)
                                        WHEN (NULLIF(E_SA6_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_6, '[^;]+', 1, 2), '^[B]') != 0)
                                        THEN NULL
                                        ELSE NULL
                                    END AS SA6_2_1,
                                    CASE
                                        WHEN (NULLIF(E_SA6_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_6, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_2_6, '[^;]+', 1, 3)
                                        ELSE NULL
                                    END AS SA6_2_2,
                                    CASE
                                        WHEN (NULLIF(E_SA6_3, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_3_6, '[^;]+', 1, 1)
                                        ELSE NULL
                                    END AS SA6_3,
                                    CASE
                                        WHEN (NULLIF(E_SA6_4, '') IS NOT NULL)
                                        THEN SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_6, '[^;]+', 1, 1), REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_6, '[^;]+', 1, 1), '[(]'))
                                        ELSE NULL
                                    END AS SA6_4
                                FROM(
                                    SELECT *,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_1_6, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 2), '^[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 1)
                                            WHEN (NULLIF(SLIDE_KEYS_1_6, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_6, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 1)
                                            ELSE NULL
                                        END AS E_SA6_1_1,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_1_6, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 2), '^[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 3), '^[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 2)
                                            )
                                            WHEN (NULLIF(SLIDE_KEYS_1_6, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 2), '^[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_6, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 2)
                                            )
                                            WHEN (NULLIF(SLIDE_KEYS_1_6, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_6, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 3), '^[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 2)
                                            )
                                            WHEN (NULLIF(SLIDE_KEYS_1_6, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_6, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_6, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 2)
                                            )
                                            ELSE NULL
                                        END AS E_SA6_1_2,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_2_6, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_6, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_2_6, '[^;]+', 1, 1)
                                            WHEN (NULLIF(SLIDE_KEYS_2_6, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_6, '[^;]+', 1, 2), '^[B]') != 0)
                                            THEN NULL
                                            ELSE NULL
                                        END AS E_SA6_2_1,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_2_6, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_6, '[^;]+', 1, 2), '[A-Z]{1,2}[0-9]{1,3} ') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_6, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(SLIDE_KEYS_2_6, '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(SLIDE_KEYS_2_6, '[^;]+', 1, 2)
                                            )
                                            ELSE NULL
                                        END AS E_SA6_2_2,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_3_6, '') IS NOT NULL)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_3_6, '[^;]+', 1, 2)
                                            ELSE NULL
                                        END AS E_SA6_3,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_4_6, '') IS NOT NULL)
                                            THEN SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_6, '[^;]+', 1, 1), 1, REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_6, '[^;]+', 1, 1), ' [(]'))
                                            ELSE NULL
                                        END AS E_SA6_4
                                    FROM(
                                        SELECT *,
                                            CASE
                                                WHEN (NULLIF(SLIDE_KEYS_A6, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_1, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_A6
                                                ELSE NULL
                                            END AS SLIDE_KEYS_1_6,
                                            CASE
                                                WHEN (NULLIF(SLIDE_KEYS_A6, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_2, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_A6
                                                ELSE NULL
                                            END AS SLIDE_KEYS_2_6,
                                            CASE
                                                WHEN (NULLIF(SLIDE_KEYS_A6, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_3, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_A6
                                                ELSE NULL
                                            END AS SLIDE_KEYS_3_6,
                                            CASE
                                                WHEN (NULLIF(SLIDE_KEYS_A6, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_4, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_A6
                                                ELSE NULL
                                            END AS SLIDE_KEYS_4_6
                                        FROM(
                                            SELECT *,
                                                CASE
                                                    WHEN (NULLIF(RE_SLIDE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_1, '') IS NOT NULL)
                                                    THEN SUBSTR(RE_SLIDE_KEYS, INSTR(RE_SLIDE_KEYS, REGEXP_SUBSTR(RE_SLIDE_KEYS, '[^;]+', 2, 1)))
                                                    WHEN (NULLIF(RE_SLIDE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_2, '') IS NOT NULL)
                                                    THEN SUBSTR(RE_SLIDE_KEYS, INSTR(RE_SLIDE_KEYS, REGEXP_SUBSTR(RE_SLIDE_KEYS, '[^;]+', 2, 1)))
                                                    WHEN (NULLIF(RE_SLIDE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_3, '') IS NOT NULL)
                                                    THEN SUBSTR(RE_SLIDE_KEYS, INSTR(RE_SLIDE_KEYS, REGEXP_SUBSTR(RE_SLIDE_KEYS, '[^;]+', 2, 1)))
                                                    WHEN (NULLIF(RE_SLIDE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_4, '') IS NOT NULL)
                                                    THEN SUBSTR(RE_SLIDE_KEYS, INSTR(RE_SLIDE_KEYS, REGEXP_SUBSTR(RE_SLIDE_KEYS, '[^;]+', 2, 1)))
                                                    ELSE NULL
                                                END AS SLIDE_KEYS_A6
                                            FROM(
                                                SELECT *,
                                                    CASE
                                                        WHEN (NULLIF(SA5, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_1, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            BINARY SLIDE_KEYS_A5, LENGTH(CONCAT(CONCAT(CONCAT(E_SA5, ';'), SA5), ';'))
                                                        )
                                                        WHEN (NULLIF(SA5, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_2, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            BINARY SLIDE_KEYS_A5, LENGTH(CONCAT(CONCAT(CONCAT(E_SA5, ';'), SA5), ';'))
                                                        )
                                                        WHEN (NULLIF(SA5, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_3, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            BINARY SLIDE_KEYS_A5, LENGTH(CONCAT(CONCAT(CONCAT(SA5, ';'), E_SA5), ';'))
                                                        )
                                                        WHEN (NULLIF(SA5, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_4, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            BINARY SLIDE_KEYS_A5, LENGTH(CONCAT(CONCAT(CONCAT(E_SA5, ' '), SA5), ';'))
                                                        )
                                                        ELSE NULL
                                                    END AS RE_SLIDE_KEYS
                                                FROM test_type5_sa05
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
