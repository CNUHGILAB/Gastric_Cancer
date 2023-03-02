SELECT
    원무접수ID,
    환자번호,
    BLOCK_B0,
    BLOCK_B1,
    BLOCK_B2
FROM(
    SELECT *
    FROM(
        SELECT *
        FROM(
            SELECT *,
                CASE
                    WHEN (INSTR(BINARY RE_NO1, '(B') != 0 AND REGEXP_INSTR(BINARY RE_NO1, '[(]B[0-9]') = 0 AND INSTR(BINARY RE_NO1, '(B I') = 0 AND INSTR(BINARY RE_NO1, '(B-I') = 0 AND INSTR(BINARY RE_NO1, '(BI') = 0 AND REGEXP_INSTR(BINARY RE_NO1, '[(]B[A-z]+') = 0)
                    THEN RE_NO1
                    ELSE NULL
                END AS BLOCK_B0,
                CASE
                    WHEN (INSTR(BINARY RE_NO, '(B') != 0)
                    THEN RE_NO
                    ELSE NULL
                END AS BLOCK_B1,
                CASE
                    WHEN (INSTR(BINARY RE_NO, '(B') = 0)
                    THEN RE_NO
                    ELSE NULL
                END AS BLOCK_B2
            FROM test_type1_block_02
        ) a
    ) a
) a
/*
SELECT
    원무접수ID,
    환자번호,
    NO1_11
FROM(
    SELECT
    FROM(
        SELECT
        FROM(
            SELECT
            FROM(
                SELECT
                FROM(
                    SELECT
                    FROM(
                        SELECT
                        FROM(
                            SELECT
                            FROM(
                                SELECT
                                FROM(
                                    SELECT
                                    FROM(
                                        SELECT *,
                                            CASE
                                                WHEN (INSTR(BINARY BLOCK_NO12, 'No.') = 0)
                                                THEN CONCAT(
                                                    CONCAT(
                                                        NO1_10, '\n'
                                                    ), BLOCK_NO12
                                                )
                                                ELSE NULL
                                            END AS NO1_11
                                        FROM(
                                            SELECT *,
                                                CASE
                                                    WHEN (INSTR(BINARY BLOCK_NO11, 'No.') = 0)
                                                    THEN CONCAT(
                                                        CONCAT(
                                                            NO1_9, '\n'
                                                        ), BLOCK_NO11
                                                    )
                                                    ELSE NULL
                                                END AS NO1_10
                                            FROM(
                                                SELECT *,
                                                    CASE
                                                        WHEN (INSTR(BINARY BLOCK_NO10, 'No.') = 0)
                                                        THEN CONCAT(
                                                            CONCAT(
                                                                NO1_7, '\n'
                                                            ), BLOCK_NO10
                                                        )
                                                        ELSE NULL
                                                    END AS NO1_9
                                                FROM(
                                                    SELECT *,
                                                        CASE
                                                            WHEN (NULLIF(NO1_3, '') IS NOT NULL AND INSTR(BINARY BLOCK_NO9, 'No.') = 0)
                                                            THEN CONCAT(
                                                                CONCAT(
                                                                    NO1_7, '\n'
                                                                ), BLOCK_NO9
                                                            )
                                                            ELSE NULL
                                                        END AS NO1_8,
                                                        CASE
                                                            WHEN (NULLIF(NO1_3, '') IS NOT NULL AND INSTR(BINARY BLOCK_NO9, 'No.') = 0)
                                                            THEN CONCAT(
                                                                CONCAT(
                                                                    NO2_6, '\n'
                                                                ), BLOCK_NO9
                                                            )
                                                            ELSE NULL
                                                        END AS NO2_7,
                                                        CASE
                                                            WHEN (NULLIF(NO1_3, '') IS NOT NULL AND INSTR(BINARY BLOCK_NO9, 'No.') = 0)
                                                            THEN CONCAT(
                                                                CONCAT(
                                                                    NO3_5, '\n'
                                                                ), BLOCK_NO9
                                                            )
                                                            ELSE NULL
                                                        END AS NO3_6,
                                                        CASE
                                                            WHEN (NULLIF(NO1_3, '') IS NOT NULL AND INSTR(BINARY BLOCK_NO9, 'No.') = 0)
                                                            THEN CONCAT(
                                                                CONCAT(
                                                                    NO4_4, '\n'
                                                                ), BLOCK_NO9
                                                            )
                                                            ELSE NULL
                                                        END AS NO4_5,
                                                        CASE
                                                            WHEN (NULLIF(NO1_3, '') IS NOT NULL AND INSTR(BINARY BLOCK_NO9, 'No.') = 0)
                                                            THEN CONCAT(
                                                                CONCAT(
                                                                    NO5_3, '\n'
                                                                ), BLOCK_NO9
                                                            )
                                                            ELSE NULL
                                                        END AS NO5_4,
                                                        CASE
                                                            WHEN (NULLIF(NO1_3, '') IS NOT NULL AND INSTR(BINARY BLOCK_NO9, 'No.') = 0)
                                                            THEN CONCAT(
                                                                CONCAT(
                                                                    NO6_2, '\n'
                                                                ), BLOCK_NO9
                                                            )
                                                            ELSE NULL
                                                        END AS NO6_3,
                                                        CASE
                                                            WHEN (NULLIF(NO1_3, '') IS NOT NULL AND INSTR(BINARY BLOCK_NO9, 'No.') = 0)
                                                            THEN CONCAT(
                                                                CONCAT(
                                                                    NO7_1, '\n'
                                                                ), BLOCK_NO9
                                                            )
                                                            ELSE NULL
                                                        END AS NO7_2,
                                                        CASE
                                                            WHEN (INSTR(BINARY BLOCK_NO9, 'No.') != 0)
                                                            THEN BLOCK_NO9
                                                            ELSE NULL
                                                        END AS NO8_1
                                                    FROM(
                                                        SELECT *,
                                                            CASE
                                                                WHEN (NULLIF(NO1_3, '') IS NOT NULL AND INSTR(BINARY BLOCK_NO8, 'No.') = 0)
                                                                THEN CONCAT(
                                                                    CONCAT(
                                                                        NO1_6, '\n'
                                                                    ), BLOCK_NO8
                                                                )
                                                                ELSE NULL
                                                            END AS NO1_7,
                                                            CASE
                                                                WHEN (NULLIF(NO1_3, '') IS NOT NULL AND INSTR(BINARY BLOCK_NO8, 'No.') = 0)
                                                                THEN CONCAT(
                                                                    CONCAT(
                                                                        NO2_5, '\n'
                                                                    ), BLOCK_NO8
                                                                )
                                                                ELSE NULL
                                                            END AS NO2_6,
                                                            CASE
                                                                WHEN (NULLIF(NO1_3, '') IS NOT NULL AND INSTR(BINARY BLOCK_NO8, 'No.') = 0)
                                                                THEN CONCAT(
                                                                    CONCAT(
                                                                        NO3_4, '\n'
                                                                    ), BLOCK_NO8
                                                                )
                                                                ELSE NULL
                                                            END AS NO3_5,
                                                            CASE
                                                                WHEN (NULLIF(NO1_3, '') IS NOT NULL AND INSTR(BINARY BLOCK_NO8, 'No.') = 0)
                                                                THEN CONCAT(
                                                                    CONCAT(
                                                                        NO4_3, '\n'
                                                                    ), BLOCK_NO8
                                                                )
                                                                ELSE NULL
                                                            END AS NO4_4,
                                                            CASE
                                                                WHEN (NULLIF(NO1_3, '') IS NOT NULL AND INSTR(BINARY BLOCK_NO8, 'No.') = 0)
                                                                THEN CONCAT(
                                                                    CONCAT(
                                                                        NO5_2, '\n'
                                                                    ), BLOCK_NO8
                                                                )
                                                                ELSE NULL
                                                            END AS NO5_3,
                                                            CASE
                                                                WHEN (NULLIF(NO1_3, '') IS NOT NULL AND INSTR(BINARY BLOCK_NO8, 'No.') = 0)
                                                                THEN CONCAT(
                                                                    CONCAT(
                                                                        NO6_1, '\n'
                                                                    ), BLOCK_NO8
                                                                )
                                                                ELSE NULL
                                                            END AS NO6_2,
                                                            CASE
                                                                WHEN (INSTR(BINARY BLOCK_NO8, 'No.') != 0)
                                                                THEN BLOCK_NO8
                                                                ELSE NULL
                                                            END AS NO7_1
                                                        FROM(
                                                            SELECT *,
                                                                CASE
                                                                    WHEN (NULLIF(NO1_3, '') IS NOT NULL AND INSTR(BINARY BLOCK_NO7, 'No.') = 0)
                                                                    THEN CONCAT(
                                                                        CONCAT(
                                                                            NO1_5, '\n'
                                                                        ), BLOCK_NO7
                                                                    )
                                                                    ELSE NULL
                                                                END AS NO1_6,
                                                                CASE
                                                                    WHEN (NULLIF(NO1_3, '') IS NOT NULL AND INSTR(BINARY BLOCK_NO7, 'No.') = 0)
                                                                    THEN CONCAT(
                                                                        CONCAT(
                                                                            NO2_4, '\n'
                                                                        ), BLOCK_NO7
                                                                    )
                                                                    ELSE NULL
                                                                END AS NO2_5,
                                                                CASE
                                                                    WHEN (NULLIF(NO1_3, '') IS NOT NULL AND INSTR(BINARY BLOCK_NO7, 'No.') = 0)
                                                                    THEN CONCAT(
                                                                        CONCAT(
                                                                            NO3_3, '\n'
                                                                        ), BLOCK_NO7
                                                                    )
                                                                    ELSE NULL
                                                                END AS NO3_4,
                                                                CASE
                                                                    WHEN (NULLIF(NO1_3, '') IS NOT NULL AND INSTR(BINARY BLOCK_NO7, 'No.') = 0)
                                                                    THEN CONCAT(
                                                                        CONCAT(
                                                                            NO4_2, '\n'
                                                                        ), BLOCK_NO7
                                                                    )
                                                                    ELSE NULL
                                                                END AS NO4_3,
                                                                CASE
                                                                    WHEN (NULLIF(NO1_3, '') IS NOT NULL AND INSTR(BINARY BLOCK_NO7, 'No.') = 0)
                                                                    THEN CONCAT(
                                                                        CONCAT(
                                                                            NO5_1, '\n'
                                                                        ), BLOCK_NO7
                                                                    )
                                                                    ELSE NULL
                                                                END AS NO5_2,
                                                                CASE
                                                                    WHEN (INSTR(BINARY BLOCK_NO7, 'No.') != 0)
                                                                    THEN BLOCK_NO7
                                                                    ELSE NULL
                                                                END AS NO6_1
                                                            FROM(
                                                                SELECT *,
                                                                    CASE
                                                                        WHEN (NULLIF(NO1_3, '') IS NOT NULL AND INSTR(BINARY BLOCK_NO6, 'No.') = 0)
                                                                        THEN CONCAT(
                                                                            CONCAT(
                                                                                NO1_4, '\n'
                                                                            ), BLOCK_NO6
                                                                        )
                                                                        ELSE NULL
                                                                    END AS NO1_5,
                                                                    CASE
                                                                        WHEN (NULLIF(NO1_3, '') IS NOT NULL AND INSTR(BINARY BLOCK_NO6, 'No.') = 0)
                                                                        THEN CONCAT(
                                                                            CONCAT(
                                                                                NO2_3, '\n'
                                                                            ), BLOCK_NO6
                                                                        )
                                                                        ELSE NULL
                                                                    END AS NO2_4,
                                                                    CASE
                                                                        WHEN (NULLIF(NO1_3, '') IS NOT NULL AND INSTR(BINARY BLOCK_NO6, 'No.') = 0)
                                                                        THEN CONCAT(
                                                                            CONCAT(
                                                                                NO3_2, '\n'
                                                                            ), BLOCK_NO6
                                                                        )
                                                                        ELSE NULL
                                                                    END AS NO3_3,
                                                                    CASE
                                                                        WHEN (NULLIF(NO1_3, '') IS NOT NULL AND INSTR(BINARY BLOCK_NO6, 'No.') = 0)
                                                                        THEN CONCAT(
                                                                            CONCAT(
                                                                                NO4_1, '\n'
                                                                            ), BLOCK_NO6
                                                                        )
                                                                        ELSE NULL
                                                                    END AS NO4_2,
                                                                    CASE
                                                                        WHEN (INSTR(BINARY BLOCK_NO6, 'No.') != 0)
                                                                        THEN BLOCK_NO6
                                                                        ELSE NULL
                                                                    END AS NO5_1
                                                                FROM(
                                                                    SELECT *,
                                                                        CASE
                                                                            WHEN (NULLIF(NO1_3, '') IS NOT NULL AND INSTR(BINARY BLOCK_NO5, 'No.') = 0)
                                                                            THEN CONCAT(
                                                                                CONCAT(
                                                                                    NO1_3, '\n'
                                                                                ), BLOCK_NO5
                                                                            )
                                                                            ELSE NULL
                                                                        END AS NO1_4,
                                                                        CASE
                                                                            WHEN (NULLIF(NO1_3, '') IS NOT NULL AND INSTR(BINARY BLOCK_NO5, 'No.') = 0)
                                                                            THEN CONCAT(
                                                                                CONCAT(
                                                                                    NO2_2, '\n'
                                                                                ), BLOCK_NO5
                                                                            )
                                                                            ELSE NULL
                                                                        END AS NO2_3,
                                                                        CASE
                                                                            WHEN (NULLIF(NO1_3, '') IS NOT NULL AND INSTR(BINARY BLOCK_NO5, 'No.') = 0)
                                                                            THEN CONCAT(
                                                                                CONCAT(
                                                                                    NO3_1, '\n'
                                                                                ), BLOCK_NO5
                                                                            )
                                                                            ELSE NULL
                                                                        END AS NO3_2,
                                                                        CASE
                                                                            WHEN (INSTR(BINARY BLOCK_NO5, 'No.') != 0)
                                                                            THEN BLOCK_NO5
                                                                            ELSE NULL
                                                                        END AS NO4_1
                                                                    FROM(
                                                                        SELECT *,
                                                                            CASE
                                                                                WHEN (NULLIF(NO1_2, '') IS NOT NULL AND INSTR(BINARY BLOCK_NO4, 'No.') = 0)
                                                                                THEN CONCAT(
                                                                                    CONCAT(
                                                                                        NO1_2, '\n'
                                                                                    ), BLOCK_NO4
                                                                                )
                                                                                ELSE NULL
                                                                            END AS NO1_3,
                                                                            CASE
                                                                                WHEN (NULLIF(NO2_1, '') IS NOT NULL AND INSTR(BINARY BLOCK_NO4, 'No.') = 0)
                                                                                THEN CONCAT(
                                                                                    CONCAT(
                                                                                        NO2_1, '\n'
                                                                                    ), BLOCK_NO4
                                                                                )
                                                                                ELSE NULL
                                                                            END AS NO2_2,
                                                                            CASE
                                                                                WHEN (INSTR(BINARY BLOCK_NO4, 'No.') != 0)
                                                                                THEN BLOCK_NO4
                                                                                ELSE NULL
                                                                            END AS NO3_1
                                                                        FROM(
                                                                            SELECT *,
                                                                                CASE
                                                                                    WHEN (NULLIF(NO1_1, '') IS NOT NULL AND INSTR(BINARY BLOCK_NO3, 'No.') = 0)
                                                                                    THEN CONCAT(
                                                                                        CONCAT(
                                                                                            NO1_1, '\n'
                                                                                        ), BLOCK_NO3
                                                                                    )
                                                                                    ELSE NULL
                                                                                END AS NO1_2,
                                                                                CASE
                                                                                    WHEN (INSTR(BINARY BLOCK_NO3, 'No.') != 0)
                                                                                    THEN BLOCK_NO3
                                                                                    ELSE NULL
                                                                                END AS NO2_1
                                                                            FROM(
                                                                                SELECT *,
                                                                                    CASE
                                                                                        WHEN (INSTR(BINARY BLOCK_NO2, 'No.') != 0)
                                                                                        THEN BLOCK_NO2
                                                                                        ELSE NULL
                                                                                    END AS NO1_1
                                                                                FROM test_type1_b2
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
                            ) a
                        ) a
                    ) a
                ) a
            ) a
        ) a
    ) a
) a
*/