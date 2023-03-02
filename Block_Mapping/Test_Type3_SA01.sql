SELECT
    원무접수ID,
    E_SA1,
    SA1,
    SLIDE_KEYS_A1,
    SLIDE_KEYS_1,
    SLIDE_KEYS_2,
    SLIDE_KEYS_3,
    SLIDE_KEYS_4,
    SLIDE_KEYS_5
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
                WHEN (NULLIF(SA1_2_1, '') IS NOT NULL)
                THEN SA1_2_1
                WHEN (NULLIF(SA1_2_2, '') IS NOT NULL)
                THEN SA1_2_2
                ELSE NULL
            END AS SA1_2,
            CASE
                WHEN (NULLIF(SA1_3_1, '') IS NOT NULL AND NULLIF(SA1_3_1_1, '') IS NULL AND NULLIF(SA1_3_1_2, '') IS NULL AND NULLIF(SA1_3_1_3, '') IS NULL AND NULLIF(SA1_3_1_4, '') IS NULL)
                THEN SA1_3_1
                WHEN (NULLIF(SA1_3_1, '') IS NOT NULL AND NULLIF(SA1_3_1_1, '') IS NOT NULL AND NULLIF(SA1_3_1_2, '') IS NULL AND NULLIF(SA1_3_1_3, '') IS NULL AND NULLIF(SA1_3_1_4, '') IS NULL)
                THEN SA1_3_1_1
                WHEN (NULLIF(SA1_3_1, '') IS NOT NULL AND NULLIF(SA1_3_1_1, '') IS NOT NULL AND NULLIF(SA1_3_1_2, '') IS NOT NULL AND NULLIF(SA1_3_1_3, '') IS NULL AND NULLIF(SA1_3_1_4, '') IS NULL)
                THEN SA1_3_1_2
                WHEN (NULLIF(SA1_3_1, '') IS NOT NULL AND NULLIF(SA1_3_1_1, '') IS NOT NULL AND NULLIF(SA1_3_1_2, '') IS NOT NULL AND NULLIF(SA1_3_1_3, '') IS NOT NULL AND NULLIF(SA1_3_1_4, '') IS NULL)
                THEN SA1_3_1_3
                WHEN (NULLIF(SA1_3_1, '') IS NOT NULL AND NULLIF(SA1_3_1_1, '') IS NOT NULL AND NULLIF(SA1_3_1_2, '') IS NOT NULL AND NULLIF(SA1_3_1_3, '') IS NOT NULL AND NULLIF(SA1_3_1_4, '') IS NOT NULL)
                THEN SA1_3_1_4
                WHEN (NULLIF(SA1_3_2, '') IS NOT NULL AND NULLIF(SA1_3_2_1, '') IS NULL AND NULLIF(SA1_3_2_2, '') IS NULL AND NULLIF(SA1_3_2_3, '') IS NULL AND NULLIF(SA1_3_2_4, '') IS NULL)
                THEN SA1_3_2
                WHEN (NULLIF(SA1_3_2, '') IS NOT NULL AND NULLIF(SA1_3_2_1, '') IS NOT NULL AND NULLIF(SA1_3_2_2, '') IS NULL AND NULLIF(SA1_3_2_3, '') IS NULL AND NULLIF(SA1_3_2_4, '') IS NULL)
                THEN SA1_3_2_1
                WHEN (NULLIF(SA1_3_2, '') IS NOT NULL AND NULLIF(SA1_3_2_1, '') IS NOT NULL AND NULLIF(SA1_3_2_2, '') IS NOT NULL AND NULLIF(SA1_3_2_3, '') IS NULL AND NULLIF(SA1_3_2_4, '') IS NULL)
                THEN SA1_3_2_2
                WHEN (NULLIF(SA1_3_2, '') IS NOT NULL AND NULLIF(SA1_3_2_1, '') IS NOT NULL AND NULLIF(SA1_3_2_2, '') IS NOT NULL AND NULLIF(SA1_3_2_3, '') IS NOT NULL AND NULLIF(SA1_3_2_4, '') IS NULL)
                THEN SA1_3_2_3
                WHEN (NULLIF(SA1_3_2, '') IS NOT NULL AND NULLIF(SA1_3_2_1, '') IS NOT NULL AND NULLIF(SA1_3_2_2, '') IS NOT NULL AND NULLIF(SA1_3_2_3, '') IS NOT NULL AND NULLIF(SA1_3_2_4, '') IS NOT NULL)
                THEN SA1_3_2_4
                ELSE NULL
            END AS SA1_3,
            CASE
                WHEN (NULLIF(SA1_4_1, '') IS NOT NULL AND NULLIF(SA1_4_1_1, '') IS NULL AND NULLIF(SA1_4_1_2, '') IS NULL AND NULLIF(SA1_4_1_3, '') IS NULL AND NULLIF(SA1_4_1_4, '') IS NULL)
                THEN SA1_4_1
                WHEN (NULLIF(SA1_4_1, '') IS NOT NULL AND NULLIF(SA1_4_1_1, '') IS NOT NULL AND NULLIF(SA1_4_1_2, '') IS NULL AND NULLIF(SA1_4_1_3, '') IS NULL AND NULLIF(SA1_4_1_4, '') IS NULL)
                THEN SA1_4_1_1
                WHEN (NULLIF(SA1_4_1, '') IS NOT NULL AND NULLIF(SA1_4_1_1, '') IS NOT NULL AND NULLIF(SA1_4_1_2, '') IS NOT NULL AND NULLIF(SA1_4_1_3, '') IS NULL AND NULLIF(SA1_4_1_4, '') IS NULL)
                THEN SA1_4_1_2
                WHEN (NULLIF(SA1_4_1, '') IS NOT NULL AND NULLIF(SA1_4_1_1, '') IS NOT NULL AND NULLIF(SA1_4_1_2, '') IS NOT NULL AND NULLIF(SA1_4_1_3, '') IS NOT NULL AND NULLIF(SA1_4_1_4, '') IS NULL)
                THEN SA1_4_1_3
                WHEN (NULLIF(SA1_4_1, '') IS NOT NULL AND NULLIF(SA1_4_1_1, '') IS NOT NULL AND NULLIF(SA1_4_1_2, '') IS NOT NULL AND NULLIF(SA1_4_1_3, '') IS NOT NULL AND NULLIF(SA1_4_1_4, '') IS NOT NULL)
                THEN SA1_4_1_4
                WHEN (NULLIF(SA1_4_2, '') IS NOT NULL AND NULLIF(SA1_4_2_1, '') IS NULL AND NULLIF(SA1_4_2_2, '') IS NULL AND NULLIF(SA1_4_2_3, '') IS NULL AND NULLIF(SA1_4_2_4, '') IS NULL)
                THEN SA1_4_2
                WHEN (NULLIF(SA1_4_2, '') IS NOT NULL AND NULLIF(SA1_4_2_1, '') IS NOT NULL AND NULLIF(SA1_4_2_2, '') IS NULL AND NULLIF(SA1_4_2_3, '') IS NULL AND NULLIF(SA1_4_2_4, '') IS NULL)
                THEN SA1_4_2_1
                WHEN (NULLIF(SA1_4_2, '') IS NOT NULL AND NULLIF(SA1_4_2_1, '') IS NOT NULL AND NULLIF(SA1_4_2_2, '') IS NOT NULL AND NULLIF(SA1_4_2_3, '') IS NULL AND NULLIF(SA1_4_2_4, '') IS NULL)
                THEN SA1_4_2_2
                WHEN (NULLIF(SA1_4_2, '') IS NOT NULL AND NULLIF(SA1_4_2_1, '') IS NOT NULL AND NULLIF(SA1_4_2_2, '') IS NOT NULL AND NULLIF(SA1_4_2_3, '') IS NOT NULL AND NULLIF(SA1_4_2_4, '') IS NULL)
                THEN SA1_4_2_3
                WHEN (NULLIF(SA1_4_2, '') IS NOT NULL AND NULLIF(SA1_4_2_1, '') IS NOT NULL AND NULLIF(SA1_4_2_2, '') IS NOT NULL AND NULLIF(SA1_4_2_3, '') IS NOT NULL AND NULLIF(SA1_4_2_4, '') IS NOT NULL)
                THEN SA1_4_2_4
                ELSE NULL
            END AS SA1_4
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
                    WHEN (NULLIF(E_SA1_3_1, '') IS NOT NULL)
                    THEN E_SA1_3_1
                    WHEN (NULLIF(E_SA1_3_2, '') IS NOT NULL)
                    THEN E_SA1_3_2
                    ELSE NULL
                END AS E_SA1_3,
                CASE
                    WHEN (NULLIF(E_SA1_4_1, '') IS NOT NULL)
                    THEN E_SA1_4_1
                    WHEN (NULLIF(E_SA1_4_2, '') IS NOT NULL)
                    THEN E_SA1_4_2
                    ELSE NULL
                END AS E_SA1_4
            FROM(
                SELECT *,
                    CASE
                        WHEN (NULLIF(SA1_3_1_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_3, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA1_3_1_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_3, '[^;]+', 1, 6)
                        )
                        ELSE NULL
                    END AS SA1_3_1_4,
                    CASE
                        WHEN (NULLIF(SA1_3_2_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_3, '[^;]+', 1, 7), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA1_3_2_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_3, '[^;]+', 1, 7)
                        )
                        ELSE NULL
                    END AS SA1_3_2_4,
                    CASE
                        WHEN (NULLIF(SA1_4_1_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_4, '[^;]+', 1, 6), '^[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA1_4_1_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_4, '[^;]+', 1, 6)
                        )
                        ELSE NULL
                    END AS SA1_4_1_4,
                    CASE
                        WHEN (NULLIF(SA1_4_2_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_4, '[^;]+', 1, 7), '^[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA1_4_2_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_4, '[^;]+', 1, 7)
                        )
                        ELSE NULL
                    END AS SA1_4_2_4
                FROM(
                    SELECT *,
                        CASE
                            WHEN (NULLIF(SA1_3_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_3, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA1_3_1_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_3, '[^;]+', 1, 5)
                            )
                            ELSE NULL
                        END AS SA1_3_1_3,
                        CASE
                            WHEN (NULLIF(SA1_3_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_3, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA1_3_2_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_3, '[^;]+', 1, 6)
                            )
                            ELSE NULL
                        END AS SA1_3_2_3,
                        CASE
                            WHEN (NULLIF(SA1_4_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4, '[^;]+', 1, 5), '^[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA1_4_1_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_4, '[^;]+', 1, 5)
                            )
                            ELSE NULL
                        END AS SA1_4_1_3,
                        CASE
                            WHEN (NULLIF(SA1_4_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4, '[^;]+', 1, 6), '^[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA1_4_2_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_4, '[^;]+', 1, 6)
                            )
                            ELSE NULL
                        END AS SA1_4_2_3
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (NULLIF(SA1_3_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_3, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA1_3_1_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_3, '[^;]+', 1, 4)
                                )
                                ELSE NULL
                            END AS SA1_3_1_2,
                            CASE
                                WHEN (NULLIF(SA1_3_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_3, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA1_3_2_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_3, '[^;]+', 1, 5)
                                )
                                ELSE NULL
                            END AS SA1_3_2_2,
                            CASE
                                WHEN (NULLIF(SA1_4_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_4, '[^;]+', 1, 4), '^[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA1_4_1_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_4, '[^;]+', 1, 4)
                                )
                                ELSE NULL
                            END AS SA1_4_1_2,
                            CASE
                                WHEN (NULLIF(SA1_4_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_4, '[^;]+', 1, 5), '^[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA1_4_2_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_4, '[^;]+', 1, 5)
                                )
                                ELSE NULL
                            END AS SA1_4_2_2
                        FROM(
                            SELECT *,
                                CASE
                                    WHEN (NULLIF(SA1_3_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_3, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA1_3_1, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_3, '[^;]+', 1, 3)
                                    )
                                    ELSE NULL
                                END AS SA1_3_1_1,
                                CASE
                                    WHEN (NULLIF(SA1_3_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_3, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA1_3_2, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_3, '[^;]+', 1, 4)
                                    )
                                    ELSE NULL
                                END AS SA1_3_2_1,
                                CASE
                                    WHEN (NULLIF(SA1_4_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_4, '[^;]+', 1, 3), '^[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA1_4_1, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_4, '[^;]+', 1, 3)
                                    )
                                    ELSE NULL
                                END AS SA1_4_1_1,
                                CASE
                                    WHEN (NULLIF(SA1_4_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_4, '[^;]+', 1, 4), '^[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA1_4_2, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_4, '[^;]+', 1, 4)
                                    )
                                    ELSE NULL
                                END AS SA1_4_2_1
                            FROM(
                                SELECT *,
                                    CASE
                                        WHEN (NULLIF(E_SA1_1_1, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 1), '[^;]+', 1, 1)
                                        ELSE NULL
                                    END AS SA1_1_1,
                                    CASE
                                        WHEN (NULLIF(E_SA1_1_2, '') IS NOT NULL)
                                        THEN CONCAT(
                                            CONCAT(
                                                REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 1), '[^;]+', 1, 1), ';'
                                            ), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 1), '[^;]+', 1, 2)
                                        )
                                        ELSE NULL
                                    END AS SA1_1_2,
                                    CASE
                                        WHEN (NULLIF(E_SA1_2_1, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_2, '[^\n]+', 1, 1), '[^;]+', 1, 1)
                                        ELSE NULL
                                    END AS SA1_2_1,
                                    CASE
                                        WHEN (NULLIF(E_SA1_2_2, '') IS NOT NULL)
                                        THEN CONCAT(
                                            CONCAT(
                                                REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_2, '[^\n]+', 1, 1), '[^;]+', 1, 1), ';'
                                            ), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_2, '[^\n]+', 1, 1), '[^;]+', 1, 2)
                                        )
                                        ELSE NULL
                                    END AS SA1_2_2,
                                    CASE
                                        WHEN (NULLIF(E_SA1_3_1, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_3, '[^;]+', 1, 2)
                                        ELSE NULL
                                    END AS SA1_3_1,
                                    CASE
                                        WHEN (NULLIF(E_SA1_3_2, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_3, '[^;]+', 1, 3)
                                        ELSE NULL
                                    END AS SA1_3_2,
                                    CASE
                                        WHEN (NULLIF(E_SA1_4_1, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_4, '[^;]+', 1, 2)
                                        ELSE NULL
                                    END AS SA1_4_1,
                                    CASE
                                        WHEN (NULLIF(E_SA1_4_2, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_4, '[^;]+', 1, 3)
                                        ELSE NULL
                                    END AS SA1_4_2,
                                    CASE
                                        WHEN (NULLIF(E_SA1_5, '') IS NOT NULL)
                                        THEN SUBSTR(SLIDE_KEYS_5, INSTR(SLIDE_KEYS_5, '('))
                                        ELSE NULL
                                    END AS SA1_5
                                FROM(
                                    SELECT *,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_1, '') IS NOT NULL AND NULLIF(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 1), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0)
                                            THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 1), INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 1), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 1), '[^;]+', 1, 2)))
                                            WHEN (NULLIF(SLIDE_KEYS_1, '') IS NOT NULL AND NULLIF(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 1), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^ [A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0)
                                            THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 1), INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 1), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 1), '[^;]+', 1, 2)))
                                            ELSE NULL
                                        END AS E_SA1_1_1,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_1, '') IS NOT NULL AND NULLIF(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 1), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 1), INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 1), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 1), '[^;]+', 1, 3)))
                                            WHEN (NULLIF(SLIDE_KEYS_1, '') IS NOT NULL AND NULLIF(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 1), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^ [A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 1), INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 1), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_1, '[^\n]+', 1, 1), '[^;]+', 1, 3)))
                                            ELSE NULL
                                        END AS E_SA1_1_2,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_2, '') IS NOT NULL AND NULLIF(REGEXP_SUBSTR(SLIDE_KEYS_2, '[^\n]+', 1, 1), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[0-9]{1,3}') = 0)
                                            THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_2, '[^\n]+', 1, 1), INSTR(REGEXP_SUBSTR(SLIDE_KEYS_2, '[^\n]+', 1, 1), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_2, '[^\n]+', 1, 1), '[^;]+', 1, 2)))
                                            WHEN (NULLIF(SLIDE_KEYS_2, '') IS NOT NULL AND NULLIF(REGEXP_SUBSTR(SLIDE_KEYS_2, '[^\n]+', 1, 1), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^ [0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[0-9]{1,3}') = 0)
                                            THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_2, '[^\n]+', 1, 1), INSTR(REGEXP_SUBSTR(SLIDE_KEYS_2, '[^\n]+', 1, 1), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_2, '[^\n]+', 1, 1), '[^;]+', 1, 2)))
                                            ELSE NULL
                                        END AS E_SA1_2_1,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_2, '') IS NOT NULL AND NULLIF(REGEXP_SUBSTR(SLIDE_KEYS_2, '[^\n]+', 1, 1), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[0-9]{1,3}') != 0)
                                            THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_2, '[^\n]+', 1, 1), INSTR(REGEXP_SUBSTR(SLIDE_KEYS_2, '[^\n]+', 1, 1), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_2, '[^\n]+', 1, 1), '[^;]+', 1, 3)))
                                            WHEN (NULLIF(SLIDE_KEYS_2, '') IS NOT NULL AND NULLIF(REGEXP_SUBSTR(SLIDE_KEYS_2, '[^\n]+', 1, 1), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2, '[^\n]+', 1, 1), '[^;]+', 1, 1), '^ [0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_2, '[^\n]+', 1, 1), '[^;]+', 1, 2), '^[0-9]{1,3}') != 0)
                                            THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_2, '[^\n]+', 1, 1), INSTR(REGEXP_SUBSTR(SLIDE_KEYS_2, '[^\n]+', 1, 1), REGEXP_SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_2, '[^\n]+', 1, 1), '[^;]+', 1, 3)))
                                            ELSE NULL
                                        END AS E_SA1_2_2,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_3, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_3, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_3, '[^;]+', 1, 1)
                                            ELSE NULL
                                        END AS E_SA1_3_1,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_3, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_3, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_3, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(SLIDE_KEYS_3, '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(SLIDE_KEYS_3, '[^;]+', 1, 2)
                                            )
                                            ELSE NULL
                                        END AS E_SA1_3_2,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_4, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_4, '[^;]+', 1, 1), '^[0-9]{1,3}') = 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_4, '[^;]+', 1, 1)
                                            ELSE NULL
                                        END AS E_SA1_4_1,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_4, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_4, '[^;]+', 1, 1), '^[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_4, '[^;]+', 1, 2), '^[0-9]{1,3}') = 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(SLIDE_KEYS_4, '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(SLIDE_KEYS_4, '[^;]+', 1, 2)
                                            )
                                            ELSE NULL
                                        END AS E_SA1_4_2,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_5, '') IS NOT NULL)
                                            THEN SUBSTR(SLIDE_KEYS_5, 1, INSTR(SLIDE_KEYS_5, ' ('))
                                            ELSE NULL
                                        END AS E_SA1_5
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
                                                ELSE NULL
                                            END AS SLIDE_KEYS_A1
                                        FROM test_type3_a2_5
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