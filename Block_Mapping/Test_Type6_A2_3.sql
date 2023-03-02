SELECT
    원무접수ID,
    SA1,
    SA2,
    SA3,
    SA4,
    SA5,
    SA6,
    SA7,
    SA8,
    SA9,
    SA10,
    SA11,
    SA12,
    SA13,
    SA14,
    SA15,
    RE1_SLIDE_KEYS,
    RE2_SLIDE_KEYS,
    RE_SLIDE_KEYS
    /*
    SA_Else
    */
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(RE1_SLIDE_KEYS, '') IS NOT NULL)
            THEN RE1_SLIDE_KEYS
            WHEN (NULLIF(RE2_SLIDE_KEYS, '') IS NOT NULL)
            THEN RE2_SLIDE_KEYS
            ELSE NULL
        END AS RE_SLIDE_KEYS,
        CASE
            WHEN (NULLIF(SA1_1, '') IS NOT NULL)
            THEN SA1_1
            WHEN (NULLIF(SA1_2, '') IS NOT NULL)
            THEN SA1_2
            ELSE NULL
        END AS SA1,
        CASE
            WHEN (NULLIF(SA2_1, '') IS NOT NULL)
            THEN SA2_1
            WHEN (NULLIF(SA2_2, '') IS NOT NULL)
            THEN SA2_2
            ELSE NULL
        END AS SA2,
        CASE
            WHEN (NULLIF(SA3_1, '') IS NOT NULL)
            THEN SA3_1
            WHEN (NULLIF(SA3_2, '') IS NOT NULL)
            THEN SA3_2
            ELSE NULL
        END AS SA3,
        CASE
            WHEN (NULLIF(SA4_1, '') IS NOT NULL)
            THEN SA4_1
            WHEN (NULLIF(SA4_2, '') IS NOT NULL)
            THEN SA4_2
            ELSE NULL
        END AS SA4,
        CASE
            WHEN (NULLIF(SA5_1, '') IS NOT NULL)
            THEN SA5_1
            WHEN (NULLIF(SA5_2, '') IS NOT NULL)
            THEN SA5_2
            ELSE NULL
        END AS SA5,
        CASE
            WHEN (NULLIF(SA6_1, '') IS NOT NULL)
            THEN SA6_1
            WHEN (NULLIF(SA6_2, '') IS NOT NULL)
            THEN SA6_2
            ELSE NULL
        END AS SA6,
        CASE
            WHEN (NULLIF(SA7_1, '') IS NOT NULL)
            THEN SA7_1
            WHEN (NULLIF(SA7_2, '') IS NOT NULL)
            THEN SA7_2
            ELSE NULL
        END AS SA7,
        CASE
            WHEN (NULLIF(SA8_1, '') IS NOT NULL)
            THEN SA8_1
            WHEN (NULLIF(SA8_2, '') IS NOT NULL)
            THEN SA8_2
            ELSE NULL
        END AS SA8,
        CASE
            WHEN (NULLIF(SA9_1, '') IS NOT NULL)
            THEN SA9_1
            WHEN (NULLIF(SA9_2, '') IS NOT NULL)
            THEN SA9_2
            ELSE NULL
        END AS SA9,
        CASE
            WHEN (NULLIF(SA10_1, '') IS NOT NULL)
            THEN SA10_1
            WHEN (NULLIF(SA10_2, '') IS NOT NULL)
            THEN SA10_2
            ELSE NULL
        END AS SA10,
        CASE
            WHEN (NULLIF(SA11_1, '') IS NOT NULL)
            THEN SA11_1
            WHEN (NULLIF(SA11_2, '') IS NOT NULL)
            THEN SA11_2
            ELSE NULL
        END AS SA11,
        CASE
            WHEN (NULLIF(SA12_1, '') IS NOT NULL)
            THEN SA12_1
            WHEN (NULLIF(SA12_2, '') IS NOT NULL)
            THEN SA12_2
            ELSE NULL
        END AS SA12,
        CASE
            WHEN (NULLIF(SA13_1, '') IS NOT NULL)
            THEN SA13_1
            WHEN (NULLIF(SA13_2, '') IS NOT NULL)
            THEN SA13_2
            ELSE NULL
        END AS SA13,
        CASE
            WHEN (NULLIF(SA14_1, '') IS NOT NULL)
            THEN SA14_1
            WHEN (NULLIF(SA14_2, '') IS NOT NULL)
            THEN SA14_2
            ELSE NULL
        END AS SA14,
        CASE
            WHEN (NULLIF(SA15_1, '') IS NOT NULL)
            THEN SA15_1
            WHEN (NULLIF(SA15_2, '') IS NOT NULL)
            THEN SA15_2
            ELSE NULL
        END AS SA15,
        CASE
            WHEN (NULLIF(SA_Else_1, '') IS NOT NULL)
            THEN SA_Else_1
            WHEN (NULLIF(SA_Else_2, '') IS NOT NULL)
            THEN SA_Else_2
            ELSE NULL
        END AS SA_ELSE
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 1), '') IS NOT NULL AND REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 1) != ' ')
                THEN REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 1)
                WHEN (NULLIF(REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 1), '') IS NOT NULL AND REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 1) = ' ')
                THEN NULL
                ELSE REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 1)
            END AS SA1_2,
            CASE
                WHEN (NULLIF(REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 2), '') IS NOT NULL AND REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 2) != ' ')
                THEN REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 2)
                WHEN (NULLIF(REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 2), '') IS NOT NULL AND REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 2) = ' ')
                THEN NULL
                ELSE REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 2)
            END AS SA2_2,
            CASE
                WHEN (NULLIF(REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 3), '') IS NOT NULL AND REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 3) != ' ')
                THEN REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 3)
                WHEN (NULLIF(REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 3), '') IS NOT NULL AND REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 3) = ' ')
                THEN NULL
                ELSE REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 3)
            END AS SA3_2,
            CASE
                WHEN (NULLIF(REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 4), '') IS NOT NULL AND REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 4) != ' ')
                THEN REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 4)
                WHEN (NULLIF(REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 4), '') IS NOT NULL AND REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 4) = ' ')
                THEN NULL
                ELSE REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 4)
            END AS SA4_2,
            CASE
                WHEN (NULLIF(REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 5), '') IS NOT NULL AND REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 5) != ' ')
                THEN REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 5)
                WHEN (NULLIF(REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 5), '') IS NOT NULL AND REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 5) = ' ')
                THEN NULL
                ELSE REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 5)
            END AS SA5_2,
            CASE
                WHEN (NULLIF(REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 6), '') IS NOT NULL AND REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 6) != ' ')
                THEN REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 6)
                WHEN (NULLIF(REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 6), '') IS NOT NULL AND REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 6) = ' ')
                THEN NULL
                ELSE REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 6)
            END AS SA6_2,
            CASE
                WHEN (NULLIF(REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 7), '') IS NOT NULL AND REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 7) != ' ')
                THEN REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 7)
                WHEN (NULLIF(REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 7), '') IS NOT NULL AND REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 7) = ' ')
                THEN NULL
                ELSE REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 7)
            END AS SA7_2,
            CASE
                WHEN (NULLIF(REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 8), '') IS NOT NULL AND REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 8) != ' ')
                THEN REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 8)
                WHEN (NULLIF(REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 8), '') IS NOT NULL AND REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 8) = ' ')
                THEN NULL
                ELSE REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 8)
            END AS SA8_2,
            CASE
                WHEN (NULLIF(REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 9), '') IS NOT NULL AND REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 9) != ' ')
                THEN REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 9)
                WHEN (NULLIF(REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 9), '') IS NOT NULL AND REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 9) = ' ')
                THEN NULL
                ELSE REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 9)
            END AS SA9_2,
            CASE
                WHEN (NULLIF(REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 10), '') IS NOT NULL AND REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 10) != ' ')
                THEN REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 10)
                WHEN (NULLIF(REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 10), '') IS NOT NULL AND REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 10) = ' ')
                THEN NULL
                ELSE REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 10)
            END AS SA10_2,
            CASE
                WHEN (NULLIF(REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 11), '') IS NOT NULL AND REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 11) != ' ')
                THEN REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 11)
                WHEN (NULLIF(REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 11), '') IS NOT NULL AND REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 11) = ' ')
                THEN NULL
                ELSE REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 11)
            END AS SA11_2,
            CASE
                WHEN (NULLIF(REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 12), '') IS NOT NULL AND REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 12) != ' ')
                THEN REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 12)
                WHEN (NULLIF(REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 12), '') IS NOT NULL AND REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 12) = ' ')
                THEN NULL
                ELSE REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 12)
            END AS SA12_2,
            CASE
                WHEN (NULLIF(REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 13), '') IS NOT NULL AND REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 13) != ' ')
                THEN REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 13)
                WHEN (NULLIF(REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 13), '') IS NOT NULL AND REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 13) = ' ')
                THEN NULL
                ELSE REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 13)
            END AS SA13_2,
            CASE
                WHEN (NULLIF(REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 14), '') IS NOT NULL AND REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 14) != ' ')
                THEN REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 14)
                WHEN (NULLIF(REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 14), '') IS NOT NULL AND REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 14) = ' ')
                THEN NULL
                ELSE REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 14)
            END AS SA14_2,
            CASE
                WHEN (NULLIF(REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 15), '') IS NOT NULL AND REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 15) != ' ')
                THEN REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 15)
                WHEN (NULLIF(REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 15), '') IS NOT NULL AND REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 15) = ' ')
                THEN NULL
                ELSE REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^\n]+', 1, 15)
            END AS SA15_2,
            CASE
                WHEN RIGHT(RE2_SLIDE_KEYS, 1) != ';'
                THEN REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^;]*$')
                WHEN RIGHT(RE2_SLIDE_KEYS, 1) = ';'
                THEN CONCAT(REGEXP_SUBSTR(RE2_SLIDE_KEYS, '[^;]*$'), '+')
            END AS SA_Else_2
        FROM(
            SELECT *,
                CASE
                    WHEN (NULLIF(REGEXP_SUBSTR(RE1_SLIDE_KEYS, '[^;]+', 1, 1), '') IS NOT NULL)
                    THEN REGEXP_SUBSTR(RE1_SLIDE_KEYS, '[^;]+', 1, 1)
                    WHEN (NULLIF(REGEXP_SUBSTR(RE1_SLIDE_KEYS, '[^;]+', 1, 1), '') IS NOT NULL)
                    THEN REGEXP_SUBSTR(RE1_SLIDE_KEYS, '[^;]+', 1, 1)
                    ELSE NULL
                END AS SA1_1,
                CASE
                    WHEN (NULLIF(REGEXP_SUBSTR(RE1_SLIDE_KEYS, '[^;]+', 1, 2), '') IS NOT NULL)
                    THEN REGEXP_SUBSTR(RE1_SLIDE_KEYS, '[^;]+', 1, 2)
                    ELSE NULL
                END AS SA2_1,
                CASE
                    WHEN (NULLIF(REGEXP_SUBSTR(RE1_SLIDE_KEYS, '[^;]+', 1, 3), '') IS NOT NULL)
                    THEN REGEXP_SUBSTR(RE1_SLIDE_KEYS, '[^;]+', 1, 3)
                    ELSE NULL
                END AS SA3_1,
                CASE
                    WHEN (NULLIF(REGEXP_SUBSTR(RE1_SLIDE_KEYS, '[^;]+', 1, 4), '') IS NOT NULL)
                    THEN REGEXP_SUBSTR(RE1_SLIDE_KEYS, '[^;]+', 1, 4)
                    ELSE NULL
                END AS SA4_1,
                CASE
                    WHEN (NULLIF(REGEXP_SUBSTR(RE1_SLIDE_KEYS, '[^;]+', 1, 5), '') IS NOT NULL)
                    THEN REGEXP_SUBSTR(RE1_SLIDE_KEYS, '[^;]+', 1, 5)
                    ELSE NULL
                END AS SA5_1,
                CASE
                    WHEN (NULLIF(REGEXP_SUBSTR(RE1_SLIDE_KEYS, '[^;]+', 1, 6), '') IS NOT NULL)
                    THEN REGEXP_SUBSTR(RE1_SLIDE_KEYS, '[^;]+', 1, 6)
                    ELSE NULL
                END AS SA6_1,
                CASE
                    WHEN (NULLIF(REGEXP_SUBSTR(RE1_SLIDE_KEYS, '[^;]+', 1, 7), '') IS NOT NULL)
                    THEN REGEXP_SUBSTR(RE1_SLIDE_KEYS, '[^;]+', 1, 7)
                    ELSE NULL
                END AS SA7_1,
                CASE
                    WHEN (NULLIF(REGEXP_SUBSTR(RE1_SLIDE_KEYS, '[^;]+', 1, 8), '') IS NOT NULL)
                    THEN REGEXP_SUBSTR(RE1_SLIDE_KEYS, '[^;]+', 1, 8)
                    ELSE NULL
                END AS SA8_1,
                CASE
                    WHEN (NULLIF(REGEXP_SUBSTR(RE1_SLIDE_KEYS, '[^;]+', 1, 9), '') IS NOT NULL)
                    THEN REGEXP_SUBSTR(RE1_SLIDE_KEYS, '[^;]+', 1, 9)
                    ELSE NULL
                END AS SA9_1,
                CASE
                    WHEN (NULLIF(REGEXP_SUBSTR(RE1_SLIDE_KEYS, '[^;]+', 1, 10), '') IS NOT NULL)
                    THEN REGEXP_SUBSTR(RE1_SLIDE_KEYS, '[^;]+', 1, 10)
                    ELSE NULL
                END AS SA10_1,
                CASE
                    WHEN (NULLIF(REGEXP_SUBSTR(RE1_SLIDE_KEYS, '[^;]+', 1, 11), '') IS NOT NULL)
                    THEN REGEXP_SUBSTR(RE1_SLIDE_KEYS, '[^;]+', 1, 11)
                    ELSE NULL
                END AS SA11_1,
                CASE
                    WHEN (NULLIF(REGEXP_SUBSTR(RE1_SLIDE_KEYS, '[^;]+', 1, 12), '') IS NOT NULL)
                    THEN REGEXP_SUBSTR(RE1_SLIDE_KEYS, '[^;]+', 1, 12)
                    ELSE NULL
                END AS SA12_1,
                CASE
                    WHEN (NULLIF(REGEXP_SUBSTR(RE1_SLIDE_KEYS, '[^;]+', 1, 13), '') IS NOT NULL)
                    THEN REGEXP_SUBSTR(RE1_SLIDE_KEYS, '[^;]+', 1, 13)
                    ELSE NULL
                END AS SA13_1,
                CASE
                    WHEN (NULLIF(REGEXP_SUBSTR(RE1_SLIDE_KEYS, '[^;]+', 1, 14), '') IS NOT NULL)
                    THEN REGEXP_SUBSTR(RE1_SLIDE_KEYS, '[^;]+', 1, 14)
                    ELSE NULL
                END AS SA14_1,
                CASE
                    WHEN (NULLIF(REGEXP_SUBSTR(RE1_SLIDE_KEYS, '[^;]+', 1, 15), '') IS NOT NULL)
                    THEN REGEXP_SUBSTR(RE1_SLIDE_KEYS, '[^;]+', 1, 15)
                    ELSE NULL
                END AS SA15_1,
                CASE
                    WHEN RIGHT(RE1_SLIDE_KEYS, 1) != ';'
                    THEN REGEXP_SUBSTR(RE1_SLIDE_KEYS, '[^;]*$')
                    WHEN RIGHT(RE1_SLIDE_KEYS, 1) = ';'
                    THEN CONCAT(REGEXP_SUBSTR(RE1_SLIDE_KEYS, '[^;]*$'), '+')
                END AS SA_Else_1
            FROM test_type6_a2_2
        ) a
    ) a
) a