SELECT
    원무접수ID,
    E_SA5,
    SA5,
    SLIDE_KEYS_A5,
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
            WHEN (NULLIF(E_SA5_1, '') IS NOT NULL)
            THEN E_SA5_1
            WHEN (NULLIF(E_SA5_2, '') IS NOT NULL)
            THEN E_SA5_2
            WHEN (NULLIF(E_SA5_3, '') IS NOT NULL)
            THEN E_SA5_3
            WHEN (NULLIF(E_SA5_4, '') IS NOT NULL)
            THEN E_SA5_4
            WHEN (NULLIF(E_SA5_5, '') IS NOT NULL)
            THEN E_SA5_5
            WHEN (NULLIF(E_SA5_6, '') IS NOT NULL)
            THEN E_SA5_6
            WHEN (NULLIF(E_SA5_7, '') IS NOT NULL)
            THEN E_SA5_7
            ELSE NULL
        END AS E_SA5,
        CASE
            WHEN (NULLIF(SA5_1, '') IS NOT NULL)
            THEN SA5_1
            WHEN (NULLIF(SA5_2, '') IS NOT NULL)
            THEN SA5_2
            WHEN (NULLIF(SA5_3, '') IS NOT NULL)
            THEN SA5_3
            WHEN (NULLIF(SA5_4, '') IS NOT NULL)
            THEN SA5_4
            WHEN (NULLIF(SA5_5, '') IS NOT NULL)
            THEN SA5_5
            WHEN (NULLIF(SA5_6, '') IS NOT NULL)
            THEN SA5_6
            WHEN (NULLIF(SA5_7, '') IS NOT NULL)
            THEN SA5_7
            ELSE NULL
        END AS SA5
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(SA5_1_1, '') IS NOT NULL)
                THEN SA5_1_1
                WHEN (NULLIF(SA5_1_2, '') IS NOT NULL)
                THEN SA5_1_2
                WHEN (NULLIF(SA5_1_3, '') IS NOT NULL)
                THEN SA5_1_3
                ELSE NULL
            END AS SA5_1,
            CASE
                WHEN (NULLIF(SA5_2_1, '') IS NOT NULL AND NULLIF(SA5_2_1_1, '') IS NULL AND NULLIF(SA5_2_1_2, '') IS NULL AND NULLIF(SA5_2_1_3, '') IS NULL AND NULLIF(SA5_2_1_4, '') IS NULL)
                THEN SA5_2_1
                WHEN (NULLIF(SA5_2_1, '') IS NOT NULL AND NULLIF(SA5_2_1_1, '') IS NOT NULL AND NULLIF(SA5_2_1_2, '') IS NULL AND NULLIF(SA5_2_1_3, '') IS NULL AND NULLIF(SA5_2_1_4, '') IS NULL)
                THEN SA5_2_1_1
                WHEN (NULLIF(SA5_2_1, '') IS NOT NULL AND NULLIF(SA5_2_1_1, '') IS NOT NULL AND NULLIF(SA5_2_1_2, '') IS NOT NULL AND NULLIF(SA5_2_1_3, '') IS NULL AND NULLIF(SA5_2_1_4, '') IS NULL)
                THEN SA5_2_1_2
                WHEN (NULLIF(SA5_2_1, '') IS NOT NULL AND NULLIF(SA5_2_1_1, '') IS NOT NULL AND NULLIF(SA5_2_1_2, '') IS NOT NULL AND NULLIF(SA5_2_1_3, '') IS NOT NULL AND NULLIF(SA5_2_1_4, '') IS NULL)
                THEN SA5_2_1_3
                WHEN (NULLIF(SA5_2_1, '') IS NOT NULL AND NULLIF(SA5_2_1_1, '') IS NOT NULL AND NULLIF(SA5_2_1_2, '') IS NOT NULL AND NULLIF(SA5_2_1_3, '') IS NOT NULL AND NULLIF(SA5_2_1_4, '') IS NOT NULL)
                THEN SA5_2_1_4
                WHEN (NULLIF(SA5_2_2, '') IS NOT NULL AND NULLIF(SA5_2_2_1, '') IS NULL AND NULLIF(SA5_2_2_2, '') IS NULL AND NULLIF(SA5_2_2_3, '') IS NULL AND NULLIF(SA5_2_2_4, '') IS NULL)
                THEN SA5_2_2
                WHEN (NULLIF(SA5_2_2, '') IS NOT NULL AND NULLIF(SA5_2_2_1, '') IS NOT NULL AND NULLIF(SA5_2_2_2, '') IS NULL AND NULLIF(SA5_2_2_3, '') IS NULL AND NULLIF(SA5_2_2_4, '') IS NULL)
                THEN SA5_2_2_1
                WHEN (NULLIF(SA5_2_2, '') IS NOT NULL AND NULLIF(SA5_2_2_1, '') IS NOT NULL AND NULLIF(SA5_2_2_2, '') IS NOT NULL AND NULLIF(SA5_2_2_3, '') IS NULL AND NULLIF(SA5_2_2_4, '') IS NULL)
                THEN SA5_2_2_2
                WHEN (NULLIF(SA5_2_2, '') IS NOT NULL AND NULLIF(SA5_2_2_1, '') IS NOT NULL AND NULLIF(SA5_2_2_2, '') IS NOT NULL AND NULLIF(SA5_2_2_3, '') IS NOT NULL AND NULLIF(SA5_2_2_4, '') IS NULL)
                THEN SA5_2_2_3
                WHEN (NULLIF(SA5_2_2, '') IS NOT NULL AND NULLIF(SA5_2_2_1, '') IS NOT NULL AND NULLIF(SA5_2_2_2, '') IS NOT NULL AND NULLIF(SA5_2_2_3, '') IS NOT NULL AND NULLIF(SA5_2_2_4, '') IS NOT NULL)
                THEN SA5_2_2_4
                ELSE NULL
            END AS SA5_2,
            CASE
                WHEN (NULLIF(SA5_6_1, '') IS NOT NULL)
                THEN SA5_6_1
                WHEN (NULLIF(SA5_6_2, '') IS NOT NULL AND NULLIF(SA5_6_2_1, '') IS NULL)
                THEN SA5_6_2
                WHEN (NULLIF(SA5_6_2, '') IS NOT NULL AND NULLIF(SA5_6_2_1, '') IS NOT NULL)
                THEN SA5_6_2_1
                ELSE NULL
            END AS SA5_6
        FROM(
            SELECT *,
                CASE
                    WHEN (NULLIF(E_SA5_1_1, '') IS NOT NULL)
                    THEN E_SA5_1_1
                    WHEN (NULLIF(E_SA5_1_2, '') IS NOT NULL)
                    THEN E_SA5_1_2
                    WHEN (NULLIF(E_SA5_1_3, '') IS NOT NULL)
                    THEN E_SA5_1_3
                    ELSE NULL
                END AS E_SA5_1,
                CASE
                    WHEN (NULLIF(E_SA5_2_1, '') IS NOT NULL)
                    THEN E_SA5_2_1
                    WHEN (NULLIF(E_SA5_2_2, '') IS NOT NULL)
                    THEN E_SA5_2_2
                    ELSE NULL
                END AS E_SA5_2,
                CASE
                    WHEN (NULLIF(E_SA5_6_1, '') IS NOT NULL)
                    THEN E_SA5_6_1
                    WHEN (NULLIF(E_SA5_6_2, '') IS NOT NULL)
                    THEN E_SA5_6_2
                    ELSE NULL
                END AS E_SA5_6
            FROM(
                SELECT *,
                    CASE
                        WHEN (NULLIF(SA5_2_1_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_5, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA5_2_1_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_2_5, '[^;]+', 1, 6)
                        )
                        ELSE NULL
                    END AS SA5_2_1_4,
                    CASE
                        WHEN (NULLIF(SA5_2_2_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_5, '[^;]+', 1, 7), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA5_2_2_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_2_5, '[^;]+', 1, 7)
                        )
                        ELSE NULL
                    END AS SA5_2_2_4
                FROM(
                    SELECT *,
                        CASE
                            WHEN (NULLIF(SA5_2_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_5, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA5_2_1_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_2_5, '[^;]+', 1, 5)
                            )
                            ELSE NULL
                        END AS SA5_2_1_3,
                        CASE
                            WHEN (NULLIF(SA5_2_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_5, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA5_2_2_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_2_5, '[^;]+', 1, 6)
                            )
                            ELSE NULL
                        END AS SA5_2_2_3
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (NULLIF(SA5_2_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_5, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA5_2_1_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_2_5, '[^;]+', 1, 4)
                                )
                                ELSE NULL
                            END AS SA5_2_1_2,
                            CASE
                                WHEN (NULLIF(SA5_2_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_5, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA5_2_2_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_2_5, '[^;]+', 1, 5)
                                )
                                ELSE NULL
                            END AS SA5_2_2_2
                        FROM(
                            SELECT *,
                                CASE
                                    WHEN (NULLIF(SA5_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_5, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA5_2_1, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_2_5, '[^;]+', 1, 3)
                                    )
                                    ELSE NULL
                                END AS SA5_2_1_1,
                                CASE
                                    WHEN (NULLIF(SA5_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_5, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA5_2_2, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_2_5, '[^;]+', 1, 4)
                                    )
                                    ELSE NULL
                                END AS SA5_2_2_1,
                                CASE
                                    WHEN (NULLIF(SA5_6_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_6_5, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA5_6_2, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_6_5, '[^;]+', 1, 2)
                                    )
                                    ELSE NULL
                                END AS SA5_6_2_1
                            FROM(
                                SELECT *,
                                    CASE
                                        WHEN (NULLIF(E_SA5_1_1, '') IS NOT NULL)
                                        THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_5, '[^\n]+', 1, 1), INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_5, '[^\n]+', 1, 1), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_5, '[^\n]+', 1, 1), '[^;]+', 1, 2)))
                                        ELSE NULL
                                    END AS SA5_1_1,
                                    CASE
                                        WHEN (NULLIF(E_SA5_1_2, '') IS NOT NULL)
                                        THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_5, '[^\n]+', 1, 1), INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_5, '[^\n]+', 1, 1), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_5, '[^\n]+', 1, 1), '[^;]+', 1, 3)))
                                        ELSE NULL
                                    END AS SA5_1_2,
                                    CASE
                                        WHEN (NULLIF(E_SA5_1_3, '') IS NOT NULL)
                                        THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_5, '[^\n]+', 1, 1), REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_5, '[^\n]+', 1, 1), ' [A-Z]{1,2}[0-9]{1,3}'))
                                        ELSE NULL
                                    END AS SA5_1_3,
                                    CASE
                                        WHEN (NULLIF(E_SA5_2_1, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_2_5, '[^;]+', 1, 2)
                                        ELSE NULL
                                    END AS SA5_2_1,
                                    CASE
                                        WHEN (NULLIF(E_SA5_2_2, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_2_5, '[^;]+', 1, 3)
                                        ELSE NULL
                                    END AS SA5_2_2,
                                    CASE
                                        WHEN (NULLIF(E_SA5_3, '') IS NOT NULL)
                                        THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_3_5, '[^\n]+', 1, 1), INSTR(REGEXP_SUBSTR(SLIDE_KEYS_3_5, '[^\n]+', 1, 1), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_3_5, '[^\n]+', 1, 1), '[^;]+', 1, 2)))
                                        ELSE NULL
                                    END AS SA5_3,
                                    CASE
                                        WHEN (NULLIF(E_SA5_4, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_4_5, '[^;]+', 1, 1)
                                        ELSE NULL
                                    END AS SA5_4,
                                    CASE
                                        WHEN (NULLIF(E_SA5_5, '') IS NOT NULL)
                                        THEN SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_5_5, '[^;]+', 1, 1), 1, REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_5_5, '[^;]+', 1, 1), ' [(]'))
                                        ELSE NULL
                                    END AS SA5_5,
                                    CASE
                                        WHEN (NULLIF(E_SA5_6_1, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_6_5, '[^;]+', 1, 1)
                                        ELSE NULL
                                    END AS SA5_6_1,
                                    CASE
                                        WHEN (NULLIF(E_SA5_6_2, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_6_5, '[^;]+', 1, 1)
                                        ELSE NULL
                                    END AS SA5_6_2,
                                    CASE
                                        WHEN (NULLIF(E_SA5_7, '') IS NOT NULL)
                                        THEN SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_7_5, '[^;]+', 1, 1), 1, REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_7_5, '[^;]+', 1, 1), ' [(]'))
                                        ELSE NULL
                                    END AS SA5_7
                                FROM(
                                    SELECT *,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_1_5, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_5, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_5, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_5, '[^\n]+', 1, 1), '[^;]+', 1, 1)
                                            ELSE NULL
                                        END AS E_SA5_1_1,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_1_5, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_5, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_5, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_5, '[^\n]+', 1, 1), '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_5, '[^\n]+', 1, 1), '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_5, '[^\n]+', 1, 1), '[^;]+', 1, 2)
                                            )
                                            ELSE NULL
                                        END AS E_SA5_1_2,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_1_5, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_5, '[^\n]+', 1, 1), ' [A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_5, '[^\n]+', 1, 1), 1, REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_5, '[^\n]+', 1, 1), '[A-Z]{1,2}[0-9]{1,3}'))
                                            ELSE NULL
                                        END AS E_SA5_1_3,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_2_5, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_5, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_5, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_2_5, '[^;]+', 1, 1)
                                            WHEN (NULLIF(SLIDE_KEYS_2_5, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_5, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_5, '[^;]+', 1, 2), '^[(][A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_2_5, '[^;]+', 1, 1)
                                            ELSE NULL
                                        END AS E_SA5_2_1,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_2_5, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_5, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_5, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_5, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(SLIDE_KEYS_2_5, '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(SLIDE_KEYS_2_5, '[^;]+', 1, 2)
                                            )
                                            WHEN (NULLIF(SLIDE_KEYS_2_5, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_5, '[^;]+', 1, 1), '^[A-Z][a-z][0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_5, '[^;]+', 1, 2), '^[A-Z][a-z][0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_5, '[^;]+', 1, 3), '^[A-Z][a-z][0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(SLIDE_KEYS_2_5, '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(SLIDE_KEYS_2_5, '[^;]+', 1, 2)
                                            )
                                            ELSE NULL
                                        END AS E_SA5_2_2,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_3_5, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_3_5, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_3_5, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_3_5, '[^\n]+', 1, 1), '[^;]+', 1, 1)
                                            WHEN (NULLIF(SLIDE_KEYS_3_5, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_3_5, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_3_5, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_3_5, '[^\n]+', 1, 1), '[^;]+', 1, 1)
                                            ELSE NULL
                                        END AS E_SA5_3,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_4_5, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_5, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_5, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_4_5, '[^;]+', 1, 2)
                                            ELSE NULL
                                        END AS E_SA5_4,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_5_5, '') IS NOT NULL)
                                            THEN SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_5_5, '[^;]+', 1, 1), REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_5_5, '[^;]+', 1, 1), '[(]'))
                                            ELSE NULL
                                        END AS E_SA5_5,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_6_5, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_6_5, '[^;]+', 1, 1), '^[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_6_5, '[^;]+', 1, 2), '^[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_6_5, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_6_5, '[^;]+', 1, 2)
                                            ELSE NULL
                                        END AS E_SA5_6_1,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_6_5, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_6_5, '[^;]+', 1, 1), '^[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_6_5, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_6_5, '[^;]+', 1, 3), '^[0-9]{1,3}') = 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_6_5, '[^;]+', 1, 3)
                                            ELSE NULL
                                        END AS E_SA5_6_2,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_7_5, '') IS NOT NULL)
                                            THEN SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_7_5, '[^;]+', 1, 1), REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_7_5, '[^;]+', 1, 1), '[(]'))
                                            ELSE NULL
                                        END AS E_SA5_7
                                    FROM(
                                        SELECT *,
                                            CASE
                                                WHEN (NULLIF(SLIDE_KEYS_A5, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_1, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_A5
                                                ELSE NULL
                                            END AS SLIDE_KEYS_1_5,
                                            CASE
                                                WHEN (NULLIF(SLIDE_KEYS_A5, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_2, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_A5
                                                ELSE NULL
                                            END AS SLIDE_KEYS_2_5,
                                            CASE
                                                WHEN (NULLIF(SLIDE_KEYS_A5, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_3, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_A5
                                                ELSE NULL
                                            END AS SLIDE_KEYS_3_5,
                                            CASE
                                                WHEN (NULLIF(SLIDE_KEYS_A5, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_4, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_A5
                                                ELSE NULL
                                            END AS SLIDE_KEYS_4_5,
                                            CASE
                                                WHEN (NULLIF(SLIDE_KEYS_A5, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_5, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_A5
                                                ELSE NULL
                                            END AS SLIDE_KEYS_5_5,
                                            CASE
                                                WHEN (NULLIF(SLIDE_KEYS_A5, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_6, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_A5
                                                ELSE NULL
                                            END AS SLIDE_KEYS_6_5,
                                            CASE
                                                WHEN (NULLIF(SLIDE_KEYS_A5, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_7, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_A5
                                                ELSE NULL
                                            END AS SLIDE_KEYS_7_5
                                        FROM(
                                            SELECT *,
                                                CASE
                                                    WHEN (NULLIF(RE_SLIDE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_1, '') IS NOT NULL)
                                                    THEN REGEXP_SUBSTR(RE_SLIDE_KEYS, '[^\n]+', 1, 5)
                                                    WHEN (NULLIF(RE_SLIDE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_2, '') IS NOT NULL)
                                                    THEN SUBSTR(RE_SLIDE_KEYS, INSTR(RE_SLIDE_KEYS, REGEXP_SUBSTR(RE_SLIDE_KEYS, '[^;]+', 2, 1)))
                                                    WHEN (NULLIF(RE_SLIDE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_3, '') IS NOT NULL)
                                                    THEN REGEXP_SUBSTR(RE_SLIDE_KEYS, '[^\n]+', 1, 5)
                                                    WHEN (NULLIF(RE_SLIDE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_4, '') IS NOT NULL)
                                                    THEN SUBSTR(RE_SLIDE_KEYS, INSTR(RE_SLIDE_KEYS, REGEXP_SUBSTR(RE_SLIDE_KEYS, '[^;]+', 2, 1)))
                                                    WHEN (NULLIF(RE_SLIDE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_5, '') IS NOT NULL)
                                                    THEN SUBSTR(RE_SLIDE_KEYS, INSTR(RE_SLIDE_KEYS, REGEXP_SUBSTR(RE_SLIDE_KEYS, '[^;]+', 2, 1)))
                                                    WHEN (NULLIF(RE_SLIDE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_6, '') IS NOT NULL)
                                                    THEN SUBSTR(RE_SLIDE_KEYS, INSTR(RE_SLIDE_KEYS, REGEXP_SUBSTR(RE_SLIDE_KEYS, '[^;]+', 2, 1)))
                                                    WHEN (NULLIF(RE_SLIDE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_7, '') IS NOT NULL)
                                                    THEN SUBSTR(RE_SLIDE_KEYS, INSTR(RE_SLIDE_KEYS, REGEXP_SUBSTR(RE_SLIDE_KEYS, '[^;]+', 2, 1)))
                                                    ELSE NULL
                                                END AS SLIDE_KEYS_A5
                                            FROM(
                                                SELECT *,
                                                    CASE
                                                        WHEN (NULLIF(SA4, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_1, '') IS NOT NULL)
                                                        THEN SLIDE_KEYS_1
                                                        WHEN (NULLIF(SA4, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_2, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            BINARY SLIDE_KEYS_A4, LENGTH(CONCAT(CONCAT(CONCAT(E_SA4, ';'), SA4), ';'))
                                                        )
                                                        WHEN (NULLIF(SA4, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_3, '') IS NOT NULL)
                                                        THEN SLIDE_KEYS_3
                                                        WHEN (NULLIF(SA4, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_4, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            BINARY SLIDE_KEYS_A4, LENGTH(CONCAT(CONCAT(CONCAT(SA4, ';'), E_SA4), ';'))
                                                        )
                                                        WHEN (NULLIF(SA4, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_5, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            BINARY SLIDE_KEYS_A4, LENGTH(CONCAT(CONCAT(SA4, E_SA4), ';'))
                                                        )
                                                        WHEN (NULLIF(SA4, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_6, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            BINARY SLIDE_KEYS_A4, LENGTH(CONCAT(CONCAT(CONCAT(SA4, ';'), E_SA4), ';'))
                                                        )
                                                        WHEN (NULLIF(SA4, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_7, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            BINARY SLIDE_KEYS_A4, LENGTH(CONCAT(CONCAT(SA4, E_SA4), ';'))
                                                        )
                                                        ELSE NULL
                                                    END AS RE_SLIDE_KEYS
                                                FROM test_type6_sa04
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