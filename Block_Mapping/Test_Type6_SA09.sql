SELECT
    원무접수ID,
    E_SA9,
    SA9,
    SLIDE_KEYS_A9,
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
            WHEN (NULLIF(E_SA9_1, '') IS NOT NULL)
            THEN E_SA9_1
            WHEN (NULLIF(E_SA9_2, '') IS NOT NULL)
            THEN E_SA9_2
            WHEN (NULLIF(E_SA9_3, '') IS NOT NULL)
            THEN E_SA9_3
            WHEN (NULLIF(E_SA9_4, '') IS NOT NULL)
            THEN E_SA9_4
            WHEN (NULLIF(E_SA9_5, '') IS NOT NULL)
            THEN E_SA9_5
            WHEN (NULLIF(E_SA9_6, '') IS NOT NULL)
            THEN E_SA9_6
            WHEN (NULLIF(E_SA9_7, '') IS NOT NULL)
            THEN E_SA9_7
            ELSE NULL
        END AS E_SA9,
        CASE
            WHEN (NULLIF(SA9_1, '') IS NOT NULL)
            THEN SA9_1
            WHEN (NULLIF(SA9_2, '') IS NOT NULL)
            THEN SA9_2
            WHEN (NULLIF(SA9_3, '') IS NOT NULL)
            THEN SA9_3
            WHEN (NULLIF(SA9_4, '') IS NOT NULL)
            THEN SA9_4
            WHEN (NULLIF(SA9_5, '') IS NOT NULL)
            THEN SA9_5
            WHEN (NULLIF(SA9_6, '') IS NOT NULL)
            THEN SA9_6
            WHEN (NULLIF(SA9_7, '') IS NOT NULL)
            THEN SA9_7
            ELSE NULL
        END AS SA9
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(SA9_1_1, '') IS NOT NULL)
                THEN SA9_1_1
                WHEN (NULLIF(SA9_1_2, '') IS NOT NULL)
                THEN SA9_1_2
                WHEN (NULLIF(SA9_1_3, '') IS NOT NULL)
                THEN SA9_1_3
                ELSE NULL
            END AS SA9_1,
            CASE
                WHEN (NULLIF(SA9_2_1, '') IS NOT NULL AND NULLIF(SA9_2_1_1, '') IS NULL AND NULLIF(SA9_2_1_2, '') IS NULL AND NULLIF(SA9_2_1_3, '') IS NULL AND NULLIF(SA9_2_1_4, '') IS NULL)
                THEN SA9_2_1
                WHEN (NULLIF(SA9_2_1, '') IS NOT NULL AND NULLIF(SA9_2_1_1, '') IS NOT NULL AND NULLIF(SA9_2_1_2, '') IS NULL AND NULLIF(SA9_2_1_3, '') IS NULL AND NULLIF(SA9_2_1_4, '') IS NULL)
                THEN SA9_2_1_1
                WHEN (NULLIF(SA9_2_1, '') IS NOT NULL AND NULLIF(SA9_2_1_1, '') IS NOT NULL AND NULLIF(SA9_2_1_2, '') IS NOT NULL AND NULLIF(SA9_2_1_3, '') IS NULL AND NULLIF(SA9_2_1_4, '') IS NULL)
                THEN SA9_2_1_2
                WHEN (NULLIF(SA9_2_1, '') IS NOT NULL AND NULLIF(SA9_2_1_1, '') IS NOT NULL AND NULLIF(SA9_2_1_2, '') IS NOT NULL AND NULLIF(SA9_2_1_3, '') IS NOT NULL AND NULLIF(SA9_2_1_4, '') IS NULL)
                THEN SA9_2_1_3
                WHEN (NULLIF(SA9_2_1, '') IS NOT NULL AND NULLIF(SA9_2_1_1, '') IS NOT NULL AND NULLIF(SA9_2_1_2, '') IS NOT NULL AND NULLIF(SA9_2_1_3, '') IS NOT NULL AND NULLIF(SA9_2_1_4, '') IS NOT NULL)
                THEN SA9_2_1_4
                WHEN (NULLIF(SA9_2_2, '') IS NOT NULL AND NULLIF(SA9_2_2_1, '') IS NULL AND NULLIF(SA9_2_2_2, '') IS NULL AND NULLIF(SA9_2_2_3, '') IS NULL AND NULLIF(SA9_2_2_4, '') IS NULL)
                THEN SA9_2_2
                WHEN (NULLIF(SA9_2_2, '') IS NOT NULL AND NULLIF(SA9_2_2_1, '') IS NOT NULL AND NULLIF(SA9_2_2_2, '') IS NULL AND NULLIF(SA9_2_2_3, '') IS NULL AND NULLIF(SA9_2_2_4, '') IS NULL)
                THEN SA9_2_2_1
                WHEN (NULLIF(SA9_2_2, '') IS NOT NULL AND NULLIF(SA9_2_2_1, '') IS NOT NULL AND NULLIF(SA9_2_2_2, '') IS NOT NULL AND NULLIF(SA9_2_2_3, '') IS NULL AND NULLIF(SA9_2_2_4, '') IS NULL)
                THEN SA9_2_2_2
                WHEN (NULLIF(SA9_2_2, '') IS NOT NULL AND NULLIF(SA9_2_2_1, '') IS NOT NULL AND NULLIF(SA9_2_2_2, '') IS NOT NULL AND NULLIF(SA9_2_2_3, '') IS NOT NULL AND NULLIF(SA9_2_2_4, '') IS NULL)
                THEN SA9_2_2_3
                WHEN (NULLIF(SA9_2_2, '') IS NOT NULL AND NULLIF(SA9_2_2_1, '') IS NOT NULL AND NULLIF(SA9_2_2_2, '') IS NOT NULL AND NULLIF(SA9_2_2_3, '') IS NOT NULL AND NULLIF(SA9_2_2_4, '') IS NOT NULL)
                THEN SA9_2_2_4
                ELSE NULL
            END AS SA9_2,
            CASE
                WHEN (NULLIF(SA9_6_1, '') IS NOT NULL)
                THEN SA9_6_1
                WHEN (NULLIF(SA9_6_2, '') IS NOT NULL AND NULLIF(SA9_6_2_1, '') IS NULL)
                THEN SA9_6_2
                WHEN (NULLIF(SA9_6_2, '') IS NOT NULL AND NULLIF(SA9_6_2_1, '') IS NOT NULL)
                THEN SA9_6_2_1
                ELSE NULL
            END AS SA9_6
        FROM(
            SELECT *,
                CASE
                    WHEN (NULLIF(E_SA9_1_1, '') IS NOT NULL)
                    THEN E_SA9_1_1
                    WHEN (NULLIF(E_SA9_1_2, '') IS NOT NULL)
                    THEN E_SA9_1_2
                    WHEN (NULLIF(E_SA9_1_3, '') IS NOT NULL)
                    THEN E_SA9_1_3
                    ELSE NULL
                END AS E_SA9_1,
                CASE
                    WHEN (NULLIF(E_SA9_2_1, '') IS NOT NULL)
                    THEN E_SA9_2_1
                    WHEN (NULLIF(E_SA9_2_2, '') IS NOT NULL)
                    THEN E_SA9_2_2
                    ELSE NULL
                END AS E_SA9_2,
                CASE
                    WHEN (NULLIF(E_SA9_6_1, '') IS NOT NULL)
                    THEN E_SA9_6_1
                    WHEN (NULLIF(E_SA9_6_2, '') IS NOT NULL)
                    THEN E_SA9_6_2
                    ELSE NULL
                END AS E_SA9_6
            FROM(
                SELECT *,
                    CASE
                        WHEN (NULLIF(SA9_2_1_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_9, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA9_2_1_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_2_9, '[^;]+', 1, 6)
                        )
                        ELSE NULL
                    END AS SA9_2_1_4,
                    CASE
                        WHEN (NULLIF(SA9_2_2_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_9, '[^;]+', 1, 7), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA9_2_2_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_2_9, '[^;]+', 1, 7)
                        )
                        ELSE NULL
                    END AS SA9_2_2_4
                FROM(
                    SELECT *,
                        CASE
                            WHEN (NULLIF(SA9_2_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_9, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA9_2_1_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_2_9, '[^;]+', 1, 5)
                            )
                            ELSE NULL
                        END AS SA9_2_1_3,
                        CASE
                            WHEN (NULLIF(SA9_2_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_9, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA9_2_2_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_2_9, '[^;]+', 1, 6)
                            )
                            ELSE NULL
                        END AS SA9_2_2_3
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (NULLIF(SA9_2_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_9, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA9_2_1_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_2_9, '[^;]+', 1, 4)
                                )
                                ELSE NULL
                            END AS SA9_2_1_2,
                            CASE
                                WHEN (NULLIF(SA9_2_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_9, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA9_2_2_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_2_9, '[^;]+', 1, 5)
                                )
                                ELSE NULL
                            END AS SA9_2_2_2
                        FROM(
                            SELECT *,
                                CASE
                                    WHEN (NULLIF(SA9_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_9, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA9_2_1, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_2_9, '[^;]+', 1, 3)
                                    )
                                    ELSE NULL
                                END AS SA9_2_1_1,
                                CASE
                                    WHEN (NULLIF(SA9_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_9, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA9_2_2, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_2_9, '[^;]+', 1, 4)
                                    )
                                    ELSE NULL
                                END AS SA9_2_2_1,
                                CASE
                                    WHEN (NULLIF(SA9_6_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_6_9, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA9_6_2, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_6_9, '[^;]+', 1, 2)
                                    )
                                    ELSE NULL
                                END AS SA9_6_2_1
                            FROM(
                                SELECT *,
                                    CASE
                                        WHEN (NULLIF(E_SA9_1_1, '') IS NOT NULL)
                                        THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_9, '[^\n]+', 1, 1), INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_9, '[^\n]+', 1, 1), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_9, '[^\n]+', 1, 1), '[^;]+', 1, 2)))
                                        ELSE NULL
                                    END AS SA9_1_1,
                                    CASE
                                        WHEN (NULLIF(E_SA9_1_2, '') IS NOT NULL)
                                        THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_9, '[^\n]+', 1, 1), INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_9, '[^\n]+', 1, 1), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_9, '[^\n]+', 1, 1), '[^;]+', 1, 3)))
                                        ELSE NULL
                                    END AS SA9_1_2,
                                    CASE
                                        WHEN (NULLIF(E_SA9_1_3, '') IS NOT NULL)
                                        THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_9, '[^\n]+', 1, 1), REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_9, '[^\n]+', 1, 1), ' [A-Z]{1,2}[0-9]{1,3}'))
                                        ELSE NULL
                                    END AS SA9_1_3,
                                    CASE
                                        WHEN (NULLIF(E_SA9_2_1, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_2_9, '[^;]+', 1, 2)
                                        ELSE NULL
                                    END AS SA9_2_1,
                                    CASE
                                        WHEN (NULLIF(E_SA9_2_2, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_2_9, '[^;]+', 1, 3)
                                        ELSE NULL
                                    END AS SA9_2_2,
                                    CASE
                                        WHEN (NULLIF(E_SA9_3, '') IS NOT NULL)
                                        THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_3_9, '[^\n]+', 1, 1), INSTR(REGEXP_SUBSTR(SLIDE_KEYS_3_9, '[^\n]+', 1, 1), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_3_9, '[^\n]+', 1, 1), '[^;]+', 1, 2)))
                                        ELSE NULL
                                    END AS SA9_3,
                                    CASE
                                        WHEN (NULLIF(E_SA9_4, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_4_9, '[^;]+', 1, 1)
                                        ELSE NULL
                                    END AS SA9_4,
                                    CASE
                                        WHEN (NULLIF(E_SA9_5, '') IS NOT NULL)
                                        THEN SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_5_9, '[^;]+', 1, 1), 1, REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_5_9, '[^;]+', 1, 1), ' [(]'))
                                        ELSE NULL
                                    END AS SA9_5,
                                    CASE
                                        WHEN (NULLIF(E_SA9_6_1, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_6_9, '[^;]+', 1, 1)
                                        ELSE NULL
                                    END AS SA9_6_1,
                                    CASE
                                        WHEN (NULLIF(E_SA9_6_2, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_6_9, '[^;]+', 1, 1)
                                        ELSE NULL
                                    END AS SA9_6_2,
                                    CASE
                                        WHEN (NULLIF(E_SA9_7, '') IS NOT NULL)
                                        THEN SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_7_9, '[^;]+', 1, 1), 1, REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_7_9, '[^;]+', 1, 1), ' [(]'))
                                        ELSE NULL
                                    END AS SA9_7
                                FROM(
                                    SELECT *,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_1_9, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_9, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_9, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_9, '[^\n]+', 1, 1), '[^;]+', 1, 1)
                                            ELSE NULL
                                        END AS E_SA9_1_1,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_1_9, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_9, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_9, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_9, '[^\n]+', 1, 1), '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_9, '[^\n]+', 1, 1), '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_9, '[^\n]+', 1, 1), '[^;]+', 1, 2)
                                            )
                                            ELSE NULL
                                        END AS E_SA9_1_2,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_1_9, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_9, '[^\n]+', 1, 1), ' [A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_9, '[^\n]+', 1, 1), 1, REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_9, '[^\n]+', 1, 1), '[A-Z]{1,2}[0-9]{1,3}'))
                                            ELSE NULL
                                        END AS E_SA9_1_3,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_2_9, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_9, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_9, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_2_9, '[^;]+', 1, 1)
                                            WHEN (NULLIF(SLIDE_KEYS_2_9, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_9, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_9, '[^;]+', 1, 2), '^[(][A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_2_9, '[^;]+', 1, 1)
                                            ELSE NULL
                                        END AS E_SA9_2_1,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_2_9, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_9, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_9, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_9, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(SLIDE_KEYS_2_9, '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(SLIDE_KEYS_2_9, '[^;]+', 1, 2)
                                            )
                                            WHEN (NULLIF(SLIDE_KEYS_2_9, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_9, '[^;]+', 1, 1), '^[A-Z][a-z][0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_9, '[^;]+', 1, 2), '^[A-Z][a-z][0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2_9, '[^;]+', 1, 3), '^[A-Z][a-z][0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(SLIDE_KEYS_2_9, '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(SLIDE_KEYS_2_9, '[^;]+', 1, 2)
                                            )
                                            ELSE NULL
                                        END AS E_SA9_2_2,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_3_9, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_3_9, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_3_9, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_3_9, '[^\n]+', 1, 1), '[^;]+', 1, 1)
                                            WHEN (NULLIF(SLIDE_KEYS_3_9, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_3_9, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_3_9, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_3_9, '[^\n]+', 1, 1), '[^;]+', 1, 1)
                                            ELSE NULL
                                        END AS E_SA9_3,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_4_9, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_9, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_9, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_4_9, '[^;]+', 1, 2)
                                            ELSE NULL
                                        END AS E_SA9_4,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_5_9, '') IS NOT NULL)
                                            THEN SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_5_9, '[^;]+', 1, 1), REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_5_9, '[^;]+', 1, 1), '[(]'))
                                            ELSE NULL
                                        END AS E_SA9_5,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_6_9, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_6_9, '[^;]+', 1, 1), '^[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_6_9, '[^;]+', 1, 2), '^[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_6_9, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_6_9, '[^;]+', 1, 2)
                                            ELSE NULL
                                        END AS E_SA9_6_1,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_6_9, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_6_9, '[^;]+', 1, 1), '^[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_6_9, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_6_9, '[^;]+', 1, 3), '^[0-9]{1,3}') = 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_6_9, '[^;]+', 1, 3)
                                            ELSE NULL
                                        END AS E_SA9_6_2,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_7_9, '') IS NOT NULL)
                                            THEN SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_7_9, '[^;]+', 1, 1), REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_7_9, '[^;]+', 1, 1), '[(]'))
                                            ELSE NULL
                                        END AS E_SA9_7
                                    FROM(
                                        SELECT *,
                                            CASE
                                                WHEN (NULLIF(SLIDE_KEYS_A9, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_1, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_A9
                                                ELSE NULL
                                            END AS SLIDE_KEYS_1_9,
                                            CASE
                                                WHEN (NULLIF(SLIDE_KEYS_A9, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_2, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_A9
                                                ELSE NULL
                                            END AS SLIDE_KEYS_2_9,
                                            CASE
                                                WHEN (NULLIF(SLIDE_KEYS_A9, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_3, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_A9
                                                ELSE NULL
                                            END AS SLIDE_KEYS_3_9,
                                            CASE
                                                WHEN (NULLIF(SLIDE_KEYS_A9, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_4, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_A9
                                                ELSE NULL
                                            END AS SLIDE_KEYS_4_9,
                                            CASE
                                                WHEN (NULLIF(SLIDE_KEYS_A9, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_5, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_A9
                                                ELSE NULL
                                            END AS SLIDE_KEYS_5_9,
                                            CASE
                                                WHEN (NULLIF(SLIDE_KEYS_A9, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_6, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_A9
                                                ELSE NULL
                                            END AS SLIDE_KEYS_6_9,
                                            CASE
                                                WHEN (NULLIF(SLIDE_KEYS_A9, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_7, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_A9
                                                ELSE NULL
                                            END AS SLIDE_KEYS_7_9
                                        FROM(
                                            SELECT *,
                                                CASE
                                                    WHEN (NULLIF(RE_SLIDE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_1, '') IS NOT NULL)
                                                    THEN REGEXP_SUBSTR(RE_SLIDE_KEYS, '[^\n]+', 1, 9)
                                                    WHEN (NULLIF(RE_SLIDE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_2, '') IS NOT NULL)
                                                    THEN SUBSTR(RE_SLIDE_KEYS, INSTR(RE_SLIDE_KEYS, REGEXP_SUBSTR(RE_SLIDE_KEYS, '[^;]+', 2, 1)))
                                                    WHEN (NULLIF(RE_SLIDE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_3, '') IS NOT NULL)
                                                    THEN REGEXP_SUBSTR(RE_SLIDE_KEYS, '[^\n]+', 1, 9)
                                                    WHEN (NULLIF(RE_SLIDE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_4, '') IS NOT NULL)
                                                    THEN SUBSTR(RE_SLIDE_KEYS, INSTR(RE_SLIDE_KEYS, REGEXP_SUBSTR(RE_SLIDE_KEYS, '[^;]+', 2, 1)))
                                                    WHEN (NULLIF(RE_SLIDE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_5, '') IS NOT NULL)
                                                    THEN SUBSTR(RE_SLIDE_KEYS, INSTR(RE_SLIDE_KEYS, REGEXP_SUBSTR(RE_SLIDE_KEYS, '[^;]+', 2, 1)))
                                                    WHEN (NULLIF(RE_SLIDE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_6, '') IS NOT NULL)
                                                    THEN SUBSTR(RE_SLIDE_KEYS, INSTR(RE_SLIDE_KEYS, REGEXP_SUBSTR(RE_SLIDE_KEYS, '[^;]+', 2, 1)))
                                                    WHEN (NULLIF(RE_SLIDE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_7, '') IS NOT NULL)
                                                    THEN SUBSTR(RE_SLIDE_KEYS, INSTR(RE_SLIDE_KEYS, REGEXP_SUBSTR(RE_SLIDE_KEYS, '[^;]+', 2, 1)))
                                                    ELSE NULL
                                                END AS SLIDE_KEYS_A9
                                            FROM(
                                                SELECT *,
                                                    CASE
                                                        WHEN (NULLIF(SA8, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_1, '') IS NOT NULL)
                                                        THEN SLIDE_KEYS_1
                                                        WHEN (NULLIF(SA8, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_2, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            BINARY SLIDE_KEYS_A8, LENGTH(CONCAT(CONCAT(CONCAT(E_SA8, ';'), SA8), ';'))
                                                        )
                                                        WHEN (NULLIF(SA8, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_3, '') IS NOT NULL)
                                                        THEN SLIDE_KEYS_3
                                                        WHEN (NULLIF(SA8, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_4, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            BINARY SLIDE_KEYS_A8, LENGTH(CONCAT(CONCAT(CONCAT(SA8, ';'), E_SA8), ';'))
                                                        )
                                                        WHEN (NULLIF(SA8, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_5, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            BINARY SLIDE_KEYS_A8, LENGTH(CONCAT(CONCAT(SA8, E_SA8), ';'))
                                                        )
                                                        WHEN (NULLIF(SA8, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_6, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            BINARY SLIDE_KEYS_A8, LENGTH(CONCAT(CONCAT(CONCAT(SA8, ';'), E_SA8), ';'))
                                                        )
                                                        WHEN (NULLIF(SA8, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_7, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            BINARY SLIDE_KEYS_A8, LENGTH(CONCAT(CONCAT(SA8, E_SA8), ';'))
                                                        )
                                                        ELSE NULL
                                                    END AS RE_SLIDE_KEYS
                                                FROM test_type6_sa08
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