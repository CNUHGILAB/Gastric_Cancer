SELECT
    원무접수ID,
    E_SA3,
    SA3,
    SLIDE_KEYS_A3,
    SLIDE_KEYS_1,
    SLIDE_KEYS_2,
    SLIDE_KEYS_3,
    SLIDE_KEYS_4,
    SLIDE_KEYS_5,
    SLIDE_KEYS_6,
    SLIDE_KEYS_7
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(E_SA3_1, '') IS NOT NULL)
            THEN E_SA3_1
            WHEN (NULLIF(E_SA3_2, '') IS NOT NULL)
            THEN E_SA3_2
            WHEN (NULLIF(E_SA3_3, '') IS NOT NULL)
            THEN E_SA3_3
            WHEN (NULLIF(E_SA3_4, '') IS NOT NULL)
            THEN E_SA3_4
            WHEN (NULLIF(E_SA3_5, '') IS NOT NULL)
            THEN E_SA3_5
            WHEN (NULLIF(E_SA3_6, '') IS NOT NULL)
            THEN E_SA3_6
            WHEN (NULLIF(E_SA3_7, '') IS NOT NULL)
            THEN E_SA3_7
            ELSE NULL
        END AS E_SA3,
        CASE
            WHEN (NULLIF(SA3_1, '') IS NOT NULL)
            THEN SA3_1
            WHEN (NULLIF(SA3_2, '') IS NOT NULL)
            THEN SA3_2
            WHEN (NULLIF(SA3_3, '') IS NOT NULL)
            THEN SA3_3
            WHEN (NULLIF(SA3_4, '') IS NOT NULL)
            THEN SA3_4
            WHEN (NULLIF(SA3_5, '') IS NOT NULL)
            THEN SA3_5
            WHEN (NULLIF(SA3_6, '') IS NOT NULL)
            THEN SA3_6
            WHEN (NULLIF(SA3_7, '') IS NOT NULL)
            THEN SA3_7
            ELSE NULL
        END AS SA3
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(SA3_1_1, '') IS NOT NULL)
                THEN SA3_1_1
                WHEN (NULLIF(SA3_1_2, '') IS NOT NULL)
                THEN SA3_1_2
                WHEN (NULLIF(SA3_1_3, '') IS NOT NULL)
                THEN SA3_1_3
                ELSE NULL
            END AS SA3_1,
            CASE
                WHEN (NULLIF(SA3_2_1, '') IS NOT NULL AND NULLIF(SA3_2_1_1, '') IS NULL AND NULLIF(SA3_2_1_2, '') IS NULL AND NULLIF(SA3_2_1_3, '') IS NULL AND NULLIF(SA3_2_1_4, '') IS NULL)
                THEN SA3_2_1
                WHEN (NULLIF(SA3_2_1, '') IS NOT NULL AND NULLIF(SA3_2_1_1, '') IS NOT NULL AND NULLIF(SA3_2_1_2, '') IS NULL AND NULLIF(SA3_2_1_3, '') IS NULL AND NULLIF(SA3_2_1_4, '') IS NULL)
                THEN SA3_2_1_1
                WHEN (NULLIF(SA3_2_1, '') IS NOT NULL AND NULLIF(SA3_2_1_1, '') IS NOT NULL AND NULLIF(SA3_2_1_2, '') IS NOT NULL AND NULLIF(SA3_2_1_3, '') IS NULL AND NULLIF(SA3_2_1_4, '') IS NULL)
                THEN SA3_2_1_2
                WHEN (NULLIF(SA3_2_1, '') IS NOT NULL AND NULLIF(SA3_2_1_1, '') IS NOT NULL AND NULLIF(SA3_2_1_2, '') IS NOT NULL AND NULLIF(SA3_2_1_3, '') IS NOT NULL AND NULLIF(SA3_2_1_4, '') IS NULL)
                THEN SA3_2_1_3
                WHEN (NULLIF(SA3_2_1, '') IS NOT NULL AND NULLIF(SA3_2_1_1, '') IS NOT NULL AND NULLIF(SA3_2_1_2, '') IS NOT NULL AND NULLIF(SA3_2_1_3, '') IS NOT NULL AND NULLIF(SA3_2_1_4, '') IS NOT NULL)
                THEN SA3_2_1_4
                WHEN (NULLIF(SA3_2_2, '') IS NOT NULL AND NULLIF(SA3_2_2_1, '') IS NULL AND NULLIF(SA3_2_2_2, '') IS NULL AND NULLIF(SA3_2_2_3, '') IS NULL AND NULLIF(SA3_2_2_4, '') IS NULL)
                THEN SA3_2_2
                WHEN (NULLIF(SA3_2_2, '') IS NOT NULL AND NULLIF(SA3_2_2_1, '') IS NOT NULL AND NULLIF(SA3_2_2_2, '') IS NULL AND NULLIF(SA3_2_2_3, '') IS NULL AND NULLIF(SA3_2_2_4, '') IS NULL)
                THEN SA3_2_2_1
                WHEN (NULLIF(SA3_2_2, '') IS NOT NULL AND NULLIF(SA3_2_2_1, '') IS NOT NULL AND NULLIF(SA3_2_2_2, '') IS NOT NULL AND NULLIF(SA3_2_2_3, '') IS NULL AND NULLIF(SA3_2_2_4, '') IS NULL)
                THEN SA3_2_2_2
                WHEN (NULLIF(SA3_2_2, '') IS NOT NULL AND NULLIF(SA3_2_2_1, '') IS NOT NULL AND NULLIF(SA3_2_2_2, '') IS NOT NULL AND NULLIF(SA3_2_2_3, '') IS NOT NULL AND NULLIF(SA3_2_2_4, '') IS NULL)
                THEN SA3_2_2_3
                WHEN (NULLIF(SA3_2_2, '') IS NOT NULL AND NULLIF(SA3_2_2_1, '') IS NOT NULL AND NULLIF(SA3_2_2_2, '') IS NOT NULL AND NULLIF(SA3_2_2_3, '') IS NOT NULL AND NULLIF(SA3_2_2_4, '') IS NOT NULL)
                THEN SA3_2_2_4
                ELSE NULL
            END AS SA3_2,
            CASE
                WHEN (NULLIF(SA3_6_1, '') IS NOT NULL)
                THEN SA3_6_1
                WHEN (NULLIF(SA3_6_2, '') IS NOT NULL AND NULLIF(SA3_6_2_1, '') IS NULL)
                THEN SA3_6_2
                WHEN (NULLIF(SA3_6_2, '') IS NOT NULL AND NULLIF(SA3_6_2_1, '') IS NOT NULL)
                THEN SA3_6_2_1
                ELSE NULL
            END AS SA3_6
        FROM(
            SELECT *,
                CASE
                    WHEN (NULLIF(E_SA3_1_1, '') IS NOT NULL)
                    THEN E_SA3_1_1
                    WHEN (NULLIF(E_SA3_1_2, '') IS NOT NULL)
                    THEN E_SA3_1_2
                    WHEN (NULLIF(E_SA3_1_3, '') IS NOT NULL)
                    THEN E_SA3_1_3
                    ELSE NULL
                END AS E_SA3_1,
                CASE
                    WHEN (NULLIF(E_SA3_2_1, '') IS NOT NULL)
                    THEN E_SA3_2_1
                    WHEN (NULLIF(E_SA3_2_2, '') IS NOT NULL)
                    THEN E_SA3_2_2
                    ELSE NULL
                END AS E_SA3_2,
                CASE
                    WHEN (NULLIF(E_SA3_6_1, '') IS NOT NULL)
                    THEN E_SA3_6_1
                    WHEN (NULLIF(E_SA3_6_2, '') IS NOT NULL)
                    THEN E_SA3_6_2
                    ELSE NULL
                END AS E_SA3_6
            FROM(
                SELECT *,
                    CASE
                        WHEN (NULLIF(SA3_2_1_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_3, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA3_2_1_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_2_3, '[^;]+', 1, 6)
                        )
                        ELSE NULL
                    END AS SA3_2_1_4,
                    CASE
                        WHEN (NULLIF(SA3_2_2_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_3, '[^;]+', 1, 7), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA3_2_2_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_2_3, '[^;]+', 1, 7)
                        )
                        ELSE NULL
                    END AS SA3_2_2_4
                FROM(
                    SELECT *,
                        CASE
                            WHEN (NULLIF(SA3_2_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_3, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA3_2_1_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_2_3, '[^;]+', 1, 5)
                            )
                            ELSE NULL
                        END AS SA3_2_1_3,
                        CASE
                            WHEN (NULLIF(SA3_2_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_3, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA3_2_2_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_2_3, '[^;]+', 1, 6)
                            )
                            ELSE NULL
                        END AS SA3_2_2_3
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (NULLIF(SA3_2_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_3, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA3_2_1_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_2_3, '[^;]+', 1, 4)
                                )
                                ELSE NULL
                            END AS SA3_2_1_2,
                            CASE
                                WHEN (NULLIF(SA3_2_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_3, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA3_2_2_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_2_3, '[^;]+', 1, 5)
                                )
                                ELSE NULL
                            END AS SA3_2_2_2
                        FROM(
                            SELECT *,
                                CASE
                                    WHEN (NULLIF(SA3_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_3, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA3_2_1, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_2_3, '[^;]+', 1, 3)
                                    )
                                    ELSE NULL
                                END AS SA3_2_1_1,
                                CASE
                                    WHEN (NULLIF(SA3_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_3, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA3_2_2, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_2_3, '[^;]+', 1, 4)
                                    )
                                    ELSE NULL
                                END AS SA3_2_2_1,
                                CASE
                                    WHEN (NULLIF(SA3_6_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_6_3, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA3_6_2, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_6_3, '[^;]+', 1, 2)
                                    )
                                    ELSE NULL
                                END AS SA3_6_2_1
                            FROM(
                                SELECT *,
                                    CASE
                                        WHEN (NULLIF(E_SA3_1_1, '') IS NOT NULL)
                                        THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_3, '[^\n]+', 1, 1), INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_3, '[^\n]+', 1, 1), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_3, '[^\n]+', 1, 1), '[^;]+', 1, 2)))
                                        ELSE NULL
                                    END AS SA3_1_1,
                                    CASE
                                        WHEN (NULLIF(E_SA3_1_2, '') IS NOT NULL)
                                        THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_3, '[^\n]+', 1, 1), INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_3, '[^\n]+', 1, 1), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_3, '[^\n]+', 1, 1), '[^;]+', 1, 3)))
                                        ELSE NULL
                                    END AS SA3_1_2,
                                    CASE
                                        WHEN (NULLIF(E_SA3_1_3, '') IS NOT NULL)
                                        THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_3, '[^\n]+', 1, 1), REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_3, '[^\n]+', 1, 1), ' [A-Z]{1,2}[0-9]{1,3}'))
                                        ELSE NULL
                                    END AS SA3_1_3,
                                    CASE
                                        WHEN (NULLIF(E_SA3_2_1, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_2_3, '[^;]+', 1, 2)
                                        ELSE NULL
                                    END AS SA3_2_1,
                                    CASE
                                        WHEN (NULLIF(E_SA3_2_2, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_2_3, '[^;]+', 1, 3)
                                        ELSE NULL
                                    END AS SA3_2_2,
                                    CASE
                                        WHEN (NULLIF(E_SA3_3, '') IS NOT NULL)
                                        THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_3_3, '[^\n]+', 1, 1), INSTR(REGEXP_SUBSTR(SLIDE_KEYS_3_3, '[^\n]+', 1, 1), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_3_3, '[^\n]+', 1, 1), '[^;]+', 1, 2)))
                                        ELSE NULL
                                    END AS SA3_3,
                                    CASE
                                        WHEN (NULLIF(E_SA3_4, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_4_3, '[^;]+', 1, 1)
                                        ELSE NULL
                                    END AS SA3_4,
                                    CASE
                                        WHEN (NULLIF(E_SA3_5, '') IS NOT NULL)
                                        THEN SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_5_3, '[^;]+', 1, 1), 1, REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_5_3, '[^;]+', 1, 1), ' [(]'))
                                        ELSE NULL
                                    END AS SA3_5,
                                    CASE
                                        WHEN (NULLIF(E_SA3_6_1, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_6_3, '[^;]+', 1, 1)
                                        ELSE NULL
                                    END AS SA3_6_1,
                                    CASE
                                        WHEN (NULLIF(E_SA3_6_2, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_6_3, '[^;]+', 1, 1)
                                        ELSE NULL
                                    END AS SA3_6_2,
                                    CASE
                                        WHEN (NULLIF(E_SA3_7, '') IS NOT NULL)
                                        THEN SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_7_3, '[^;]+', 1, 1), 1, REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_7_3, '[^;]+', 1, 1), ' [(]'))
                                        ELSE NULL
                                    END AS SA3_7
                                FROM(
                                    SELECT *,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_1_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_3, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_3, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_3, '[^\n]+', 1, 1), '[^;]+', 1, 1)
                                            ELSE NULL
                                        END AS E_SA3_1_1,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_1_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_3, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_3, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_3, '[^\n]+', 1, 1), '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_3, '[^\n]+', 1, 1), '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_3, '[^\n]+', 1, 1), '[^;]+', 1, 2)
                                            )
                                            ELSE NULL
                                        END AS E_SA3_1_2,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_1_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_3, '[^\n]+', 1, 1), ' [A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_3, '[^\n]+', 1, 1), 1, REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_3, '[^\n]+', 1, 1), '[A-Z]{1,2}[0-9]{1,3}'))
                                            ELSE NULL
                                        END AS E_SA3_1_3,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_2_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_3, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_3, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_2_3, '[^;]+', 1, 1)
                                            ELSE NULL
                                        END AS E_SA3_2_1,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_2_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_3, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_3, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_3, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(SLIDE_KEYS_2_3, '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(SLIDE_KEYS_2_3, '[^;]+', 1, 2)
                                            )
                                            WHEN (NULLIF(SLIDE_KEYS_2_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_3, '[^;]+', 1, 1), '^[A-Z][a-z][0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_3, '[^;]+', 1, 2), '^[A-Z][a-z][0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_3, '[^;]+', 1, 3), '^[A-Z][a-z][0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(SLIDE_KEYS_2_3, '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(SLIDE_KEYS_2_3, '[^;]+', 1, 2)
                                            )
                                            ELSE NULL
                                        END AS E_SA3_2_2,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_3_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_3_3, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_3_3, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_3_3, '[^\n]+', 1, 1), '[^;]+', 1, 1)
                                            WHEN (NULLIF(SLIDE_KEYS_3_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_3_3, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_3_3, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_3_3, '[^\n]+', 1, 1), '[^;]+', 1, 1)
                                            ELSE NULL
                                        END AS E_SA3_3,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_4_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_3, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_3, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_4_3, '[^;]+', 1, 2)
                                            ELSE NULL
                                        END AS E_SA3_4,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_5_3, '') IS NOT NULL)
                                            THEN SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_5_3, '[^;]+', 1, 1), REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_5_3, '[^;]+', 1, 1), '[(]'))
                                            ELSE NULL
                                        END AS E_SA3_5,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_6_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_6_3, '[^;]+', 1, 1), '^[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_6_3, '[^;]+', 1, 2), '^[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_6_3, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_6_3, '[^;]+', 1, 2)
                                            ELSE NULL
                                        END AS E_SA3_6_1,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_6_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_6_3, '[^;]+', 1, 1), '^[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_6_3, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_6_3, '[^;]+', 1, 3), '^[0-9]{1,3}') = 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_6_3, '[^;]+', 1, 3)
                                            ELSE NULL
                                        END AS E_SA3_6_2,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_7_3, '') IS NOT NULL)
                                            THEN SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_7_3, '[^;]+', 1, 1), REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_7_3, '[^;]+', 1, 1), '[(]'))
                                            ELSE NULL
                                        END AS E_SA3_7
                                    FROM(
                                        SELECT *,
                                            CASE
                                                WHEN (NULLIF(SLIDE_KEYS_A3, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_1, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_A3
                                                ELSE NULL
                                            END AS SLIDE_KEYS_1_3,
                                            CASE
                                                WHEN (NULLIF(SLIDE_KEYS_A3, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_2, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_A3
                                                ELSE NULL
                                            END AS SLIDE_KEYS_2_3,
                                            CASE
                                                WHEN (NULLIF(SLIDE_KEYS_A3, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_3, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_A3
                                                ELSE NULL
                                            END AS SLIDE_KEYS_3_3,
                                            CASE
                                                WHEN (NULLIF(SLIDE_KEYS_A3, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_4, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_A3
                                                ELSE NULL
                                            END AS SLIDE_KEYS_4_3,
                                            CASE
                                                WHEN (NULLIF(SLIDE_KEYS_A3, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_5, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_A3
                                                ELSE NULL
                                            END AS SLIDE_KEYS_5_3,
                                            CASE
                                                WHEN (NULLIF(SLIDE_KEYS_A3, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_6, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_A3
                                                ELSE NULL
                                            END AS SLIDE_KEYS_6_3,
                                            CASE
                                                WHEN (NULLIF(SLIDE_KEYS_A3, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_7, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_A3
                                                ELSE NULL
                                            END AS SLIDE_KEYS_7_3
                                        FROM(
                                            SELECT *,
                                                CASE
                                                    WHEN (NULLIF(RE_SLIDE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_1, '') IS NOT NULL)
                                                    THEN REGEXP_SUBSTR(RE_SLIDE_KEYS, '[^\n]+', 1, 3)
                                                    WHEN (NULLIF(RE_SLIDE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_2, '') IS NOT NULL)
                                                    THEN SUBSTR(RE_SLIDE_KEYS, INSTR(RE_SLIDE_KEYS, REGEXP_SUBSTR(RE_SLIDE_KEYS, '[^;]+', 2, 1)))
                                                    WHEN (NULLIF(RE_SLIDE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_3, '') IS NOT NULL)
                                                    THEN REGEXP_SUBSTR(RE_SLIDE_KEYS, '[^\n]+', 1, 3)
                                                    WHEN (NULLIF(RE_SLIDE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_4, '') IS NOT NULL)
                                                    THEN SUBSTR(RE_SLIDE_KEYS, INSTR(RE_SLIDE_KEYS, REGEXP_SUBSTR(RE_SLIDE_KEYS, '[^;]+', 2, 1)))
                                                    WHEN (NULLIF(RE_SLIDE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_5, '') IS NOT NULL)
                                                    THEN SUBSTR(RE_SLIDE_KEYS, INSTR(RE_SLIDE_KEYS, REGEXP_SUBSTR(RE_SLIDE_KEYS, '[^;]+', 2, 1)))
                                                    WHEN (NULLIF(RE_SLIDE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_6, '') IS NOT NULL)
                                                    THEN SUBSTR(RE_SLIDE_KEYS, INSTR(RE_SLIDE_KEYS, REGEXP_SUBSTR(RE_SLIDE_KEYS, '[^;]+', 2, 1)))
                                                    WHEN (NULLIF(RE_SLIDE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_7, '') IS NOT NULL)
                                                    THEN SUBSTR(RE_SLIDE_KEYS, INSTR(RE_SLIDE_KEYS, REGEXP_SUBSTR(RE_SLIDE_KEYS, '[^;]+', 2, 1)))
                                                    ELSE NULL
                                                END AS SLIDE_KEYS_A3
                                            FROM(
                                                SELECT *,
                                                    CASE
                                                        WHEN (NULLIF(SA2, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_1, '') IS NOT NULL)
                                                        THEN SLIDE_KEYS_1
                                                        WHEN (NULLIF(SA2, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_2, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            BINARY SLIDE_KEYS_A2, LENGTH(CONCAT(CONCAT(CONCAT(E_SA2, ';'), SA2), ';'))
                                                        )
                                                        WHEN (NULLIF(SA2, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_3, '') IS NOT NULL)
                                                        THEN SLIDE_KEYS_3
                                                        WHEN (NULLIF(SA2, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_4, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            BINARY SLIDE_KEYS_A2, LENGTH(CONCAT(CONCAT(CONCAT(SA2, ';'), E_SA2), ';'))
                                                        )
                                                        WHEN (NULLIF(SA2, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_5, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            BINARY SLIDE_KEYS_A2, LENGTH(CONCAT(CONCAT(SA2, E_SA2), ';'))
                                                        )
                                                        WHEN (NULLIF(SA2, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_6, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            BINARY SLIDE_KEYS_A2, LENGTH(CONCAT(CONCAT(CONCAT(SA2, ';'), E_SA2), ';'))
                                                        )
                                                        WHEN (NULLIF(SA2, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_7, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            BINARY SLIDE_KEYS_A2, LENGTH(CONCAT(CONCAT(SA2, E_SA2), ';'))
                                                        )
                                                        ELSE NULL
                                                    END AS RE_SLIDE_KEYS
                                                FROM test_type6_sa02
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