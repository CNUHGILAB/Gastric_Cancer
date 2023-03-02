SELECT
    원무접수ID,
    E_SA6,
    SA6,
    E_PA6,
    PA6,
    KEYS_A6,
    SLIDE_KEYS_1,
    SLIDE_KEYS_2,
    SLIDE_KEYS_3,
    SLIDE_KEYS_4,
    PARAFFIN_BLOCK_KEYS_1
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
                WHEN (NULLIF(SA6_4_1, '') IS NOT NULL)
                THEN SA6_4_1
                WHEN (NULLIF(SA6_4_2, '') IS NOT NULL)
                THEN SA6_4_2
                ELSE NULL
            END AS SA6_4
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
                    WHEN (NULLIF(E_SA6_4_1, '') IS NOT NULL)
                    THEN E_SA6_4_1
                    WHEN (NULLIF(E_SA6_4_2, '') IS NOT NULL)
                    THEN E_SA6_4_2
                    ELSE NULL
                END AS E_SA6_4
            FROM(
                SELECT *,
                    CASE
                        WHEN (NULLIF(SA6_1_1_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_6, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA6_1_1_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 6)
                        )
                        ELSE NULL
                    END AS SA6_1_1_4,
                    CASE
                        WHEN (NULLIF(SA6_1_2_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_6, '[^;]+', 1, 7), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA6_1_2_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 7)
                        )
                        ELSE NULL
                    END AS SA6_1_2_4
                FROM(
                    SELECT *,
                        CASE
                            WHEN (NULLIF(SA6_1_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_6, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA6_1_1_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 5)
                            )
                            ELSE NULL
                        END AS SA6_1_1_3,
                        CASE
                            WHEN (NULLIF(SA6_1_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_6, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA6_1_2_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 6)
                            )
                            ELSE NULL
                        END AS SA6_1_2_3
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (NULLIF(SA6_1_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_6, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA6_1_1_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 4)
                                )
                                ELSE NULL
                            END AS SA6_1_1_2,
                            CASE
                                WHEN (NULLIF(SA6_1_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_6, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA6_1_2_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 5)
                                )
                                ELSE NULL
                            END AS SA6_1_2_2
                        FROM(
                            SELECT *,
                                CASE
                                    WHEN (NULLIF(SA6_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_6, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA6_1_1, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 3)
                                    )
                                    ELSE NULL
                                END AS SA6_1_1_1,
                                CASE
                                    WHEN (NULLIF(SA6_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_6, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA6_1_2, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 4)
                                    )
                                    ELSE NULL
                                END AS SA6_1_2_1
                            FROM(
                                SELECT *,
                                    CASE
                                        WHEN (NULLIF(E_SA6_1_1, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 2)
                                        ELSE NULL
                                    END AS SA6_1_1,
                                    CASE
                                        WHEN (NULLIF(E_SA6_1_2, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 3)
                                        ELSE NULL
                                    END AS SA6_1_2,
                                    CASE
                                        WHEN (NULLIF(E_SA6_2, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_2_6, '[^;]+', 1, 1)
                                        ELSE NULL
                                    END AS SA6_2,
                                    CASE
                                        WHEN (NULLIF(E_SA6_3, '') IS NOT NULL)
                                        THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_3_6, '[^;]+', 1, 1), 1, INSTR(REGEXP_SUBSTR(SLIDE_KEYS_3_6, '[^;]+', 1, 1), ')'))
                                        ELSE NULL
                                    END AS SA6_3,
                                    CASE
                                        WHEN (NULLIF(E_SA6_4_1, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_4_6, '[^;]+', 1, 1)
                                        ELSE NULL
                                    END AS SA6_4_1,
                                    CASE
                                        WHEN (NULLIF(E_SA6_4_2, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_4_6, '[^;]+', 1, 1)
                                        ELSE NULL
                                    END AS SA6_4_2,
                                    CASE
                                        WHEN (NULLIF(E_PA6, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_1_6, '[^;]+', 1, 2)
                                        ELSE NULL
                                    END AS PA6
                                FROM(
                                    SELECT *,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_1_6, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_6, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_6, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 1)
                                            ELSE NULL
                                        END AS E_SA6_1_1,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_1_6, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_6, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_6, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_6, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(SLIDE_KEYS_1_6, '[^;]+', 1, 2)
                                            )
                                            ELSE NULL
                                        END AS E_SA6_1_2,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_2_6, '') IS NOT NULL)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_2_6, '[^;]+', 1, 2)
                                            ELSE NULL
                                        END AS E_SA6_2,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_3_6, '') IS NOT NULL AND NULLIF(REGEXP_SUBSTR(SLIDE_KEYS_3_6, '[^;]+', 1, 1), '') IS NOT NULL)
                                            THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_3_6, '[^;]+', 1, 1), REGEXP_INSTR(BINARY REGEXP_SUBSTR(SLIDE_KEYS_3_6, '[^;]+', 1, 1), '[a-z]+'))
                                            ELSE NULL
                                        END AS E_SA6_3,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_4_6, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_6, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_6, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_6, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_4_6, '[^;]+', 1, 2)
                                            WHEN (NULLIF(SLIDE_KEYS_4_6, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_6, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_6, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_SUBSTR(SLIDE_KEYS_4_6, '[^;]+', 1, 3) = REGEXP_SUBSTR(SLIDE_KEYS_4_6, '[^;]*$'))
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_4_6, '[^;]+', 1, 2)
                                            WHEN (NULLIF(SLIDE_KEYS_4_6, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_6, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_6, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_SUBSTR(SLIDE_KEYS_4_6, '[^;]+', 1, 2) = REGEXP_SUBSTR(SLIDE_KEYS_4_6, '[^;]*$'))
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_4_6, '[^;]+', 1, 2)
                                            ELSE NULL
                                        END AS E_SA6_4_1,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_4_6, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_6, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_6, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_6, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_6, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(SLIDE_KEYS_4_6, '[^;]+', 1, 2), ';'
                                                ), REGEXP_SUBSTR(SLIDE_KEYS_4_6, '[^;]+', 1, 3)
                                            )
                                            WHEN (NULLIF(SLIDE_KEYS_4_6, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_6, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_6, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_6, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_SUBSTR(SLIDE_KEYS_4_6, '[^;]+', 1, 3) = REGEXP_SUBSTR(SLIDE_KEYS_4_6, '[^;]*$'))
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(SLIDE_KEYS_4_6, '[^;]+', 1, 2), ';'
                                                ), REGEXP_SUBSTR(SLIDE_KEYS_4_6, '[^;]+', 1, 3)
                                            )
                                            ELSE NULL
                                        END AS E_SA6_4_2,
                                        CASE
                                            WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_1_6, '') IS NOT NULL)
                                            THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_1_6, '[^;]+', 1, 1)
                                            ELSE NULL
                                        END AS E_PA6
                                    FROM(
                                        SELECT *,
                                            CASE
                                                WHEN (NULLIF(KEYS_A6, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_1, '') IS NOT NULL)
                                                THEN KEYS_A6
                                                ELSE NULL
                                            END AS SLIDE_KEYS_1_6,
                                            CASE
                                                WHEN (NULLIF(KEYS_A6, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_2, '') IS NOT NULL)
                                                THEN KEYS_A6
                                                ELSE NULL
                                            END AS SLIDE_KEYS_2_6,
                                            CASE
                                                WHEN (NULLIF(KEYS_A6, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_3, '') IS NOT NULL)
                                                THEN KEYS_A6
                                                ELSE NULL
                                            END AS SLIDE_KEYS_3_6,
                                            CASE
                                                WHEN (NULLIF(KEYS_A6, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_4, '') IS NOT NULL)
                                                THEN KEYS_A6
                                                ELSE NULL
                                            END AS SLIDE_KEYS_4_6,
                                            CASE
                                                WHEN (NULLIF(KEYS_A6, '') IS NOT NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_1, '') IS NOT NULL)
                                                THEN KEYS_A6
                                                ELSE NULL
                                            END AS PARAFFIN_BLOCK_KEYS_1_6
                                        FROM(
                                            SELECT *,
                                                CASE
                                                    WHEN (NULLIF(RE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_1, '') IS NOT NULL)
                                                    THEN SUBSTR(RE_KEYS, INSTR(RE_KEYS, REGEXP_SUBSTR(RE_KEYS, '[^;]+', 2, 1)))
                                                    WHEN (NULLIF(RE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_2, '') IS NOT NULL)
                                                    THEN SUBSTR(RE_KEYS, INSTR(RE_KEYS, REGEXP_SUBSTR(RE_KEYS, '[^;]+', 2, 1)))
                                                    WHEN (NULLIF(RE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_3, '') IS NOT NULL)
                                                    THEN SUBSTR(RE_KEYS, INSTR(RE_KEYS, REGEXP_SUBSTR(RE_KEYS, '[^;]+', 2, 1)))
                                                    WHEN (NULLIF(RE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_4, '') IS NOT NULL)
                                                    THEN SUBSTR(RE_KEYS, INSTR(RE_KEYS, REGEXP_SUBSTR(RE_KEYS, '[^;]+', 2, 1)))
                                                    WHEN (NULLIF(RE_KEYS, '') IS NOT NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_1, '') IS NOT NULL)
                                                    THEN SUBSTR(RE_KEYS, INSTR(RE_KEYS, REGEXP_SUBSTR(RE_KEYS, '[^;]+', 2, 1)))
                                                    ELSE NULL
                                                END AS KEYS_A6
                                            FROM(
                                                SELECT *,
                                                    CASE
                                                        WHEN (NULLIF(SA5, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_1, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            KEYS_A5, LENGTH(CONCAT(CONCAT(CONCAT(E_SA5, ';'), SA5), ';'))
                                                        )
                                                        WHEN (NULLIF(SA5, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_2, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            KEYS_A5, LENGTH(CONCAT(CONCAT(CONCAT(E_SA5, ';'), SA5), ';'))
                                                        )
                                                        WHEN (NULLIF(SA5, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_3, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            KEYS_A5, LENGTH(CONCAT(CONCAT(CONCAT(SA5, ' '), E_SA5), ';'))
                                                        )
                                                        WHEN (NULLIF(SA5, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_4, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            KEYS_A5, LENGTH(CONCAT(CONCAT(CONCAT(SA5, ';'), E_SA5), ';'))
                                                        )
                                                        WHEN (NULLIF(PA5, '') IS NOT NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_1, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            KEYS_A5, LENGTH(CONCAT(CONCAT(CONCAT(E_PA5, ';'), PA5), ';'))
                                                        )
                                                        ELSE NULL
                                                    END AS RE_KEYS
                                                FROM test_type1_sa05
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