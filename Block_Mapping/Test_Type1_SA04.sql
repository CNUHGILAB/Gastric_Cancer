SELECT
    원무접수ID,
    E_SA4,
    SA4,
    E_PA4,
    PA4,
    KEYS_A4,
    SLIDE_KEYS_1,
    SLIDE_KEYS_2,
    SLIDE_KEYS_3,
    SLIDE_KEYS_4,
    PARAFFIN_BLOCK_KEYS_1
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
                WHEN (NULLIF(SA4_4_1, '') IS NOT NULL)
                THEN SA4_4_1
                WHEN (NULLIF(SA4_4_2, '') IS NOT NULL)
                THEN SA4_4_2
                ELSE NULL
            END AS SA4_4
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
                    WHEN (NULLIF(E_SA4_4_1, '') IS NOT NULL)
                    THEN E_SA4_4_1
                    WHEN (NULLIF(E_SA4_4_2, '') IS NOT NULL)
                    THEN E_SA4_4_2
                    ELSE NULL
                END AS E_SA4_4
            FROM(
                SELECT *,
                    CASE
                        WHEN (NULLIF(SA4_1_1_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_4, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA4_1_1_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 6)
                        )
                        ELSE NULL
                    END AS SA4_1_1_4,
                    CASE
                        WHEN (NULLIF(SA4_1_2_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_4, '[^;]+', 1, 7), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA4_1_2_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 7)
                        )
                        ELSE NULL
                    END AS SA4_1_2_4
                FROM(
                    SELECT *,
                        CASE
                            WHEN (NULLIF(SA4_1_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_4, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA4_1_1_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 5)
                            )
                            ELSE NULL
                        END AS SA4_1_1_3,
                        CASE
                            WHEN (NULLIF(SA4_1_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_4, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA4_1_2_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 6)
                            )
                            ELSE NULL
                        END AS SA4_1_2_3
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (NULLIF(SA4_1_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_4, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA4_1_1_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 4)
                                )
                                ELSE NULL
                            END AS SA4_1_1_2,
                            CASE
                                WHEN (NULLIF(SA4_1_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_4, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA4_1_2_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 5)
                                )
                                ELSE NULL
                            END AS SA4_1_2_2
                        FROM(
                            SELECT *,
                                CASE
                                    WHEN (NULLIF(SA4_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_4, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA4_1_1, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 3)
                                    )
                                    ELSE NULL
                                END AS SA4_1_1_1,
                                CASE
                                    WHEN (NULLIF(SA4_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_4, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA4_1_2, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 4)
                                    )
                                    ELSE NULL
                                END AS SA4_1_2_1
                            FROM(
                                SELECT *,
                                    CASE
                                        WHEN (NULLIF(E_SA4_1_1, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 2)
                                        ELSE NULL
                                    END AS SA4_1_1,
                                    CASE
                                        WHEN (NULLIF(E_SA4_1_2, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 3)
                                        ELSE NULL
                                    END AS SA4_1_2,
                                    CASE
                                        WHEN (NULLIF(E_SA4_2, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_2_4, '[^;]+', 1, 1)
                                        ELSE NULL
                                    END AS SA4_2,
                                    CASE
                                        WHEN (NULLIF(E_SA4_3, '') IS NOT NULL)
                                        THEN SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_3_4, '[^;]+', 1, 1), 1, INSTR(REGEXP_SUBSTR(SLIDE_KEYS_3_4, '[^;]+', 1, 1), ')'))
                                        ELSE NULL
                                    END AS SA4_3,
                                    CASE
                                        WHEN (NULLIF(E_SA4_4_1, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_4_4, '[^;]+', 1, 1)
                                        ELSE NULL
                                    END AS SA4_4_1,
                                    CASE
                                        WHEN (NULLIF(E_SA4_4_2, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_4_4, '[^;]+', 1, 1)
                                        ELSE NULL
                                    END AS SA4_4_2,
                                    CASE
                                        WHEN (NULLIF(E_PA4, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_1_4, '[^;]+', 1, 2)
                                        ELSE NULL
                                    END AS PA4
                                FROM(
                                    SELECT *,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_1_4, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_4, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_4, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 1)
                                            ELSE NULL
                                        END AS E_SA4_1_1,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_1_4, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_4, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_4, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_4, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(SLIDE_KEYS_1_4, '[^;]+', 1, 2)
                                            )
                                            ELSE NULL
                                        END AS E_SA4_1_2,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_2_4, '') IS NOT NULL)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_2_4, '[^;]+', 1, 2)
                                            ELSE NULL
                                        END AS E_SA4_2,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_3_4, '') IS NOT NULL AND NULLIF(REGEXP_SUBSTR(SLIDE_KEYS_3_4, '[^;]+', 1, 1), '') IS NOT NULL)
                                            THEN CONCAT(
                                                CONCAT(
                                                    SUBSTR(REGEXP_SUBSTR(SLIDE_KEYS_3_4, '[^;]+', 1, 1), REGEXP_INSTR(BINARY REGEXP_SUBSTR(SLIDE_KEYS_3_4, '[^;]+', 1, 1), '[a-z]+')), ';'
                                                ), REGEXP_SUBSTR(SLIDE_KEYS_3_4, '[^;]+', 1, 2)
                                            )
                                            ELSE NULL
                                        END AS E_SA4_3,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_4_4, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_4, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_4, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_4, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_4_4, '[^;]+', 1, 2)
                                            WHEN (NULLIF(SLIDE_KEYS_4_4, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_4, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_4, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_SUBSTR(SLIDE_KEYS_4_4, '[^;]+', 1, 3) = REGEXP_SUBSTR(SLIDE_KEYS_4_4, '[^;]*$'))
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_4_4, '[^;]+', 1, 2)
                                            WHEN (NULLIF(SLIDE_KEYS_4_4, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_4, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_4, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_SUBSTR(SLIDE_KEYS_4_4, '[^;]+', 1, 2) = REGEXP_SUBSTR(SLIDE_KEYS_4_4, '[^;]*$'))
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_4_4, '[^;]+', 1, 2)
                                            ELSE NULL
                                        END AS E_SA4_4_1,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_4_4, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_4, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_4, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_4, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_4, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(SLIDE_KEYS_4_4, '[^;]+', 1, 2), ';'
                                                ), REGEXP_SUBSTR(SLIDE_KEYS_4_4, '[^;]+', 1, 3)
                                            )
                                            WHEN (NULLIF(SLIDE_KEYS_4_4, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_4, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_4, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_4_4, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_SUBSTR(SLIDE_KEYS_4_4, '[^;]+', 1, 3) = REGEXP_SUBSTR(SLIDE_KEYS_4_4, '[^;]*$'))
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(SLIDE_KEYS_4_4, '[^;]+', 1, 2), ';'
                                                ), REGEXP_SUBSTR(SLIDE_KEYS_4_4, '[^;]+', 1, 3)
                                            )
                                            ELSE NULL
                                        END AS E_SA4_4_2,
                                        CASE
                                            WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_1_4, '') IS NOT NULL)
                                            THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_1_4, '[^;]+', 1, 1)
                                            ELSE NULL
                                        END AS E_PA4
                                    FROM(
                                        SELECT *,
                                            CASE
                                                WHEN (NULLIF(KEYS_A4, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_1, '') IS NOT NULL)
                                                THEN KEYS_A4
                                                ELSE NULL
                                            END AS SLIDE_KEYS_1_4,
                                            CASE
                                                WHEN (NULLIF(KEYS_A4, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_2, '') IS NOT NULL)
                                                THEN KEYS_A4
                                                ELSE NULL
                                            END AS SLIDE_KEYS_2_4,
                                            CASE
                                                WHEN (NULLIF(KEYS_A4, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_3, '') IS NOT NULL)
                                                THEN KEYS_A4
                                                ELSE NULL
                                            END AS SLIDE_KEYS_3_4,
                                            CASE
                                                WHEN (NULLIF(KEYS_A4, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_4, '') IS NOT NULL)
                                                THEN KEYS_A4
                                                ELSE NULL
                                            END AS SLIDE_KEYS_4_4,
                                            CASE
                                                WHEN (NULLIF(KEYS_A4, '') IS NOT NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_1, '') IS NOT NULL)
                                                THEN KEYS_A4
                                                ELSE NULL
                                            END AS PARAFFIN_BLOCK_KEYS_1_4
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
                                                END AS KEYS_A4
                                            FROM(
                                                SELECT *,
                                                    CASE
                                                        WHEN (NULLIF(SA3, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_1, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            KEYS_A3, LENGTH(CONCAT(CONCAT(CONCAT(E_SA3, ';'), SA3), ';'))
                                                        )
                                                        WHEN (NULLIF(SA3, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_2, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            KEYS_A3, LENGTH(CONCAT(CONCAT(CONCAT(E_SA3, ';'), SA3), ';'))
                                                        )
                                                        WHEN (NULLIF(SA3, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_3, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            KEYS_A3, LENGTH(CONCAT(CONCAT(CONCAT(SA3, ' '), E_SA3), ';'))
                                                        )
                                                        WHEN (NULLIF(SA3, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_4, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            KEYS_A3, LENGTH(CONCAT(CONCAT(CONCAT(SA3, ';'), E_SA3), ';'))
                                                        )
                                                        WHEN (NULLIF(PA3, '') IS NOT NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_1, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            KEYS_A3, LENGTH(CONCAT(CONCAT(CONCAT(E_PA3, ';'), PA3), ';'))
                                                        )
                                                        ELSE NULL
                                                    END AS RE_KEYS
                                                FROM test_type1_sa03
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