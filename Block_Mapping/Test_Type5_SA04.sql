SELECT
    원무접수ID,
    E_SA4,
    SA4,
    SLIDE_KEYS_A4,
    SLIDE_KEYS_1,
    SLIDE_KEYS_2,
    SLIDE_KEYS_3,
    SLIDE_KEYS_4
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(E_SA4_1, '') IS NOT NULL)
            THEN E_SA4_1
            WHEN (NULLIF(E_SA4_2, '') IS NOT NULL)
            THEN E_SA4_2
            WHEN (NULLIF(E_SA4_3, '') IS NOT NULL)
            THEN E_SA4_3
            WHEN (NULLIF(E_SA4_4, '') IS NOT NULL)
            THEN E_SA4_4
            ELSE NULL
        END AS E_SA4,
        CASE
            WHEN (NULLIF(SA4_1, '') IS NOT NULL)
            THEN SA4_1
            WHEN (NULLIF(SA4_2, '') IS NOT NULL)
            THEN SA4_2
            WHEN (NULLIF(SA4_3, '') IS NOT NULL)
            THEN SA4_3
            WHEN (NULLIF(SA4_4, '') IS NOT NULL)
            THEN SA4_4
            ELSE NULL
        END AS SA4
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(SA4_1_1, '') IS NOT NULL AND NULLIF(SA4_1_1_1, '') IS NULL AND NULLIF(SA4_1_1_2, '') IS NULL AND NULLIF(SA4_1_1_3, '') IS NULL AND NULLIF(SA4_1_1_4, '') IS NULL)
                THEN SA4_1_1
                WHEN (NULLIF(SA4_1_1, '') IS NOT NULL AND NULLIF(SA4_1_1_1, '') IS NOT NULL AND NULLIF(SA4_1_1_2, '') IS NULL AND NULLIF(SA4_1_1_3, '') IS NULL AND NULLIF(SA4_1_1_4, '') IS NULL)
                THEN SA4_1_1_1
                WHEN (NULLIF(SA4_1_1, '') IS NOT NULL AND NULLIF(SA4_1_1_1, '') IS NOT NULL AND NULLIF(SA4_1_1_2, '') IS NOT NULL AND NULLIF(SA4_1_1_3, '') IS NULL AND NULLIF(SA4_1_1_4, '') IS NULL)
                THEN SA4_1_1_2
                WHEN (NULLIF(SA4_1_1, '') IS NOT NULL AND NULLIF(SA4_1_1_1, '') IS NOT NULL AND NULLIF(SA4_1_1_2, '') IS NOT NULL AND NULLIF(SA4_1_1_3, '') IS NOT NULL AND NULLIF(SA4_1_1_4, '') IS NULL)
                THEN SA4_1_1_3
                WHEN (NULLIF(SA4_1_1, '') IS NOT NULL AND NULLIF(SA4_1_1_1, '') IS NOT NULL AND NULLIF(SA4_1_1_2, '') IS NOT NULL AND NULLIF(SA4_1_1_3, '') IS NOT NULL AND NULLIF(SA4_1_1_4, '') IS NOT NULL)
                THEN SA4_1_1_4
                WHEN (NULLIF(SA4_1_2, '') IS NOT NULL AND NULLIF(SA4_1_2_1, '') IS NULL AND NULLIF(SA4_1_2_2, '') IS NULL AND NULLIF(SA4_1_2_3, '') IS NULL AND NULLIF(SA4_1_2_4, '') IS NULL)
                THEN SA4_1_2
                WHEN (NULLIF(SA4_1_2, '') IS NOT NULL AND NULLIF(SA4_1_2_1, '') IS NOT NULL AND NULLIF(SA4_1_2_2, '') IS NULL AND NULLIF(SA4_1_2_3, '') IS NULL AND NULLIF(SA4_1_2_4, '') IS NULL)
                THEN SA4_1_2_1
                WHEN (NULLIF(SA4_1_2, '') IS NOT NULL AND NULLIF(SA4_1_2_1, '') IS NOT NULL AND NULLIF(SA4_1_2_2, '') IS NOT NULL AND NULLIF(SA4_1_2_3, '') IS NULL AND NULLIF(SA4_1_2_4, '') IS NULL)
                THEN SA4_1_2_2
                WHEN (NULLIF(SA4_1_2, '') IS NOT NULL AND NULLIF(SA4_1_2_1, '') IS NOT NULL AND NULLIF(SA4_1_2_2, '') IS NOT NULL AND NULLIF(SA4_1_2_3, '') IS NOT NULL AND NULLIF(SA4_1_2_4, '') IS NULL)
                THEN SA4_1_2_3
                WHEN (NULLIF(SA4_1_2, '') IS NOT NULL AND NULLIF(SA4_1_2_1, '') IS NOT NULL AND NULLIF(SA4_1_2_2, '') IS NOT NULL AND NULLIF(SA4_1_2_3, '') IS NOT NULL AND NULLIF(SA4_1_2_4, '') IS NOT NULL)
                THEN SA4_1_2_4
                ELSE NULL
            END AS SA4_1,
            CASE
                WHEN (NULLIF(SA4_2_1, '') IS NOT NULL AND NULLIF(SA4_2_1_1, '') IS NULL AND NULLIF(SA4_2_1_2, '') IS NULL AND NULLIF(SA4_2_1_3, '') IS NULL AND NULLIF(SA4_2_1_4, '') IS NULL)
                THEN SA4_2_1
                WHEN (NULLIF(SA4_2_1, '') IS NOT NULL AND NULLIF(SA4_2_1_1, '') IS NOT NULL AND NULLIF(SA4_2_1_2, '') IS NULL AND NULLIF(SA4_2_1_3, '') IS NULL AND NULLIF(SA4_2_1_4, '') IS NULL)
                THEN SA4_2_1_1
                WHEN (NULLIF(SA4_2_1, '') IS NOT NULL AND NULLIF(SA4_2_1_1, '') IS NOT NULL AND NULLIF(SA4_2_1_2, '') IS NOT NULL AND NULLIF(SA4_2_1_3, '') IS NULL AND NULLIF(SA4_2_1_4, '') IS NULL)
                THEN SA4_2_1_2
                WHEN (NULLIF(SA4_2_1, '') IS NOT NULL AND NULLIF(SA4_2_1_1, '') IS NOT NULL AND NULLIF(SA4_2_1_2, '') IS NOT NULL AND NULLIF(SA4_2_1_3, '') IS NOT NULL AND NULLIF(SA4_2_1_4, '') IS NULL)
                THEN SA4_2_1_3
                WHEN (NULLIF(SA4_2_1, '') IS NOT NULL AND NULLIF(SA4_2_1_1, '') IS NOT NULL AND NULLIF(SA4_2_1_2, '') IS NOT NULL AND NULLIF(SA4_2_1_3, '') IS NOT NULL AND NULLIF(SA4_2_1_4, '') IS NOT NULL)
                THEN SA4_2_1_4
                WHEN (NULLIF(SA4_2_2, '') IS NOT NULL AND NULLIF(SA4_2_2_1, '') IS NULL AND NULLIF(SA4_2_2_2, '') IS NULL AND NULLIF(SA4_2_2_3, '') IS NULL AND NULLIF(SA4_2_2_4, '') IS NULL)
                THEN SA4_2_2
                WHEN (NULLIF(SA4_2_2, '') IS NOT NULL AND NULLIF(SA4_2_2_1, '') IS NOT NULL AND NULLIF(SA4_2_2_2, '') IS NULL AND NULLIF(SA4_2_2_3, '') IS NULL AND NULLIF(SA4_2_2_4, '') IS NULL)
                THEN SA4_2_2_1
                WHEN (NULLIF(SA4_2_2, '') IS NOT NULL AND NULLIF(SA4_2_2_1, '') IS NOT NULL AND NULLIF(SA4_2_2_2, '') IS NOT NULL AND NULLIF(SA4_2_2_3, '') IS NULL AND NULLIF(SA4_2_2_4, '') IS NULL)
                THEN SA4_2_2_2
                WHEN (NULLIF(SA4_2_2, '') IS NOT NULL AND NULLIF(SA4_2_2_1, '') IS NOT NULL AND NULLIF(SA4_2_2_2, '') IS NOT NULL AND NULLIF(SA4_2_2_3, '') IS NOT NULL AND NULLIF(SA4_2_2_4, '') IS NULL)
                THEN SA4_2_2_3
                WHEN (NULLIF(SA4_2_2, '') IS NOT NULL AND NULLIF(SA4_2_2_1, '') IS NOT NULL AND NULLIF(SA4_2_2_2, '') IS NOT NULL AND NULLIF(SA4_2_2_3, '') IS NOT NULL AND NULLIF(SA4_2_2_4, '') IS NOT NULL)
                THEN SA4_2_2_4
                ELSE NULL
            END AS SA4_2
        FROM(
            SELECT *,
                CASE
                    WHEN (NULLIF(E_SA4_1_1, '') IS NOT NULL)
                    THEN E_SA4_1_1
                    WHEN (NULLIF(E_SA4_1_2, '') IS NOT NULL)
                    THEN E_SA4_1_2
                    ELSE NULL
                END AS E_SA4_1,
                CASE
                    WHEN (NULLIF(E_SA4_2_1, '') IS NOT NULL)
                    THEN E_SA4_2_1
                    WHEN (NULLIF(E_SA4_2_2, '') IS NOT NULL)
                    THEN E_SA4_2_2
                    ELSE NULL
                END AS E_SA4_2
            FROM(
                SELECT *,
                    CASE
                        WHEN (NULLIF(SA4_1_1_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 6), '^[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA4_1_1_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 6)
                        )
                        WHEN (NULLIF(SA4_1_1_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_4, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA4_1_1_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 6)
                        )
                        ELSE NULL
                    END AS SA4_1_1_4,
                    CASE
                        WHEN (NULLIF(SA4_1_2_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 7), '^[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA4_1_2_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 7)
                        )
                        WHEN (NULLIF(SA4_1_2_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_4, '[^;]+', 1, 7), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA4_1_2_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 7)
                        )
                        ELSE NULL
                    END AS SA4_1_2_4,
                    CASE
                        WHEN (NULLIF(SA4_2_1_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_4, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA4_1_1_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_2_4, '[^;]+', 1, 6)
                        )
                        ELSE NULL
                    END AS SA4_2_1_4,
                    CASE
                        WHEN (NULLIF(SA4_2_2_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_4, '[^;]+', 1, 7), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA4_2_2_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_2_4, '[^;]+', 1, 7)
                        )
                        ELSE NULL
                    END AS SA4_2_2_4
                FROM(
                    SELECT *,
                        CASE
                            WHEN (NULLIF(SA4_1_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 5), '^[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA4_1_1_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 5)
                            )
                            WHEN (NULLIF(SA4_1_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_4, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA4_1_1_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 5)
                            )
                            ELSE NULL
                        END AS SA4_1_1_3,
                        CASE
                            WHEN (NULLIF(SA4_1_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 6), '^[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA4_1_2_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 6)
                            )
                            WHEN (NULLIF(SA4_1_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_4, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA4_1_2_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 6)
                            )
                            ELSE NULL
                        END AS SA4_1_2_3,
                        CASE
                            WHEN (NULLIF(SA4_2_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_4, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA4_2_1_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_2_4, '[^;]+', 1, 5)
                            )
                            ELSE NULL
                        END AS SA4_2_1_3,
                        CASE
                            WHEN (NULLIF(SA4_2_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_4, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA4_2_2_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_2_4, '[^;]+', 1, 6)
                            )
                            ELSE NULL
                        END AS SA4_2_2_3
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (NULLIF(SA4_1_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 4), '^[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA4_1_1_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 4)
                                )
                                WHEN (NULLIF(SA4_1_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_4, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA4_1_1_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 4)
                                )
                                ELSE NULL
                            END AS SA4_1_1_2,
                            CASE
                                WHEN (NULLIF(SA4_1_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 5), '^[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA4_1_2_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 5)
                                )
                                WHEN (NULLIF(SA4_1_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_4, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA4_1_2_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 5)
                                )
                                ELSE NULL
                            END AS SA4_1_2_2,
                            CASE
                                WHEN (NULLIF(SA4_2_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_4, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA4_1_1_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_2_4, '[^;]+', 1, 4)
                                )
                                ELSE NULL
                            END AS SA4_2_1_2,
                            CASE
                                WHEN (NULLIF(SA4_2_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_4, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA4_2_2_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_2_4, '[^;]+', 1, 5)
                                )
                                ELSE NULL
                            END AS SA4_2_2_2
                        FROM(
                            SELECT *,
                                CASE
                                    WHEN (NULLIF(SA4_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 3), '^[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA4_1_1, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 3)
                                    )
                                    WHEN (NULLIF(SA4_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_4, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA4_1_1, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 3)
                                    )
                                    ELSE NULL
                                END AS SA4_1_1_1,
                                CASE
                                    WHEN (NULLIF(SA4_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 4), '^[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA4_1_2, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 4)
                                    )
                                    WHEN (NULLIF(SA4_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_4, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA4_1_2, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 4)
                                    )
                                    ELSE NULL
                                END AS SA4_1_2_1,
                                CASE
                                    WHEN (NULLIF(SA4_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_4, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA4_2_1, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_2_4, '[^;]+', 1, 3)
                                    )
                                    ELSE NULL
                                END AS SA4_2_1_1,
                                CASE
                                    WHEN (NULLIF(SA4_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_4, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA4_2_2, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_2_4, '[^;]+', 1, 4)
                                    )
                                    ELSE NULL
                                END AS SA4_2_2_1
                            FROM(
                                SELECT *,
                                    CASE
                                        WHEN (NULLIF(E_SA4_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 2), '^[0-9]{1,3}') != 0)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 2)
                                        WHEN (NULLIF(E_SA4_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_4, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 2)
                                        ELSE NULL
                                    END AS SA4_1_1,
                                    CASE
                                        WHEN (NULLIF(E_SA4_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 3), '^[0-9]{1,3}') != 0)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 3)
                                        WHEN (NULLIF(E_SA4_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_4, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 3)
                                        ELSE NULL
                                    END AS SA4_1_2,
                                    CASE
                                        WHEN (NULLIF(E_SA4_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_4, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_2_4, '[^;]+', 1, 2)
                                        WHEN (NULLIF(E_SA4_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_4, '[^;]+', 1, 2), '^[B]') != 0)
                                        THEN NULL
                                        ELSE NULL
                                    END AS SA4_2_1,
                                    CASE
                                        WHEN (NULLIF(E_SA4_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_4, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_2_4, '[^;]+', 1, 3)
                                        ELSE NULL
                                    END AS SA4_2_2,
                                    CASE
                                        WHEN (NULLIF(E_SA4_3, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_3_4, '[^;]+', 1, 1)
                                        ELSE NULL
                                    END AS SA4_3,
                                    CASE
                                        WHEN (NULLIF(E_SA4_4, '') IS NOT NULL)
                                        THEN SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_4, '[^;]+', 1, 1), REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_4, '[^;]+', 1, 1), '[(]'))
                                        ELSE NULL
                                    END AS SA4_4
                                FROM(
                                    SELECT *,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_1_4, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 2), '^[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 1)
                                            WHEN (NULLIF(SLIDE_KEYS_1_4, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_4, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 1)
                                            ELSE NULL
                                        END AS E_SA4_1_1,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_1_4, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 2), '^[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 3), '^[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 2)
                                            )
                                            WHEN (NULLIF(SLIDE_KEYS_1_4, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 2), '^[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_4, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 2)
                                            )
                                            WHEN (NULLIF(SLIDE_KEYS_1_4, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_4, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 3), '^[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 2)
                                            )
                                            WHEN (NULLIF(SLIDE_KEYS_1_4, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_4, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_4, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 2)
                                            )
                                            ELSE NULL
                                        END AS E_SA4_1_2,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_2_4, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_4, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_2_4, '[^;]+', 1, 1)
                                            WHEN (NULLIF(SLIDE_KEYS_2_4, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_4, '[^;]+', 1, 2), '^[B]') != 0)
                                            THEN NULL
                                            ELSE NULL
                                        END AS E_SA4_2_1,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_2_4, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_4, '[^;]+', 1, 2), '[A-Z]{1,2}[0-9]{1,3} ') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_4, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(SLIDE_KEYS_2_4, '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(SLIDE_KEYS_2_4, '[^;]+', 1, 2)
                                            )
                                            ELSE NULL
                                        END AS E_SA4_2_2,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_3_4, '') IS NOT NULL)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_3_4, '[^;]+', 1, 2)
                                            ELSE NULL
                                        END AS E_SA4_3,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_4_4, '') IS NOT NULL)
                                            THEN SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_4, '[^;]+', 1, 1), 1, REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_4, '[^;]+', 1, 1), ' [(]'))
                                            ELSE NULL
                                        END AS E_SA4_4
                                    FROM(
                                        SELECT *,
                                            CASE
                                                WHEN (NULLIF(SLIDE_KEYS_A4, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_1, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_A4
                                                ELSE NULL
                                            END AS SLIDE_KEYS_1_4,
                                            CASE
                                                WHEN (NULLIF(SLIDE_KEYS_A4, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_2, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_A4
                                                ELSE NULL
                                            END AS SLIDE_KEYS_2_4,
                                            CASE
                                                WHEN (NULLIF(SLIDE_KEYS_A4, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_3, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_A4
                                                ELSE NULL
                                            END AS SLIDE_KEYS_3_4,
                                            CASE
                                                WHEN (NULLIF(SLIDE_KEYS_A4, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_4, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_A4
                                                ELSE NULL
                                            END AS SLIDE_KEYS_4_4
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
                                                END AS SLIDE_KEYS_A4
                                            FROM(
                                                SELECT *,
                                                    CASE
                                                        WHEN (NULLIF(SA3, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_1, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            BINARY SLIDE_KEYS_A3, LENGTH(CONCAT(CONCAT(CONCAT(E_SA3, ';'), SA3), ';'))
                                                        )
                                                        WHEN (NULLIF(SA3, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_2, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            BINARY SLIDE_KEYS_A3, LENGTH(CONCAT(CONCAT(CONCAT(E_SA3, ';'), SA3), ';'))
                                                        )
                                                        WHEN (NULLIF(SA3, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_3, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            BINARY SLIDE_KEYS_A3, LENGTH(CONCAT(CONCAT(CONCAT(SA3, ';'), E_SA3), ';'))
                                                        )
                                                        WHEN (NULLIF(SA3, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_4, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            BINARY SLIDE_KEYS_A3, LENGTH(CONCAT(CONCAT(CONCAT(E_SA3, ' '), SA3), ';'))
                                                        )
                                                        ELSE NULL
                                                    END AS RE_SLIDE_KEYS
                                                FROM test_type5_sa03
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