#Slide keys 전처리 과정 2 + 항목별로 구분하기
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
    Slide_keys_Re,
    Re_Paraffin_block_keys
FROM(
    SELECT *,
        CASE
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) = 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 2) != REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN CONCAT(
                CONCAT(
                    REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 2), ','
                ), REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 3)
            )
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) = 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 2) = REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 2)
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) != 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 1) != REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN CONCAT(
                CONCAT(
                    REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 1), ','
                ), REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 2)
            )
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) != 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 1) = REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 1)
        END AS SA1,
        CASE
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) = 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 4) != REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN CONCAT(
                CONCAT(
                    REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 4), ','
                ), REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 5)
            )
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) = 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 2) = REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 4)
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) != 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 3) != REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN CONCAT(
                CONCAT(
                    REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 3), ','
                ), REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 4)
            )
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) != 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 3) = REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 3)
        END AS SA2,
        CASE
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) = 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 6) != REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN CONCAT(
                CONCAT(
                    REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 6), ','
                ), REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 7)
            )
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) = 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 6) = REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 6)
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) != 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 5) != REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN CONCAT(
                CONCAT(
                    REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 5), ','
                ), REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 6)
            )
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) != 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 5) = REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 5)
        END AS SA3,
        CASE
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) = 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 8) != REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN CONCAT(
                CONCAT(
                    REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 8), ','
                ), REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 9)
            )
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) = 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 8) = REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 8)
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) != 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 7) != REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN CONCAT(
                CONCAT(
                    REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 7), ','
                ), REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 8)
            )
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) != 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 7) = REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 7)
        END AS SA4,
        CASE
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) = 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 10) != REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN CONCAT(
                CONCAT(
                    REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 10), ','
                ), REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 11)
            )
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) = 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 10) = REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 10)
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) != 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 9) != REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN CONCAT(
                CONCAT(
                    REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 9), ','
                ), REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 10)
            )
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) != 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 9) = REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 9)
        END AS SA5,
        CASE
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) = 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 12) != REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN CONCAT(
                CONCAT(
                    REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 12), ','
                ), REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 13)
            )
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) = 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 12) = REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 12)
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) != 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 11) != REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN CONCAT(
                CONCAT(
                    REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 11), ','
                ), REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 12)
            )
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) != 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 11) = REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 11)
        END AS SA6,
        CASE
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) = 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 14) != REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN CONCAT(
                CONCAT(
                    REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 14), ','
                ), REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 15)
            )
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) = 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 14) = REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 14)
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) != 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 13) != REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN CONCAT(
                CONCAT(
                    REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 13), ','
                ), REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 14)
            )
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) != 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 13) = REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 13)
        END AS SA7,
        CASE
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) = 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 16) != REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN CONCAT(
                CONCAT(
                    REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 16), ','
                ), REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 17)
            )
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) = 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 16) = REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 16)
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) != 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 15) != REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN CONCAT(
                CONCAT(
                    REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 15), ','
                ), REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 16)
            )
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) != 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 15) = REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 15)
        END AS SA8,
        CASE
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) = 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 18) != REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN CONCAT(
                CONCAT(
                    REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 18), ','
                ), REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 19)
            )
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) = 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 18) = REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 18)
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) != 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 17) != REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN CONCAT(
                CONCAT(
                    REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 17), ','
                ), REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 18)
            )
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) != 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 17) = REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 17)
        END AS SA9,
        CASE
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) = 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 20) != REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN CONCAT(
                CONCAT(
                    REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 20), ','
                ), REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 21)
            )
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) = 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 20) = REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 20)
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) != 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 19) != REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN CONCAT(
                CONCAT(
                    REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 19), ','
                ), REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 20)
            )
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) != 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 19) = REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 19)
        END AS SA10,
        CASE
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) = 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 22) != REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN CONCAT(
                CONCAT(
                    REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 22), ','
                ), REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 23)
            )
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) = 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 22) = REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 22)
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) != 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 21) != REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN CONCAT(
                CONCAT(
                    REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 21), ','
                ), REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 22)
            )
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) != 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 21) = REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 21)
        END AS SA11,
        CASE
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) = 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 24) != REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN CONCAT(
                CONCAT(
                    REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 24), ','
                ), REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 25)
            )
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) = 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 24) = REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 24)
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) != 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 23) != REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN CONCAT(
                CONCAT(
                    REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 23), ','
                ), REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 24)
            )
            WHEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 1, 1) != 's' AND REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 23) = REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            THEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]+', 2, 23)
        END AS SA12,
        CASE
            WHEN RIGHT(Slide_keys_Re, 1) != ';'
            THEN REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$')
            WHEN RIGHT(Slide_keys_Re, 1) = ';'
            THEN CONCAT(REGEXP_SUBSTR(Slide_keys_Re, '[^;]*$'), '+')
        END AS SA_Else
    FROM(
        SELECT *,
            CASE
                WHEN INSTR(Re_Slide_keys_2, '(Park;MI)') != 0
                THEN REPLACE(Re_Slide_keys_2, SUBSTR(Re_Slide_keys_2, INSTR(Re_Slide_keys_2, '(Park;MI)')), '')
                WHEN INSTR(Re_Slide_keys_2, '(Kim;HS)') != 0
                THEN REPLACE(Re_Slide_keys_2, SUBSTR(Re_Slide_keys_2, INSTR(Re_Slide_keys_2, '(Kim;HS)')), '')
                WHEN INSTR(Re_Slide_keys_2, '(Kim;YB)') != 0
                THEN REPLACE(Re_Slide_keys_2, SUBSTR(Re_Slide_keys_2, INSTR(Re_Slide_keys_2, '(Kim;YB)')), '')
                WHEN INSTR(Re_Slide_keys_2, '(Song;KS)') != 0
                THEN REPLACE(Re_Slide_keys_2, SUBSTR(Re_Slide_keys_2, INSTR(Re_Slide_keys_2, '(Song;KS)')), '')
                WHEN INSTR(Re_Slide_keys_2, '(Choi;SY)') != 0
                THEN REPLACE(Re_Slide_keys_2, SUBSTR(Re_Slide_keys_2, INSTR(Re_Slide_keys_2, '(Choi;SY)')), '')
                ELSE Re_Slide_keys_2
            END AS Slide_keys_Re
        FROM(
            SELECT *,
                CASE
                    WHEN REGEXP_INSTR(Re_Slide_keys_1, ';no2;') != 0
                    THEN REPLACE(Re_Slide_keys_1, SUBSTR(Re_Slide_keys_1, INSTR(Re_Slide_keys_1, ';no2;')), '')
                    ELSE Re_Slide_keys_1
                END AS Re_Slide_keys_2
            FROM(
                SELECT *,
                    CASE
                        WHEN INSTR(Re_Slide_keys, ';No3;') != 0
                        THEN REPLACE(Re_Slide_keys, SUBSTR(Re_Slide_keys, INSTR(Re_Slide_keys, ';No3;')), '')
                        ELSE Re_Slide_keys
                    END AS Re_Slide_keys_1
                FROM test_type1_a2_1
            ) a
        ) a
    ) a
) a