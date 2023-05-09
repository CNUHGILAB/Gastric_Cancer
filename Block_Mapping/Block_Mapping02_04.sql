SELECT
    원무접수ID,
    환자번호,
    ENG_TEST1,
    ENG_TEST2,
    ENG_TEST3,
    ENG_TEST4,
    ENG_TEST5,
    ENG_TEST6,
    ENG_TEST7,
    ENG_TEST8,
    ENG_TEST9,
    ENG_TEST10,
    ENG_TEST11,
    ENG_TEST12,
    ENG_TEST13,
    NUM_TEST1,
    NUM_TEST2,
    NUM_TEST3,
    NUM_TEST4,
    NUM_TEST5,
    NUM_TEST6,
    NUM_TEST7,
    NUM_TEST8,
    NUM_TEST9,
    NUM_TEST10,
    NUM_TEST11,
    NUM_TEST12,
    NUM_TEST13,
    ENG_BLOCK_ELSE,
    NUM_BLOCK_ELSE
FROM(
    SELECT *,
        CASE 
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 1), '(A|RG)[0-9]+') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 1), '[0-9]+(A|RG)') = 0
            THEN REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 1)
            ELSE NULL
        END AS ENG_TEST1,
        CASE 
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 2), '(A|RG)[0-9]+') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 2), '[0-9]+(A|RG)') = 0
            THEN REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 2)
            ELSE NULL
        END AS ENG_TEST2,
        CASE 
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 3), '(A|RG)[0-9]+') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 3), '[0-9]+(A|RG)') = 0
            THEN REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 3)
            ELSE NULL
        END AS ENG_TEST3,
        CASE 
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 4), '(A|RG)[0-9]+') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 4), '[0-9]+(A|RG)') = 0
            THEN REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 4)
            ELSE NULL
        END AS ENG_TEST4,
        CASE 
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 5), '(A|RG)[0-9]+') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 5), '[0-9]+(A|RG)') = 0
            THEN REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 5)
            ELSE NULL
        END AS ENG_TEST5,
        CASE
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 6), '(A|RG)[0-9]+') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 6), '[0-9]+(A|RG)') = 0
            THEN REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 6)
            ELSE NULL
        END AS ENG_TEST6,
        CASE 
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 7), '(A|RG)[0-9]+') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 7), '[0-9]+(A|RG)') = 0
            THEN REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 7)
            ELSE NULL
        END AS ENG_TEST7,
        CASE 
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 8), '(A|RG)[0-9]+') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 8), '[0-9]+(A|RG)') = 0
            THEN REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 8)
            ELSE NULL
        END AS ENG_TEST8,
        CASE 
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 9), '(A|RG)[0-9]+') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 9), '[0-9]+(A|RG)') = 0
            THEN REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 9)
            ELSE NULL
        END AS ENG_TEST9,
        CASE 
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 10), '(A|RG)[0-9]+') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 10), '[0-9]+(A|RG)') = 0
            THEN REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 10)
            ELSE NULL
        END AS ENG_TEST10,
        CASE 
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 11), '(A|RG)[0-9]+') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 11), '[0-9]+(A|RG)') = 0
            THEN REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 11)
            ELSE NULL
        END AS ENG_TEST11,
        CASE 
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 12), '(A|RG)[0-9]+') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 12), '[0-9]+(A|RG)') = 0
            THEN REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 12)
            ELSE NULL
        END AS ENG_TEST12,
        CASE 
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 13), '(A|RG)[0-9]+') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 13), '[0-9]+(A|RG)') = 0
            THEN REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 13)
            ELSE NULL
        END AS ENG_TEST13,
        CASE 
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 1), '(A|RG)[0-9]+') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 1), '[0-9]+(A|RG)') = 0
            THEN REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 1)
            ELSE NULL
        END AS NUM_TEST1,
        CASE 
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 2), '(A|RG)[0-9]+') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 2), '[0-9]+(A|RG)') = 0
            THEN REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 2)
            ELSE NULL
        END AS NUM_TEST2,
        CASE 
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 3), '(A|RG)[0-9]+') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 3), '[0-9]+(A|RG)') = 0
            THEN REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 3)
            ELSE NULL
        END AS NUM_TEST3,
        CASE 
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 4), '(A|RG)[0-9]+') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 4), '[0-9]+(A|RG)') = 0
            THEN REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 4)
            ELSE NULL
        END AS NUM_TEST4,
        CASE 
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 5), '(A|RG)[0-9]+') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 5), '[0-9]+(A|RG)') = 0
            THEN REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 5)
            ELSE NULL
        END AS NUM_TEST5,
        CASE
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 6), '(A|RG)[0-9]+') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 6), '[0-9]+(A|RG)') = 0
            THEN REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 6)
            ELSE NULL
        END AS NUM_TEST6,
        CASE 
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 7), '(A|RG)[0-9]+') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 7), '[0-9]+(A|RG)') = 0
            THEN REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 7)
            ELSE NULL
        END AS NUM_TEST7,
        CASE 
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 8), '(A|RG)[0-9]+') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 8), '[0-9]+(A|RG)') = 0
            THEN REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 8)
            ELSE NULL
        END AS NUM_TEST8,
        CASE 
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 9), '(A|RG)[0-9]+') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 9), '[0-9]+(A|RG)') = 0
            THEN REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 9)
            ELSE NULL
        END AS NUM_TEST9,
        CASE 
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 10), '(A|RG)[0-9]+') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 10), '[0-9]+(A|RG)') = 0
            THEN REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 10)
            ELSE NULL
        END AS NUM_TEST10,
        CASE 
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 11), '(A|RG)[0-9]+') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 11), '[0-9]+(A|RG)') = 0
            THEN REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 11)
            ELSE NULL
        END AS NUM_TEST11,
        CASE 
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 12), '(A|RG)[0-9]+') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 12), '[0-9]+(A|RG)') = 0
            THEN REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 12)
            ELSE NULL
        END AS NUM_TEST12,
        CASE 
            WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 13), '(A|RG)[0-9]+') != 0 AND REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 13), '[0-9]+(A|RG)') = 0
            THEN REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 13)
            ELSE NULL
        END AS NUM_TEST13
    FROM(
        SELECT *,
            CASE 
                WHEN (NULLIF(ENG_BLOCK, '') IS NOT NULL AND NULLIF(ENG_BLOCK_ELSE, '') IS NULL)
                THEN ENG_BLOCK
                ELSE NULL
            END AS RE_ENG_BLOCK,
            CASE 
                WHEN (NULLIF(NUM_BLOCK, '') IS NOT NULL AND NULLIF(NUM_BLOCK_ELSE, '') IS NULL)
                THEN NUM_BLOCK
                ELSE NULL
            END AS RE_NUM_BLOCK
        FROM(
            SELECT *,
                CASE
                    WHEN (REGEXP_INSTR(ENG_BLOCK, '(A|RG)[0-9]+[|,|.|;| ][A-z]+[,|.|;| ]') != 0
                        OR REGEXP_INSTR(ENG_BLOCK, '(A|RG)[0-9]+[|,|.|;| ][|,|.|;| ][A-z]+[,|.|;| ]') != 0
                        OR REGEXP_INSTR(ENG_BLOCK, '[-][0-9]+[|,|.|;| ][A-z]+[,|.|;| ]') != 0
                        OR REGEXP_INSTR(ENG_BLOCK, '[-][0-9]+[|,|.|;| ][|,|.|;| ][A-z]+[,|.|;| ]') != 0)
                    THEN REGEXP_REPLACE(
                        REPLACE(
                            ENG_BLOCK, '\n', ' '
                        ), ' {2,}', ' '
                    )
                    WHEN (REGEXP_INSTR(ENG_BLOCK, '(A|RG)[0-9]+[)][|,|.|;| ][A-z]+[,|.|;| ]') != 0
                        OR REGEXP_INSTR(ENG_BLOCK, '(A|RG)[0-9]+[)][|,|.|;| ][|,|.|;| ][A-z]+[,|.|;| ]') != 0)
                    THEN ENG_BLOCK
                    ELSE NULL
                END AS ENG_BLOCK_ELSE,
                CASE
                    WHEN (REGEXP_INSTR(NUM_BLOCK, '[A-z]+[|,|.|;| ](A|RG)[0-9]+[,|.|;| ]') != 0
                        OR REGEXP_INSTR(NUM_BLOCK, '[A-z]+[|,|.|;| ][|,|.|;| ](A|RG)[0-9]+[,|.|;| ]') != 0
                        OR REGEXP_INSTR(NUM_BLOCK, '[A-z]+[|,|.|;| ](A|RG)[0-9]+[-][0-9]+[,|.|;| ]') != 0
                        OR REGEXP_INSTR(NUM_BLOCK, '[A-z]+[|,|.|;| ][|,|.|;| ](A|RG)[0-9]+[-][0-9]+[,|.|;| ]') != 0
                        OR REGEXP_INSTR(NUM_BLOCK, '[A-z]+[|,|.|;| ](A|RG)[0-9]+[-](A|RG)[0-9]+[,|.|;| ]') != 0
                        OR REGEXP_INSTR(NUM_BLOCK, '[A-z]+[|,|.|;| ][|,|.|;| ](A|RG)[0-9]+[-](A|RG)[0-9]+[,|.|;| ]') != 0)
                    THEN REGEXP_REPLACE(
                        REPLACE(
                            NUM_BLOCK, '\n', ' '
                        ), ' {2,}', ' '
                    )
                    WHEN (REGEXP_INSTR(NUM_BLOCK, '[A-z]+[|,|.|;| ][(](A|RG)[0-9]+[,|-|)]') != 0
                        OR REGEXP_INSTR(NUM_BLOCK, '[A-z]+[|,|.|;| ][|,|.|;| ][(](A|RG)[0-9]+[,|-|)]') != 0)
                    THEN NUM_BLOCK
                    ELSE NULL
                END AS NUM_BLOCK_ELSE
            FROM(
                SELECT *,
                    CASE 
                        WHEN REGEXP_INSTR(BLOCK_SLIDE1, '^ [A-z]+') != 0
                            AND REGEXP_INSTR(BLOCK_SLIDE1, '^ (A|RG)[0-9]+') = 0
                        THEN BLOCK_SLIDE1
                        WHEN REGEXP_INSTR(BLOCK_SLIDE2, '^ [A-z]+ [(](A|RG)[0-9]+') != 0
                        THEN BLOCK_SLIDE2
                        WHEN REGEXP_INSTR(BLOCK_PARAFFIN1, '^ [A-z]+') != 0
                            AND REGEXP_INSTR(BLOCK_PARAFFIN1, '^ (A|RG)[0-9]+') = 0
                        THEN BLOCK_PARAFFIN1
                        WHEN REGEXP_INSTR(BLOCK_PARAFFIN2, '^ [A-z]+ [(](A|RG)[0-9]+') != 0
                        THEN BLOCK_PARAFFIN2
                        ELSE NULL
                    END AS ENG_BLOCK,
                    CASE 
                        WHEN REGEXP_INSTR(BLOCK_SLIDE1, '^ (A|RG)[0-9]+') != 0
                        THEN BLOCK_SLIDE1
                        WHEN REGEXP_INSTR(BLOCK_SLIDE2, '^ (A|RG)[0-9]+[)] [A-z]+[,|.|;| ]') != 0
                        THEN BLOCK_SLIDE2
                        WHEN REGEXP_INSTR(BLOCK_PARAFFIN1, '^ (A|RG)[0-9]+') != 0
                        THEN BLOCK_PARAFFIN1
                        WHEN REGEXP_INSTR(BLOCK_PARAFFIN2, '^ (A|RG)[0-9]+[)] [A-z]+[,|.|;| ]') != 0
                        THEN BLOCK_PARAFFIN2
                        ELSE NULL
                    END AS NUM_BLOCK
                FROM(
                    SELECT *,
                        CASE 
                            WHEN NULLIF(SLIDE_VALUE_A1, '') IS NOT NULL
                            THEN SUBSTR(SLIDE_VALUE_A1, REGEXP_INSTR(SLIDE_VALUE_A1, '[S|s]lide key'))
                            ELSE NULL
                        END AS BLOCK_SLIDE1,
                        CASE 
                            WHEN NULLIF(SLIDE_VALUE_A2, '') IS NOT NULL
                            THEN REGEXP_REPLACE(
                                REGEXP_REPLACE(
                                    REGEXP_REPLACE(
                                        REGEXP_REPLACE(
                                            SUBSTR(SLIDE_VALUE_A2, REGEXP_INSTR(SLIDE_VALUE_A2, '[S|s]lide key')), '[S|s]lide keys;', ' '
                                        ), '[S|s]lide key;', ' '
                                    ), '\n', ' '
                                ), ' {2,}', ''
                            )
                            ELSE NULL
                        END AS BLOCK_SLIDE2,
                        CASE 
                            WHEN NULLIF(PARAFFIN_VALUE_A1, '') IS NOT NULL
                            THEN REGEXP_REPLACE(
                                REGEXP_REPLACE(
                                    REGEXP_REPLACE(
                                        SUBSTR(PARAFFIN_VALUE_A1, REGEXP_INSTR(PARAFFIN_VALUE_A1, '[P|p]araffin block key')), '[P|p]araffin block keys;', ' '
                                    ), '[P|p]araffin block key;', ' '
                                ), ' {2,}', ' '
                            )
                            ELSE NULL
                        END AS BLOCK_PARAFFIN1,
                        CASE 
                            WHEN NULLIF(PARAFFIN_VALUE_A2, '') IS NOT NULL
                            THEN REGEXP_REPLACE(
                                REGEXP_REPLACE(
                                    REGEXP_REPLACE(
                                        REGEXP_REPLACE(
                                            SUBSTR(PARAFFIN_VALUE_A2, REGEXP_INSTR(PARAFFIN_VALUE_A2, '[P|p]araffin block key')), '[P|p]araffin block keys;', ' '
                                        ), '[P|p]araffin block key;', ' '
                                    ), '\n', ' '
                                ), ' {2,}', ' '
                            )
                            ELSE NULL
                        END AS BLOCK_PARAFFIN2
                    FROM block_mapping_01_04
                ) a
            ) a
        ) a
    ) a
) a