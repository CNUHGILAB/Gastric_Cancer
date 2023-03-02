SELECT
    원무접수ID,
    환자번호,
    SAMPLE_BLOCK,
    RE_NO1,
    RE_NO,
    RE_NX
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(RE_NO, '') IS NOT NULL)
            THEN REPLACE(SAMPLE_BLOCK, RE_NO, '')
            WHEN (NULLIF(RE_NX, '') IS NOT NULL)
            THEN REPLACE(SAMPLE_BLOCK, RE_NX, '')
            ELSE NULL
        END AS RE_NO1
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(NO2_X, '') IS NOT NULL AND INSTR(BINARY NO2_X, 'No.3;') = 0 AND INSTR(BINARY NO2_X, 'No.3, ') != 0)
                THEN REGEXP_SUBSTR(NO2_X, '[^\n]+', 1, 11)
                WHEN (NULLIF(NO2_X, '') IS NOT NULL AND REGEXP_INSTR(BINARY NO2_X, 'No.3,[0-9];') != 0)
                THEN SUBSTR(BINARY NO2_X, INSTR(BINARY NO2_X, 'No.3'))
                ELSE RE_NX_1
            END AS RE_NX
        FROM(
            SELECT *,
                CASE
                    WHEN (NULLIF(NO2_O, '') IS NOT NULL AND INSTR(BINARY NO1, 'No.') = 0)
                    THEN SUBSTR(BINARY NO2_O, INSTR(BINARY NO2_O, 'No.2'))
                    WHEN (NULLIF(NO2_O, '') IS NOT NULL AND INSTR(BINARY NO1, 'No.') != 0)
                    THEN SUBSTR(BINARY NO2_O, INSTR(BINARY NO2_O, 'No.3'))
                    WHEN (NULLIF(NO2_X, '') IS NOT NULL AND INSTR(BINARY NO2_X, 'No.3;') != 0)
                    THEN SUBSTR(BINARY NO2_X, INSTR(BINARY NO2_X, 'No.3'))
                    ELSE NULL
                END AS RE_NO,
                CASE
                    WHEN (NULLIF(NO2_X, '') IS NOT NULL AND INSTR(BINARY NO2_X, 'No.3;') != 0)
                    THEN SUBSTR(BINARY NO2_X, INSTR(BINARY NO2_X, 'No.3'))
                    ELSE NULL
                END AS RE_NX_1
            FROM(
                SELECT *,
                    CASE
                        WHEN (NULLIF(NO2_O, '') IS NOT NULL AND INSTR(BINARY NO2_O, 'No.1') != 0)
                        THEN SUBSTRING_INDEX(SUBSTRING_INDEX(BINARY NO2_O, 'No.2', 1), 'No.1', -1)
                        WHEN (NULLIF(NO2_O, '') IS NOT NULL AND INSTR(BINARY NO2_O, 'No. 1') != 0)
                        THEN SUBSTRING_INDEX(SUBSTRING_INDEX(BINARY NO2_O, 'No.2', 1), 'No. 1', -1)
                        ELSE NULL
                    END AS NO1
                FROM(
                    SELECT *,
                        CASE
                            WHEN (INSTR(BINARY SAMPLE_BLOCK, 'No.2') != 0)
                            THEN SAMPLE_BLOCK
                            ELSE NULL
                        END AS NO2_O,
                        CASE
                            WHEN (INSTR(BINARY SAMPLE_BLOCK, 'No.2') = 0)
                            THEN SAMPLE_BLOCK
                            ELSE NULL
                        END AS NO2_X
                    FROM test_type1_block_01
                ) a
            ) a
        ) a
    ) a
) a
/*
SELECT
    원무접수ID,
    환자번호,
    SAMPLE_BLOCK,
    BLOCK_NO1
    BLOCK_NO2,
    BLOCK_NO3,
    BLOCK_NO4,
    BLOCK_NO5,
    BLOCK_NO6,
    BLOCK_NO7,
    BLOCK_NO8,
    BLOCK_NO9,
    BLOCK_NO10,
    BLOCK_NO11,
    BLOCK_NO12,
    BLOCK_NO13,
    BLOCK_NO14,
    BLOCK_NO15,
    BLOCK_NO16,
    BLOCK_NO17,
    BLOCK_NO18,
    BLOCK_NO19,
    BLOCK_NO20,
    BLOCK_NO21,
    BLOCK_NO22,
    BLOCK_NO23,
    BLOCK_NO24,
    BLOCK_NO25,
    BLOCK_NO26,
    BLOCK_NO27,
    BLOCK_NO28,
    BLOCK_NO29,
    BLOCK_NO30,
    BLOCK_NO31,
    BLOCK_NO32,
    BLOCK_NO33,
    BLOCK_NO34,
    BLOCK_NO35,
    BLOCK_NO36,
    BLOCK_NO37,
    BLOCK_NO38,
    BLOCK_NO39,
    BLOCK_NO40,
    BLOCK_NO41,
    BLOCK_NO42
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^No.]+', 1, 1), '') IS NOT NULL)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^No.]+', 1, 5)
            #WHEN (INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 1), 'No.') != 0 AND INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 2), 'No.') != 0)
            #THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 1)
            ELSE NULL
        END AS BLOCK_NO1,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 2), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 2), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 2)
            ELSE NULL
        END AS BLOCK_NO2,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 3), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 3), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 3)
            ELSE NULL
        END AS BLOCK_NO3,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 4), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 4), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 4)
            ELSE NULL
        END AS BLOCK_NO4,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 5), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 5), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 5)
            ELSE NULL
        END AS BLOCK_NO5,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 6), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 6), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 6)
            ELSE NULL
        END AS BLOCK_NO6,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 7), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 7), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 7)
            ELSE NULL
        END AS BLOCK_NO7,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 8), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 8), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 8)
            ELSE NULL
        END AS BLOCK_NO8,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 9), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 9), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 9)
            ELSE NULL
        END AS BLOCK_NO9,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 10), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 10), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 10)
            ELSE NULL
        END AS BLOCK_NO10,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 11), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 11), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 11)
            ELSE NULL
        END AS BLOCK_NO11,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 12), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 12), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 12)
            ELSE NULL
        END AS BLOCK_NO12,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 13), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 13), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 13)
            ELSE NULL
        END AS BLOCK_NO13,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 14), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 14), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 14)
            ELSE NULL
        END AS BLOCK_NO14,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 15), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 15), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 15)
            ELSE NULL
        END AS BLOCK_NO15,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 16), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 16), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 16)
            ELSE NULL
        END AS BLOCK_NO16,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 17), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 17), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 17)
            ELSE NULL
        END AS BLOCK_NO17,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 18), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 18), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 18)
            ELSE NULL
        END AS BLOCK_NO18,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 19), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 19), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 19)
            ELSE NULL
        END AS BLOCK_NO19,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 20), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 20), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 20)
            ELSE NULL
        END AS BLOCK_NO20,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 21), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 21), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 21)
            ELSE NULL
        END AS BLOCK_NO21,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 22), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 22), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 22)
            ELSE NULL
        END AS BLOCK_NO22,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 23), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 23), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 23)
            ELSE NULL
        END AS BLOCK_NO23,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 24), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 24), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 24)
            ELSE NULL
        END AS BLOCK_NO24,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 25), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 25), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 25)
            ELSE NULL
        END AS BLOCK_NO25,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 26), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 26), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 26)
            ELSE NULL
        END AS BLOCK_NO26,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 27), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 27), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 27)
            ELSE NULL
        END AS BLOCK_NO27,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 28), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 28), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 28)
            ELSE NULL
        END AS BLOCK_NO28,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 29), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 29), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 29)
            ELSE NULL
        END AS BLOCK_NO29,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 30), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 30), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 30)
            ELSE NULL
        END AS BLOCK_NO30,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 31), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 31), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 31)
            ELSE NULL
        END AS BLOCK_NO31,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 32), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 32), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 32)
            ELSE NULL
        END AS BLOCK_NO32,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 33), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 33), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 33)
            ELSE NULL
        END AS BLOCK_NO33,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 34), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 34), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 34)
            ELSE NULL
        END AS BLOCK_NO34,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 35), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 35), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 35)
            ELSE NULL
        END AS BLOCK_NO35,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 36), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 36), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 36)
            ELSE NULL
        END AS BLOCK_NO36,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 37), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 37), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 37)
            ELSE NULL
        END AS BLOCK_NO37,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 38), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 38), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 38)
            ELSE NULL
        END AS BLOCK_NO38,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 39), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 39), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 39)
            ELSE NULL
        END AS BLOCK_NO39,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 40), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 40), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 40)
            ELSE NULL
        END AS BLOCK_NO40,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 41), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 41), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 41)
            ELSE NULL
        END AS BLOCK_NO41,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 42), '') IS NOT NULL AND REGEXP_INSTR(REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 42), '[A-z]+') != 0)
            THEN REGEXP_SUBSTR(BINARY SAMPLE_BLOCK, '[^\n]+', 1, 42)
            ELSE NULL
        END AS BLOCK_NO42
    FROM test_type1_block_01
) a
*/