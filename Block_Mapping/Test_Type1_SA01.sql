SELECT
    원무접수ID,
    E_SA1,
    SA1,
    E_PA1,
    PA1,
    KEYS_A1,
    SLIDE_KEYS_1,
    SLIDE_KEYS_2,
    SLIDE_KEYS_3,
    SLIDE_KEYS_4,
    PARAFFIN_BLOCK_KEYS_1
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
            ELSE NULL
        END AS SA1
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(SA1_1_1, '') IS NOT NULL AND NULLIF(SA1_1_ELSE, '') IS NOT NULL)
                THEN SA1_1_ELSE
                WHEN (NULLIF(SA1_1_1, '') IS NOT NULL AND NULLIF(SA1_1_1_1, '') IS NULL AND NULLIF(SA1_1_1_2, '') IS NULL AND NULLIF(SA1_1_1_3, '') IS NULL AND NULLIF(SA1_1_1_4, '') IS NULL)
                THEN SA1_1_1
                WHEN (NULLIF(SA1_1_1, '') IS NOT NULL AND NULLIF(SA1_1_1_1, '') IS NOT NULL AND NULLIF(SA1_1_1_2, '') IS NULL AND NULLIF(SA1_1_1_3, '') IS NULL AND NULLIF(SA1_1_1_4, '') IS NULL)
                THEN SA1_1_1_1
                WHEN (NULLIF(SA1_1_1, '') IS NOT NULL AND NULLIF(SA1_1_1_1, '') IS NOT NULL AND NULLIF(SA1_1_1_2, '') IS NOT NULL AND NULLIF(SA1_1_1_3, '') IS NULL AND NULLIF(SA1_1_1_4, '') IS NULL)
                THEN SA1_1_1_2
                WHEN (NULLIF(SA1_1_1, '') IS NOT NULL AND NULLIF(SA1_1_1_1, '') IS NOT NULL AND NULLIF(SA1_1_1_2, '') IS NOT NULL AND NULLIF(SA1_1_1_3, '') IS NOT NULL AND NULLIF(SA1_1_1_4, '') IS NULL)
                THEN SA1_1_1_3
                WHEN (NULLIF(SA1_1_1, '') IS NOT NULL AND NULLIF(SA1_1_1_1, '') IS NOT NULL AND NULLIF(SA1_1_1_2, '') IS NOT NULL AND NULLIF(SA1_1_1_3, '') IS NOT NULL AND NULLIF(SA1_1_1_4, '') IS NOT NULL)
                THEN SA1_1_1_4
                WHEN (NULLIF(SA1_1_2, '') IS NOT NULL AND NULLIF(SA1_1_2_1, '') IS NULL AND NULLIF(SA1_1_2_2, '') IS NULL AND NULLIF(SA1_1_2_3, '') IS NULL AND NULLIF(SA1_1_2_4, '') IS NULL)
                THEN SA1_1_2
                WHEN (NULLIF(SA1_1_2, '') IS NOT NULL AND NULLIF(SA1_1_2_1, '') IS NOT NULL AND NULLIF(SA1_1_2_2, '') IS NULL AND NULLIF(SA1_1_2_3, '') IS NULL AND NULLIF(SA1_1_2_4, '') IS NULL)
                THEN SA1_1_2_1
                WHEN (NULLIF(SA1_1_2, '') IS NOT NULL AND NULLIF(SA1_1_2_1, '') IS NOT NULL AND NULLIF(SA1_1_2_2, '') IS NOT NULL AND NULLIF(SA1_1_2_3, '') IS NULL AND NULLIF(SA1_1_2_4, '') IS NULL)
                THEN SA1_1_2_2
                WHEN (NULLIF(SA1_1_2, '') IS NOT NULL AND NULLIF(SA1_1_2_1, '') IS NOT NULL AND NULLIF(SA1_1_2_2, '') IS NOT NULL AND NULLIF(SA1_1_2_3, '') IS NOT NULL AND NULLIF(SA1_1_2_4, '') IS NULL)
                THEN SA1_1_2_3
                WHEN (NULLIF(SA1_1_2, '') IS NOT NULL AND NULLIF(SA1_1_2_1, '') IS NOT NULL AND NULLIF(SA1_1_2_2, '') IS NOT NULL AND NULLIF(SA1_1_2_3, '') IS NOT NULL AND NULLIF(SA1_1_2_4, '') IS NOT NULL)
                THEN SA1_1_2_4
                ELSE NULL
            END AS SA1_1,
            CASE
                WHEN (NULLIF(SA1_4_1, '') IS NOT NULL)
                THEN SA1_4_1
                WHEN (NULLIF(SA1_4_2, '') IS NOT NULL)
                THEN SA1_4_2
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
                    WHEN (NULLIF(E_SA1_4_1, '') IS NOT NULL)
                    THEN E_SA1_4_1
                    WHEN (NULLIF(E_SA1_4_2, '') IS NOT NULL)
                    THEN E_SA1_4_2
                    ELSE NULL
                END AS E_SA1_4
            FROM(
                SELECT *,
                    CASE
                        WHEN (NULLIF(SA1_1_1_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA1_1_1_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_1, '[^;]+', 1, 6)
                        )
                        ELSE NULL
                    END AS SA1_1_1_4,
                    CASE
                        WHEN (NULLIF(SA1_1_2_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1, '[^;]+', 1, 7), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA1_1_2_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_1, '[^;]+', 1, 7)
                        )
                        ELSE NULL
                    END AS SA1_1_2_4
                FROM(
                    SELECT *,
                        CASE
                            WHEN (NULLIF(SA1_1_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA1_1_1_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_1, '[^;]+', 1, 5)
                            )
                            ELSE NULL
                        END AS SA1_1_1_3,
                        CASE
                            WHEN (NULLIF(SA1_1_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA1_1_2_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_1, '[^;]+', 1, 6)
                            )
                            ELSE NULL
                        END AS SA1_1_2_3
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (NULLIF(SA1_1_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA1_1_1_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_1, '[^;]+', 1, 4)
                                )
                                ELSE NULL
                            END AS SA1_1_1_2,
                            CASE
                                WHEN (NULLIF(SA1_1_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA1_1_2_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_1, '[^;]+', 1, 5)
                                )
                                ELSE NULL
                            END AS SA1_1_2_2
                        FROM(
                            SELECT *,
                                CASE
                                    WHEN (NULLIF(SA1_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA1_1_1, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_1, '[^;]+', 1, 3)
                                    )
                                    ELSE NULL
                                END AS SA1_1_1_1,
                                CASE
                                    WHEN (NULLIF(SA1_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA1_1_2, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_1, '[^;]+', 1, 4)
                                    )
                                    ELSE NULL
                                END AS SA1_1_2_1,
                                CASE
                                    WHEN (NULLIF(SA1_1_1, '') IS NOT NULL AND INSTR(SA1_1_1, '(') != 0 AND INSTR(SA1_1_1, ')') = 0)
                                    THEN LEFT(SUBSTR(SLIDE_KEYS_1, INSTR(SLIDE_KEYS_1, REGEXP_SUBSTR(SLIDE_KEYS_1, '[^;]+', 1, 2)), INSTR(SLIDE_KEYS_1, ');')), LENGTH(SUBSTR(SLIDE_KEYS_1, INSTR(SLIDE_KEYS_1, REGEXP_SUBSTR(SLIDE_KEYS_1, '[^;]+', 1, 2)), INSTR(SLIDE_KEYS_1, ');'))) - LENGTH(REGEXP_SUBSTR(SUBSTR(SLIDE_KEYS_1, INSTR(SLIDE_KEYS_1, REGEXP_SUBSTR(SLIDE_KEYS_1, '[^;]+', 1, 2)), INSTR(SLIDE_KEYS_1, ');')), '[^;]*$')) - 1)
                                    ELSE NULL
                                END AS SA1_1_ELSE
                            FROM(
                                SELECT *,
                                    CASE
                                        WHEN (NULLIF(E_SA1_1_1, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_1, '[^;]+', 1, 2)
                                        ELSE NULL
                                    END AS SA1_1_1,
                                    CASE
                                        WHEN (NULLIF(E_SA1_1_2, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_1, '[^;]+', 1, 3)
                                        ELSE NULL
                                    END AS SA1_1_2,
                                    CASE
                                        WHEN (NULLIF(E_SA1_2, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_2, '[^;]+', 1, 2)
                                        ELSE NULL
                                    END AS SA1_2,
                                    CASE
                                        WHEN (NULLIF(E_SA1_3, '') IS NOT NULL)
                                        THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_3, '[^;]+', 1, 1), 1, INSTR(REGEXP_SUBSTR(SLIDE_KEYS_3, '[^;]+', 1, 1), ')'))
                                        ELSE NULL
                                    END AS SA1_3,
                                    CASE
                                        WHEN (NULLIF(E_SA1_4_1, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_4, '[^;]+', 1, 1)
                                        ELSE NULL
                                    END AS SA1_4_1,
                                    CASE
                                        WHEN (NULLIF(E_SA1_4_2, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_4, '[^;]+', 1, 1)
                                        ELSE NULL
                                    END AS SA1_4_2,
                                    CASE
                                        WHEN (NULLIF(E_PA1, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_1, '[^;]+', 1, 2)
                                        ELSE NULL
                                    END AS PA1
                                FROM(
                                    SELECT *,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_1, '[^;]+', 1, 1)
                                            ELSE NULL
                                        END AS E_SA1_1_1,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(SLIDE_KEYS_1, '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(SLIDE_KEYS_1, '[^;]+', 1, 2)
                                            )
                                            ELSE NULL
                                        END AS E_SA1_1_2,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_2, '') IS NOT NULL)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_2, '[^;]+', 1, 1)
                                            ELSE NULL
                                        END AS E_SA1_2,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_3, '') IS NOT NULL AND NULLIF(REGEXP_SUBSTR(SLIDE_KEYS_3, '[^;]+', 1, 1), '') IS NOT NULL)
                                            THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_3, '[^;]+', 1, 1), REGEXP_INSTR(BINARY REGEXP_SUBSTR(SLIDE_KEYS_3, '[^;]+', 1, 1), '[a-z]+'))
                                            ELSE NULL
                                        END AS E_SA1_3,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_4, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_4, '[^;]+', 1, 2)
                                            ELSE NULL
                                        END AS E_SA1_4_1,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_4, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(SLIDE_KEYS_4, '[^;]+', 1, 2), ';'
                                                ), REGEXP_SUBSTR(SLIDE_KEYS_4, '[^;]+', 1, 3)
                                            )
                                            ELSE NULL
                                        END AS E_SA1_4_2,
                                        CASE
                                            WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_1, '') IS NOT NULL)
                                            THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_1, '[^;]+', 1, 1)
                                            ELSE NULL
                                        END AS E_PA1
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
                                                WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_1, '') IS NOT NULL)
                                                THEN PARAFFIN_BLOCK_KEYS_1
                                                ELSE NULL
                                            END AS KEYS_A1
                                        FROM test_type1_a2_5
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