SELECT
    원무접수ID,
    E_PA2,
    PA2,
    E_SA2,
    SA2,
    KEYS_A2,
    PARAFFIN_BLOCK_KEYS_1,
    PARAFFIN_BLOCK_KEYS_2,
    SLIDE_KEYS_1
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(E_PA2_1, '') IS NOT NULL)
            THEN E_PA2_1
            WHEN (NULLIF(E_PA2_2, '') IS NOT NULL)
            THEN E_PA2_2
            ELSE NULL
        END AS E_PA2,
        CASE
            WHEN (NULLIF(PA2_1, '') IS NOT NULL)
            THEN PA2_1
            WHEN (NULLIF(PA2_2, '') IS NOT NULL)
            THEN PA2_2
            ELSE NULL
        END AS PA2
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(PA2_1_1, '') IS NOT NULL AND NULLIF(PA2_1_1_1, '') IS NULL AND NULLIF(PA2_1_1_2, '') IS NULL AND NULLIF(PA2_1_1_3, '') IS NULL AND NULLIF(PA2_1_1_4, '') IS NULL)
                THEN PA2_1_1
                WHEN (NULLIF(PA2_1_1, '') IS NOT NULL AND NULLIF(PA2_1_1_1, '') IS NOT NULL AND NULLIF(PA2_1_1_2, '') IS NULL AND NULLIF(PA2_1_1_3, '') IS NULL AND NULLIF(PA2_1_1_4, '') IS NULL)
                THEN PA2_1_1_1
                WHEN (NULLIF(PA2_1_1, '') IS NOT NULL AND NULLIF(PA2_1_1_1, '') IS NOT NULL AND NULLIF(PA2_1_1_2, '') IS NOT NULL AND NULLIF(PA2_1_1_3, '') IS NULL AND NULLIF(PA2_1_1_4, '') IS NULL)
                THEN PA2_1_1_2
                WHEN (NULLIF(PA2_1_1, '') IS NOT NULL AND NULLIF(PA2_1_1_1, '') IS NOT NULL AND NULLIF(PA2_1_1_2, '') IS NOT NULL AND NULLIF(PA2_1_1_3, '') IS NOT NULL AND NULLIF(PA2_1_1_4, '') IS NULL)
                THEN PA2_1_1_3
                WHEN (NULLIF(PA2_1_1, '') IS NOT NULL AND NULLIF(PA2_1_1_1, '') IS NOT NULL AND NULLIF(PA2_1_1_2, '') IS NOT NULL AND NULLIF(PA2_1_1_3, '') IS NOT NULL AND NULLIF(PA2_1_1_4, '') IS NOT NULL)
                THEN PA2_1_1_4
                WHEN (NULLIF(PA2_1_2, '') IS NOT NULL AND NULLIF(PA2_1_2_1, '') IS NULL AND NULLIF(PA2_1_2_2, '') IS NULL AND NULLIF(PA2_1_2_3, '') IS NULL AND NULLIF(PA2_1_2_4, '') IS NULL)
                THEN PA2_1_2
                WHEN (NULLIF(PA2_1_2, '') IS NOT NULL AND NULLIF(PA2_1_2_1, '') IS NOT NULL AND NULLIF(PA2_1_2_2, '') IS NULL AND NULLIF(PA2_1_2_3, '') IS NULL AND NULLIF(PA2_1_2_4, '') IS NULL)
                THEN PA2_1_2_1
                WHEN (NULLIF(PA2_1_2, '') IS NOT NULL AND NULLIF(PA2_1_2_1, '') IS NOT NULL AND NULLIF(PA2_1_2_2, '') IS NOT NULL AND NULLIF(PA2_1_2_3, '') IS NULL AND NULLIF(PA2_1_2_4, '') IS NULL)
                THEN PA2_1_2_2
                WHEN (NULLIF(PA2_1_2, '') IS NOT NULL AND NULLIF(PA2_1_2_1, '') IS NOT NULL AND NULLIF(PA2_1_2_2, '') IS NOT NULL AND NULLIF(PA2_1_2_3, '') IS NOT NULL AND NULLIF(PA2_1_2_4, '') IS NULL)
                THEN PA2_1_2_3
                WHEN (NULLIF(PA2_1_2, '') IS NOT NULL AND NULLIF(PA2_1_2_1, '') IS NOT NULL AND NULLIF(PA2_1_2_2, '') IS NOT NULL AND NULLIF(PA2_1_2_3, '') IS NOT NULL AND NULLIF(PA2_1_2_4, '') IS NOT NULL)
                THEN PA2_1_2_4
                ELSE NULL
            END AS PA2_1,
            CASE
                WHEN (NULLIF(PA2_2_1, '') IS NOT NULL AND NULLIF(PA2_2_1_1, '') IS NULL AND NULLIF(PA2_2_1_2, '') IS NULL AND NULLIF(PA2_2_1_3, '') IS NULL AND NULLIF(PA2_2_1_4, '') IS NULL)
                THEN PA2_2_1
                WHEN (NULLIF(PA2_2_1, '') IS NOT NULL AND NULLIF(PA2_2_1_1, '') IS NOT NULL AND NULLIF(PA2_2_1_2, '') IS NULL AND NULLIF(PA2_2_1_3, '') IS NULL AND NULLIF(PA2_2_1_4, '') IS NULL)
                THEN PA2_2_1_1
                WHEN (NULLIF(PA2_2_1, '') IS NOT NULL AND NULLIF(PA2_2_1_1, '') IS NOT NULL AND NULLIF(PA2_2_1_2, '') IS NOT NULL AND NULLIF(PA2_2_1_3, '') IS NULL AND NULLIF(PA2_2_1_4, '') IS NULL)
                THEN PA2_2_1_2
                WHEN (NULLIF(PA2_2_1, '') IS NOT NULL AND NULLIF(PA2_2_1_1, '') IS NOT NULL AND NULLIF(PA2_2_1_2, '') IS NOT NULL AND NULLIF(PA2_2_1_3, '') IS NOT NULL AND NULLIF(PA2_2_1_4, '') IS NULL)
                THEN PA2_2_1_3
                WHEN (NULLIF(PA2_2_1, '') IS NOT NULL AND NULLIF(PA2_2_1_1, '') IS NOT NULL AND NULLIF(PA2_2_1_2, '') IS NOT NULL AND NULLIF(PA2_2_1_3, '') IS NOT NULL AND NULLIF(PA2_2_1_4, '') IS NOT NULL)
                THEN PA2_2_1_4
                WHEN (NULLIF(PA2_2_2, '') IS NOT NULL AND NULLIF(PA2_2_2_1, '') IS NULL AND NULLIF(PA2_2_2_2, '') IS NULL AND NULLIF(PA2_2_2_3, '') IS NULL AND NULLIF(PA2_2_2_4, '') IS NULL)
                THEN PA2_2_2
                WHEN (NULLIF(PA2_2_2, '') IS NOT NULL AND NULLIF(PA2_2_2_1, '') IS NOT NULL AND NULLIF(PA2_2_2_2, '') IS NULL AND NULLIF(PA2_2_2_3, '') IS NULL AND NULLIF(PA2_2_2_4, '') IS NULL)
                THEN PA2_2_2_1
                WHEN (NULLIF(PA2_2_2, '') IS NOT NULL AND NULLIF(PA2_2_2_1, '') IS NOT NULL AND NULLIF(PA2_2_2_2, '') IS NOT NULL AND NULLIF(PA2_2_2_3, '') IS NULL AND NULLIF(PA2_2_2_4, '') IS NULL)
                THEN PA2_2_2_2
                WHEN (NULLIF(PA2_2_2, '') IS NOT NULL AND NULLIF(PA2_2_2_1, '') IS NOT NULL AND NULLIF(PA2_2_2_2, '') IS NOT NULL AND NULLIF(PA2_2_2_3, '') IS NOT NULL AND NULLIF(PA2_2_2_4, '') IS NULL)
                THEN PA2_2_2_3
                WHEN (NULLIF(PA2_2_2, '') IS NOT NULL AND NULLIF(PA2_2_2_1, '') IS NOT NULL AND NULLIF(PA2_2_2_2, '') IS NOT NULL AND NULLIF(PA2_2_2_3, '') IS NOT NULL AND NULLIF(PA2_2_2_4, '') IS NOT NULL)
                THEN PA2_2_2_4
                ELSE NULL
            END AS PA2_2,
            CASE
                WHEN (NULLIF(SA2_1_1, '') IS NOT NULL AND NULLIF(SA2_1_1_1, '') IS NULL AND NULLIF(SA2_1_1_2, '') IS NULL AND NULLIF(SA2_1_1_3, '') IS NULL AND NULLIF(SA2_1_1_4, '') IS NULL)
                THEN SA2_1_1
                WHEN (NULLIF(SA2_1_1, '') IS NOT NULL AND NULLIF(SA2_1_1_1, '') IS NOT NULL AND NULLIF(SA2_1_1_2, '') IS NULL AND NULLIF(SA2_1_1_3, '') IS NULL AND NULLIF(SA2_1_1_4, '') IS NULL)
                THEN SA2_1_1_1
                WHEN (NULLIF(SA2_1_1, '') IS NOT NULL AND NULLIF(SA2_1_1_1, '') IS NOT NULL AND NULLIF(SA2_1_1_2, '') IS NOT NULL AND NULLIF(SA2_1_1_3, '') IS NULL AND NULLIF(SA2_1_1_4, '') IS NULL)
                THEN SA2_1_1_2
                WHEN (NULLIF(SA2_1_1, '') IS NOT NULL AND NULLIF(SA2_1_1_1, '') IS NOT NULL AND NULLIF(SA2_1_1_2, '') IS NOT NULL AND NULLIF(SA2_1_1_3, '') IS NOT NULL AND NULLIF(SA2_1_1_4, '') IS NULL)
                THEN SA2_1_1_3
                WHEN (NULLIF(SA2_1_1, '') IS NOT NULL AND NULLIF(SA2_1_1_1, '') IS NOT NULL AND NULLIF(SA2_1_1_2, '') IS NOT NULL AND NULLIF(SA2_1_1_3, '') IS NOT NULL AND NULLIF(SA2_1_1_4, '') IS NOT NULL)
                THEN SA2_1_1_4
                WHEN (NULLIF(SA2_1_2, '') IS NOT NULL AND NULLIF(SA2_1_2_1, '') IS NULL AND NULLIF(SA2_1_2_2, '') IS NULL AND NULLIF(SA2_1_2_3, '') IS NULL AND NULLIF(SA2_1_2_4, '') IS NULL)
                THEN SA2_1_2
                WHEN (NULLIF(SA2_1_2, '') IS NOT NULL AND NULLIF(SA2_1_2_1, '') IS NOT NULL AND NULLIF(SA2_1_2_2, '') IS NULL AND NULLIF(SA2_1_2_3, '') IS NULL AND NULLIF(SA2_1_2_4, '') IS NULL)
                THEN SA2_1_2_1
                WHEN (NULLIF(SA2_1_2, '') IS NOT NULL AND NULLIF(SA2_1_2_1, '') IS NOT NULL AND NULLIF(SA2_1_2_2, '') IS NOT NULL AND NULLIF(SA2_1_2_3, '') IS NULL AND NULLIF(SA2_1_2_4, '') IS NULL)
                THEN SA2_1_2_2
                WHEN (NULLIF(SA2_1_2, '') IS NOT NULL AND NULLIF(SA2_1_2_1, '') IS NOT NULL AND NULLIF(SA2_1_2_2, '') IS NOT NULL AND NULLIF(SA2_1_2_3, '') IS NOT NULL AND NULLIF(SA2_1_2_4, '') IS NULL)
                THEN SA2_1_2_3
                WHEN (NULLIF(SA2_1_2, '') IS NOT NULL AND NULLIF(SA2_1_2_1, '') IS NOT NULL AND NULLIF(SA2_1_2_2, '') IS NOT NULL AND NULLIF(SA2_1_2_3, '') IS NOT NULL AND NULLIF(SA2_1_2_4, '') IS NOT NULL)
                THEN SA2_1_2_4
                ELSE NULL
            END AS SA2
        FROM(
            SELECT *,
                CASE
                    WHEN (NULLIF(E_PA2_1_1, '') IS NOT NULL)
                    THEN E_PA2_1_1
                    WHEN (NULLIF(E_PA2_1_2, '') IS NOT NULL)
                    THEN E_PA2_1_2
                    ELSE NULL
                END AS E_PA2_1,
                CASE
                    WHEN (NULLIF(E_PA2_2_1, '') IS NOT NULL)
                    THEN E_PA2_2_1
                    WHEN (NULLIF(E_PA2_2_2, '') IS NOT NULL)
                    THEN E_PA2_2_2
                    ELSE NULL
                END AS E_PA2_2,
                CASE
                    WHEN (NULLIF(E_SA2_1_1, '') IS NOT NULL)
                    THEN E_SA2_1_1
                    WHEN (NULLIF(E_SA2_1_2, '') IS NOT NULL)
                    THEN E_SA2_1_2
                    ELSE NULL
                END AS E_SA2
            FROM(
                SELECT *,
                    CASE
                        WHEN (NULLIF(PA2_1_1_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_1_2, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                PA2_1_1_3, ';'
                            ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_1_2, '[^;]+', 1, 6)
                        )
                        ELSE NULL
                    END AS PA2_1_1_4,
                    CASE
                        WHEN (NULLIF(PA2_1_2_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_1_2, '[^;]+', 1, 7), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                PA2_1_2_3, ';'
                            ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_1_2, '[^;]+', 1, 7)
                        )
                        ELSE NULL
                    END AS PA2_1_2_4,
                    CASE
                        WHEN (NULLIF(PA2_2_1_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 6), '^[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                PA2_2_1_3, ';'
                            ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 6)
                        )
                        WHEN (NULLIF(PA2_2_1_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                PA2_2_1_3, ';'
                            ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 6)
                        )
                        ELSE NULL
                    END AS PA2_2_1_4,
                    CASE
                        WHEN (NULLIF(PA2_2_2_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 7), '^[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                PA2_2_2_3, ';'
                            ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 7)
                        )
                        WHEN (NULLIF(PA2_2_2_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 7), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                PA2_2_2_3, ';'
                            ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 7)
                        )
                        ELSE NULL
                    END AS PA2_2_2_4,
                    CASE
                        WHEN (NULLIF(SA2_1_1_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_2, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA2_1_1_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_1_2, '[^;]+', 1, 6)
                        )
                        ELSE NULL
                    END AS SA2_1_1_4,
                    CASE
                        WHEN (NULLIF(SA2_1_2_3, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_2, '[^;]+', 1, 7), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                        THEN CONCAT(
                            CONCAT(
                                SA2_1_2_3, ';'
                            ), REGEXP_SUBSTR(SLIDE_KEYS_1_2, '[^;]+', 1, 7)
                        )
                        ELSE NULL
                    END AS SA2_1_2_4
                FROM(
                    SELECT *,
                        CASE
                            WHEN (NULLIF(PA2_1_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_1_2, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    PA2_1_1_2, ';'
                                ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_1_2, '[^;]+', 1, 5)
                            )
                            ELSE NULL
                        END AS PA2_1_1_3,
                        CASE
                            WHEN (NULLIF(PA2_1_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_1_2, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    PA2_1_2_2, ';'
                                ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_1_2, '[^;]+', 1, 6)
                            )
                            ELSE NULL
                        END AS PA2_1_2_3,
                        CASE
                            WHEN (NULLIF(PA2_2_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 5), '^[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    PA2_2_1_2, ';'
                                ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 5)
                            )
                            WHEN (NULLIF(PA2_2_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    PA2_2_1_2, ';'
                                ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 5)
                            )
                            ELSE NULL
                        END AS PA2_2_1_3,
                        CASE
                            WHEN (NULLIF(PA2_2_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 6), '^[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    PA2_2_2_2, ';'
                                ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 6)
                            )
                            WHEN (NULLIF(PA2_2_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    PA2_2_2_2, ';'
                                ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 6)
                            )
                            ELSE NULL
                        END AS PA2_2_2_3,
                        CASE
                            WHEN (NULLIF(SA2_1_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_2, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA2_1_1_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_1_2, '[^;]+', 1, 5)
                            )
                            ELSE NULL
                        END AS SA2_1_1_3,
                        CASE
                            WHEN (NULLIF(SA2_1_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_2, '[^;]+', 1, 6), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN CONCAT(
                                CONCAT(
                                    SA2_1_2_2, ';'
                                ), REGEXP_SUBSTR(SLIDE_KEYS_1_2, '[^;]+', 1, 6)
                            )
                            ELSE NULL
                        END AS SA2_1_2_3
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (NULLIF(PA2_1_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_1_2, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        PA2_1_1_1, ';'
                                    ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_1_2, '[^;]+', 1, 4)
                                )
                                ELSE NULL
                            END AS PA2_1_1_2,
                            CASE
                                WHEN (NULLIF(PA2_1_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_1_2, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        PA2_1_2_1, ';'
                                    ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_1_2, '[^;]+', 1, 5)
                                )
                                ELSE NULL
                            END AS PA2_1_2_2,
                            CASE
                                WHEN (NULLIF(PA2_2_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 4), '^[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        PA2_2_1_1, ';'
                                    ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 4)
                                )
                                WHEN (NULLIF(PA2_2_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        PA2_2_1_1, ';'
                                    ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 4)
                                )
                                ELSE NULL
                            END AS PA2_2_1_2,
                            CASE
                                WHEN (NULLIF(PA2_2_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 5), '^[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        PA2_2_2_1, ';'
                                    ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 5)
                                )
                                WHEN (NULLIF(PA2_2_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        PA2_2_2_1, ';'
                                    ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 5)
                                )
                                ELSE NULL
                            END AS PA2_2_2_2,
                            CASE
                                WHEN (NULLIF(SA2_1_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_2, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA2_1_1_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_1_2, '[^;]+', 1, 4)
                                )
                                ELSE NULL
                            END AS SA2_1_1_2,
                            CASE
                                WHEN (NULLIF(SA2_1_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_2, '[^;]+', 1, 5), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                THEN CONCAT(
                                    CONCAT(
                                        SA2_1_2_1, ';'
                                    ), REGEXP_SUBSTR(SLIDE_KEYS_1_2, '[^;]+', 1, 5)
                                )
                                ELSE NULL
                            END AS SA2_1_2_2
                        FROM(
                            SELECT *,
                                CASE
                                    WHEN (NULLIF(PA2_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_1_2, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            PA2_1_1, ';'
                                        ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_1_2, '[^;]+', 1, 3)
                                    )
                                    ELSE NULL
                                END AS PA2_1_1_1,
                                CASE
                                    WHEN (NULLIF(PA2_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_1_2, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            PA2_1_2, ';'
                                        ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_1_2, '[^;]+', 1, 4)
                                    )
                                    ELSE NULL
                                END AS PA2_1_2_1,
                                CASE
                                    WHEN (NULLIF(PA2_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 3), '^[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            PA2_2_1, ';'
                                        ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 3)
                                    )
                                    WHEN (NULLIF(PA2_2_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            PA2_2_1, ';'
                                        ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 3)
                                    )
                                    ELSE NULL
                                END AS PA2_2_1_1,
                                CASE
                                    WHEN (NULLIF(PA2_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 4), '^[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            PA2_2_2, ';'
                                        ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 4)
                                    )
                                    WHEN (NULLIF(PA2_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            PA2_2_2, ';'
                                        ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 4)
                                    )
                                    ELSE NULL
                                END AS PA2_2_2_1,
                                CASE
                                    WHEN (NULLIF(SA2_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_2, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA2_1_1, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_1_2, '[^;]+', 1, 3)
                                    )
                                    ELSE NULL
                                END AS SA2_1_1_1,
                                CASE
                                    WHEN (NULLIF(SA2_1_1, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_2, '[^;]+', 1, 4), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                    THEN CONCAT(
                                        CONCAT(
                                            SA2_1_1, ';'
                                        ), REGEXP_SUBSTR(SLIDE_KEYS_1_2, '[^;]+', 1, 4)
                                    )
                                    ELSE NULL
                                END AS SA2_1_2_1
                            FROM(
                                SELECT *,
                                    CASE
                                        WHEN (NULLIF(E_PA2_1_1, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_1_2, '[^;]+', 1, 2)
                                        ELSE NULL
                                    END AS PA2_1_1,
                                    CASE
                                        WHEN (NULLIF(E_PA2_1_2, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_1_2, '[^;]+', 1, 3)
                                        ELSE NULL
                                    END AS PA2_1_2,
                                    CASE
                                        WHEN (NULLIF(E_PA2_2_1, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 2)
                                        ELSE NULL
                                    END AS PA2_2_1,
                                    CASE
                                        WHEN (NULLIF(E_PA2_2_2, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 3)
                                        ELSE NULL
                                    END AS PA2_2_2,
                                    CASE
                                        WHEN (NULLIF(E_SA2_1_1, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_1_2, '[^;]+', 1, 2)
                                        ELSE NULL
                                    END AS SA2_1_1,
                                    CASE
                                        WHEN (NULLIF(E_SA2_1_2, '') IS NOT NULL)
                                        THEN REGEXP_SUBSTR(SLIDE_KEYS_1_2, '[^;]+', 1, 3)
                                        ELSE NULL
                                    END AS SA2_1_2
                                FROM(
                                    SELECT *,
                                        CASE
                                            WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_1_2, '[^;]+', 1, 1), '[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_1_2, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_1_2, '[^;]+', 1, 1)
                                            ELSE NULL
                                        END AS E_PA2_1_1,
                                        CASE
                                            WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_1_2, '[^;]+', 1, 1), '[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_1_2, '[^;]+', 1, 2), '[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_1_2, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_1_2, '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_1_2, '[^;]+', 1, 2)
                                            )
                                            ELSE NULL
                                        END AS E_PA2_1_2,
                                        CASE
                                            WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 1)
                                            WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 1), '^[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 2), '^[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 1)
                                            ELSE NULL
                                        END AS E_PA2_2_1,
                                        CASE
                                            WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 2)
                                            )
                                            WHEN (NULLIF(PARAFFIN_BLOCK_KEYS_2_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 1), '^[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 2), '^[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 3), '^[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(PARAFFIN_BLOCK_KEYS_2_2, '[^;]+', 1, 2)
                                            )
                                            ELSE NULL
                                        END AS E_PA2_2_2,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_2, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_2, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN REGEXP_SUBSTR(SLIDE_KEYS_1_2, '[^;]+', 1, 1)
                                            ELSE NULL
                                        END AS E_SA2_1_1,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEYS_1_2, '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_2, '[^;]+', 1, 1), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(SLIDE_KEYS_1_2, '[^;]+', 1, 2), '^[A-Z]{1,2}[0-9]{1,3}') = 0 AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SLIDE_KEYS_1_2, '[^;]+', 1, 3), '^[A-Z]{1,2}[0-9]{1,3}') != 0)
                                            THEN CONCAT(
                                                CONCAT(
                                                    REGEXP_SUBSTR(SLIDE_KEYS_1_2, '[^;]+', 1, 1), ';'
                                                ), REGEXP_SUBSTR(SLIDE_KEYS_1_2, '[^;]+', 1, 2)
                                            )
                                            ELSE NULL
                                        END AS E_SA2_1_2
                                    FROM(
                                        SELECT *,
                                            CASE
                                                WHEN (NULLIF(KEYS_A2, '') IS NOT NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_1, '') IS NOT NULL)
                                                THEN KEYS_A2
                                                ELSE NULL
                                            END AS PARAFFIN_BLOCK_KEYS_1_2,
                                            CASE
                                                WHEN (NULLIF(KEYS_A2, '') IS NOT NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_2, '') IS NOT NULL)
                                                THEN KEYS_A2
                                                ELSE NULL
                                            END AS PARAFFIN_BLOCK_KEYS_2_2,
                                            CASE
                                                WHEN (NULLIF(KEYS_A2, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_1, '') IS NOT NULL)
                                                THEN KEYS_A2
                                                ELSE NULL
                                            END AS SLIDE_KEYS_1_2
                                        FROM(
                                            SELECT *,
                                                CASE
                                                    WHEN (NULLIF(RE_PARAFFIN_BLOCK_KEYS, '') IS NOT NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_1, '') IS NOT NULL)
                                                    THEN SUBSTR(RE_PARAFFIN_BLOCK_KEYS, INSTR(RE_PARAFFIN_BLOCK_KEYS, REGEXP_SUBSTR(RE_PARAFFIN_BLOCK_KEYS, '[^;]+', 2, 1)))
                                                    WHEN (NULLIF(RE_PARAFFIN_BLOCK_KEYS, '') IS NOT NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_2, '') IS NOT NULL)
                                                    THEN SUBSTR(RE_PARAFFIN_BLOCK_KEYS, INSTR(RE_PARAFFIN_BLOCK_KEYS, REGEXP_SUBSTR(RE_PARAFFIN_BLOCK_KEYS, '[^;]+', 2, 1)))
                                                    WHEN (NULLIF(RE_SLIDE_KEYS, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_1, '') IS NOT NULL)
                                                    THEN SUBSTR(RE_SLIDE_KEYS, INSTR(RE_SLIDE_KEYS, REGEXP_SUBSTR(RE_SLIDE_KEYS, '[^;]+', 2, 1)))
                                                    ELSE NULL
                                                END AS KEYS_A2
                                            FROM(
                                                SELECT *,
                                                    CASE
                                                        WHEN (NULLIF(PA1, '') IS NOT NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_1, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            KEYS_A1, LENGTH(CONCAT(CONCAT(CONCAT(E_PA1, ';'), PA1), ';'))
                                                        )
                                                        WHEN (NULLIF(PA1, '') IS NOT NULL AND NULLIF(PARAFFIN_BLOCK_KEYS_2, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            KEYS_A1, LENGTH(CONCAT(CONCAT(CONCAT(E_PA1, ';'), PA1), ';'))
                                                        )
                                                        ELSE NULL
                                                    END AS RE_PARAFFIN_BLOCK_KEYS,
                                                    CASE
                                                        WHEN (NULLIF(SA1, '') IS NOT NULL AND NULLIF(SLIDE_KEYS_1, '') IS NOT NULL)
                                                        THEN SUBSTR(
                                                            KEYS_A1, LENGTH(CONCAT(CONCAT(CONCAT(E_SA1, ';'), SA1), ';'))
                                                        )
                                                        ELSE NULL
                                                    END AS RE_SLIDE_KEYS
                                                FROM test_type4_sa01
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