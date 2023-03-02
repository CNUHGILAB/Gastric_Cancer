SELECT
    원무접수ID,
    E_SA1,
    SA1,
    SLIDE_KEYS_A1,
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
            WHEN (NULLIF(E_SA1_1, '') IS NOT NULL)
            THEN E_SA1_1
            WHEN (NULLIF(E_SA1_2, '') IS NOT NULL)
            THEN E_SA1_2
            WHEN (NULLIF(E_SA1_3, '') IS NOT NULL)
            THEN E_SA1_3
            WHEN (NULLIF(E_SA1_4, '') IS NOT NULL)
            THEN E_SA1_4
            WHEN (NULLIF(E_SA1_5, '') IS NOT NULL)
            THEN E_SA1_5
            WHEN (NULLIF(E_SA1_6, '') IS NOT NULL)
            THEN E_SA1_6
            WHEN (NULLIF(E_SA1_7, '') IS NOT NULL)
            THEN E_SA1_7
            ELSE NULL
        END AS E_SA1,
        CASE
            WHEN (NULLIF(SA1_1, '') IS NOT NULL)
            THEN SA1_1
            WHEN (NULLIF(SA1_2, '') IS NOT NULL)
            THEN SA1_2
            WHEN (NULLIF(SA1_3, '') IS NOT NULL)
            THEN SA1_3
            WHEN (NULLIF(SA1_4, '') IS NOT NULL)
            THEN SA1_4
            WHEN (NULLIF(SA1_5, '') IS NOT NULL)
            THEN SA1_5
            WHEN (NULLIF(SA1_6, '') IS NOT NULL)
            THEN SA1_6
            WHEN (NULLIF(SA1_7, '') IS NOT NULL)
            THEN SA1_7
            ELSE NULL
        END AS SA1
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(SA1_1_1, '') IS NOT NULL)
                THEN SA1_1_1
                WHEN (NULLIF(SA1_1_2, '') IS NOT NULL)
                THEN SA1_1_2
                ELSE NULL
            END AS SA1_1,
            CASE
                WHEN (NULLIF(SA1_2_1, '') IS NOT NULL AND NULLIF(SA1_2_1_1, '') IS NULL AND NULLIF(SA1_2_1_2, '') IS NULL AND NULLIF(SA1_2_1_3, '') IS NULL AND NULLIF(SA1_2_1_4, '') IS NULL)
                THEN SA1_2_1
                WHEN (NULLIF(SA1_2_1, '') IS NOT NULL AND NULLIF(SA1_2_1_1, '') IS NOT NULL AND NULLIF(SA1_2_1_2, '') IS NULL AND NULLIF(SA1_2_1_3, '') IS NULL AND NULLIF(SA1_2_1_4, '') IS NULL)
                THEN SA1_2_1_1
                WHEN (NULLIF(SA1_2_1, '') IS NOT NULL AND NULLIF(SA1_2_1_1, '') IS NOT NULL AND NULLIF(SA1_2_1_2, '') IS NOT NULL AND NULLIF(SA1_2_1_3, '') IS NULL AND NULLIF(SA1_2_1_4, '') IS NULL)
                THEN SA1_2_1_2
                WHEN (NULLIF(SA1_2_1, '') IS NOT NULL AND NULLIF(SA1_2_1_1, '') IS NOT NULL AND NULLIF(SA1_2_1_2, '') IS NOT NULL AND NULLIF(SA1_2_1_3, '') IS NOT NULL AND NULLIF(SA1_2_1_4, '') IS NULL)
                THEN SA1_2_1_3
                WHEN (NULLIF(SA1_2_1, '') IS NOT NULL AND NULLIF(SA1_2_1_1, '') IS NOT NULL AND NULLIF(SA1_2_1_2, '') IS NOT NULL AND NULLIF(SA1_2_1_3, '') IS NOT NULL AND NULLIF(SA1_2_1_4, '') IS NOT NULL)
                THEN SA1_2_1_4
                WHEN (NULLIF(SA1_2_2, '') IS NOT NULL AND NULLIF(SA1_2_2_1, '') IS NULL AND NULLIF(SA1_2_2_2, '') IS NULL AND NULLIF(SA1_2_2_3, '') IS NULL AND NULLIF(SA1_2_2_4, '') IS NULL)
                THEN SA1_2_2
                WHEN (NULLIF(SA1_2_2, '') IS NOT NULL AND NULLIF(SA1_2_2_1, '') IS NOT NULL AND NULLIF(SA1_2_2_2, '') IS NULL AND NULLIF(SA1_2_2_3, '') IS NULL AND NULLIF(SA1_2_2_4, '') IS NULL)
                THEN SA1_2_2_1
                WHEN (NULLIF(SA1_2_2, '') IS NOT NULL AND NULLIF(SA1_2_2_1, '') IS NOT NULL AND NULLIF(SA1_2_2_2, '') IS NOT NULL AND NULLIF(SA1_2_2_3, '') IS NULL AND NULLIF(SA1_2_2_4, '') IS NULL)
                THEN SA1_2_2_2
                WHEN (NULLIF(SA1_2_2, '') IS NOT NULL AND NULLIF(SA1_2_2_1, '') IS NOT NULL AND NULLIF(SA1_2_2_2, '') IS NOT NULL AND NULLIF(SA1_2_2_3, '') IS NOT NULL AND NULLIF(SA1_2_2_4, '') IS NULL)
                THEN SA1_2_2_3
                WHEN (NULLIF(SA1_2_2, '') IS NOT NULL AND NULLIF(SA1_2_2_1, '') IS NOT NULL AND NULLIF(SA1_2_2_2, '') IS NOT NULL AND NULLIF(SA1_2_2_3, '') IS NOT NULL AND NULLIF(SA1_2_2_4, '') IS NOT NULL)
                THEN SA1_2_2_4
                ELSE NULL
            END AS SA1_2,
            CASE
                WHEN (NULLIF(SA1_6_1, '') IS NOT NULL)
                THEN SA1_6_1
                WHEN (NULLIF(SA1_6_2, '') IS NOT NULL AND NULLIF(SA1_6_2_1, '') IS NULL)
                THEN SA1_6_2
                WHEN (NULLIF(SA1_6_2, '') IS NOT NULL AND NULLIF(SA1_6_2_1, '') IS NOT NULL)
                THEN SA1_6_2_1
                ELSE NULL
            END AS SA1_6
        FROM(
            SELECT *,
                CASE
                    WHEN (NULLIF(E_SA1_1_1, '') IS NOT NULL)
                    THEN E_SA1_1_1
                    WHEN (NULLIF(E_SA1_1_2, '') IS NOT NULL)
                    THEN E_SA1_1_2
                    ELSE NULL
                END AS E_SA1_1,
                CASE
                    WHEN (NULLIF(E_SA1_2_1, '') IS NOT NULL)
                    THEN E_SA1_2_1
                    WHEN (NULLIF(E_SA1_2_2, '') IS NOT NULL)
                    THEN E_SA1_2_2
                    ELSE NULL
                END AS E_SA1_2,
                CASE
                    WHEN (NULLIF(E_SA1_6_1, '') IS NOT NULL)
                    THEN E_SA1_6_1
                    WHEN (NULLIF(E_SA1_6_2, '') IS NOT NULL)
                    THEN E_SA1_6_2
                    ELSE NULL
                END AS E_SA1_6
            FROM(
                SELECT *,
                    CASE
                        WHEN (NULLIF(SA1_2_1_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA1_2_1_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_2, '[^;]+', 1, 6)
                        )
                        ELSE NULL
                    END AS SA1_2_1_4,
                    CASE
                        WHEN (NULLIF(SA1_2_2_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2, '[^;]+', 1, 7), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA1_2_2_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_2, '[^;]+', 1, 7)
                        )
                        ELSE NULL
                    END AS SA1_2_2_4
                FROM(
                    SELECT *,
                        CASE
                            WHEN (NULLIF(SA1_2_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA1_2_1_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_2, '[^;]+', 1, 5)
                            )
                            ELSE NULL
                        END AS SA1_2_1_3,
                        CASE
                            WHEN (NULLIF(SA1_2_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA1_2_2_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_2, '[^;]+', 1, 6)
                            )
                            ELSE NULL
                        END AS SA1_2_2_3
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (NULLIF(SA1_2_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA1_2_1_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_2, '[^;]+', 1, 4)
                                )
                                ELSE NULL
                            END AS SA1_2_1_2,
                            CASE
                                WHEN (NULLIF(SA1_2_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA1_2_2_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_2, '[^;]+', 1, 5)
                                )
                                ELSE NULL
                            END AS SA1_2_2_2
                        FROM(
                            SELECT *,
                                CASE
                                    WHEN (NULLIF(SA1_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA1_2_1, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_2, '[^;]+', 1, 3)
                                    )
                                    ELSE NULL
                                END AS SA1_2_1_1,
                                CASE
                                    WHEN (NULLIF(SA1_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA1_2_2, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_2, '[^;]+', 1, 4)
                                    )
                                    ELSE NULL
                                END AS SA1_2_2_1,
                                CASE
                                    WHEN (NULLIF(SA1_6_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_6, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA1_6_2, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_6, '[^;]+', 1, 2)
                                    )
                                    ELSE NULL
                                END AS SA1_6_2_1
                            FROM(
                                SELECT *,
                                    CASE
                                        WHEN (NULLIF(E_SA1_1_1, '') IS NOT NULL)
                                        THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 1), INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 1), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 1), '[^;]+', 1, 2)))
                                        ELSE NULL
                                    END AS SA1_1_1,
                                    CASE
                                        WHEN (NULLIF(E_SA1_1_2, '') IS NOT NULL)
                                        THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 1), INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 1), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 1), '[^;]+', 1, 3)))
                                        ELSE NULL
                                    END AS SA1_1_2,
                                    CASE
                                        WHEN (NULLIF(E_SA1_2_1, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_2, '[^;]+', 1, 2)
                                        ELSE NULL
                                    END AS SA1_2_1,
                                    CASE
                                        WHEN (NULLIF(E_SA1_2_2, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_2, '[^;]+', 1, 3)
                                        ELSE NULL
                                    END AS SA1_2_2,
                                    CASE
                                        WHEN (NULLIF(E_SA1_3, '') IS NOT NULL)
                                        THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_3, '[^\n]+', 1, 1), INSTR(REGEXP_SUBSTR(SLIDE_KEYS_3, '[^\n]+', 1, 1), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_3, '[^\n]+', 1, 1), '[^;]+', 1, 2)))
                                        ELSE NULL
                                    END AS SA1_3,
                                    CASE
                                        WHEN (NULLIF(E_SA1_4, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_4, '[^;]+', 1, 1)
                                        ELSE NULL
                                    END AS SA1_4,
                                    CASE
                                        WHEN (NULLIF(E_SA1_5, '') IS NOT NULL)
                                        THEN SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_5, '[^;]+', 1, 1), 1, REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_5, '[^;]+', 1, 1), ' [(]'))
                                        ELSE NULL
                                    END AS SA1_5,
                                    CASE
                                        WHEN (NULLIF(E_SA1_6_1, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_6, '[^;]+', 1, 1)
                                        ELSE NULL
                                    END AS SA1_6_1,
                                    CASE
                                        WHEN (NULLIF(E_SA1_6_2, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_6, '[^;]+', 1, 1)
                                        ELSE NULL
                                    END AS SA1_6_2,
                                    CASE
                                        WHEN (NULLIF(E_SA1_7, '') IS NOT NULL)
                                        THEN SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_7, '[^;]+', 1, 1), 1, REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_7, '[^;]+', 1, 1), ' [(]'))
                                        ELSE NULL
                                    END AS SA1_7
                                FROM(
                                    SELECT *,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 1), '[^;]+', 1, 1)
                                            ELSE NULL
                                        END AS E_SA1_1_1,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1, '[^\n]+', 1, 1), '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 1), '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 1), '[^;]+', 1, 2)
                                            )
                                            ELSE NULL
                                        END AS E_SA1_1_2,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_2, '[^;]+', 1, 1)
                                            ELSE NULL
                                        END AS E_SA1_2_1,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(SLIDE_KEYS_2, '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(SLIDE_KEYS_2, '[^;]+', 1, 2)
                                            )
                                            ELSE NULL
                                        END AS E_SA1_2_2,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_3, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_3, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_3, '[^\n]+', 1, 1), '[^;]+', 1, 1)
                                            WHEN (NULLIF(SLIDE_KEYS_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_3, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_3, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_3, '[^\n]+', 1, 1), '[^;]+', 1, 1)
                                            ELSE NULL
                                        END AS E_SA1_3,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_4, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_4, '[^;]+', 1, 2)
                                            ELSE NULL
                                        END AS E_SA1_4,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_5, '') IS NOT NULL)
                                            THEN SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_5, '[^;]+', 1, 1), REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_5, '[^;]+', 1, 1), '[(]'))
                                            ELSE NULL
                                        END AS E_SA1_5,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_6, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_6, '[^;]+', 1, 1), '^[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_6, '[^;]+', 1, 2), '^[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_6, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_6, '[^;]+', 1, 2)
                                            ELSE NULL
                                        END AS E_SA1_6_1,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_6, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_6, '[^;]+', 1, 1), '^[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_6, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_6, '[^;]+', 1, 3), '^[0-9]{1,3}') = 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_6, '[^;]+', 1, 3)
                                            ELSE NULL
                                        END AS E_SA1_6_2,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_7, '') IS NOT NULL)
                                            THEN SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_7, '[^;]+', 1, 1), REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_7, '[^;]+', 1, 1), '[(]'))
                                            ELSE NULL
                                        END AS E_SA1_7
                                    FROM(
                                        SELECT *,
                                            CASE
                                                WHEN (NULLIF(SLIDE_KEYS_1, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_1
                                                WHEN (NULLIF(SLIDE_KEYS_2, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_2
                                                WHEN (NULLIF(SLIDE_KEYS_3, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_3
                                                WHEN (NULLIF(SLIDE_KEYS_4, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_4
                                                WHEN (NULLIF(SLIDE_KEYS_5, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_5
                                                WHEN (NULLIF(SLIDE_KEYS_6, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_6
                                                WHEN (NULLIF(SLIDE_KEYS_7, '') IS NOT NULL)
                                                THEN SLIDE_KEYS_7
                                                ELSE NULL
                                            END AS SLIDE_KEYS_A1
                                        FROM test_type6_a2_4
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