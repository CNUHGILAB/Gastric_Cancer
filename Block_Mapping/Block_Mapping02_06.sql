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
    NUM_BLOCK_ELSE,
    # Frozen Diagnosis
    BLOCK_A2
FROM(
    SELECT *
    FROM(
        SELECT *,
            CASE 
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 1), '[0-9]+') != 0
                THEN REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 1)
                ELSE NULL
            END AS ENG_TEST1,
            CASE 
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 2), '[0-9]+') != 0
                THEN REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 2)
                ELSE NULL
            END AS ENG_TEST2,
            CASE 
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 3), '[0-9]+') != 0
                THEN REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 3)
                ELSE NULL
            END AS ENG_TEST3,
            CASE 
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 4), '[0-9]+') != 0
                THEN REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 4)
                ELSE NULL
            END AS ENG_TEST4,
            CASE 
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 5), '[0-9]+') != 0
                THEN REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 5)
                ELSE NULL
            END AS ENG_TEST5,
            CASE
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 6), '[0-9]+') != 0
                THEN REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 6)
                ELSE NULL
            END AS ENG_TEST6,
            CASE 
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 7), '[0-9]+') != 0
                THEN REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 7)
                ELSE NULL
            END AS ENG_TEST7,
            CASE 
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 8), '[0-9]+') != 0
                THEN REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 8)
                ELSE NULL
            END AS ENG_TEST8,
            CASE 
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 9), '[0-9]+') != 0
                THEN REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 9)
                ELSE NULL
            END AS ENG_TEST9,
            CASE 
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 10), '[0-9]+') != 0
                THEN REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 10)
                ELSE NULL
            END AS ENG_TEST10,
            CASE 
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 11), '[0-9]+') != 0
                THEN REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 11)
                ELSE NULL
            END AS ENG_TEST11,
            CASE 
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 12), '[0-9]+') != 0
                THEN REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 12)
                ELSE NULL
            END AS ENG_TEST12,
            CASE 
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 13), '[0-9]+') != 0
                THEN REGEXP_SUBSTR(RE_ENG_BLOCK, '[^\n]+', 1, 13)
                ELSE NULL
            END AS ENG_TEST13,
            CASE 
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 1), '[0-9]+') != 0
                THEN REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 1)
                ELSE NULL
            END AS NUM_TEST1,
            CASE 
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 2), '[0-9]+') != 0
                THEN REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 2)
                ELSE NULL
            END AS NUM_TEST2,
            CASE 
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 3), '[0-9]+') != 0
                THEN REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 3)
                ELSE NULL
            END AS NUM_TEST3,
            CASE 
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 4), '[0-9]+') != 0
                THEN REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 4)
                ELSE NULL
            END AS NUM_TEST4,
            CASE 
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 5), '[0-9]+') != 0
                THEN REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 5)
                ELSE NULL
            END AS NUM_TEST5,
            CASE
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 6), '[0-9]+') != 0
                THEN REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 6)
                ELSE NULL
            END AS NUM_TEST6,
            CASE 
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 7), '[0-9]+') != 0
                THEN REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 7)
                ELSE NULL
            END AS NUM_TEST7,
            CASE 
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 8), '[0-9]+') != 0
                THEN REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 8)
                ELSE NULL
            END AS NUM_TEST8,
            CASE 
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 9), '[0-9]+') != 0
                THEN REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 9)
                ELSE NULL
            END AS NUM_TEST9,
            CASE 
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 10), '[0-9]+') != 0
                THEN REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 10)
                ELSE NULL
            END AS NUM_TEST10,
            CASE 
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 11), '[0-9]+') != 0
                THEN REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 11)
                ELSE NULL
            END AS NUM_TEST11,
            CASE 
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 12), '[0-9]+') != 0
                THEN REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 12)
                ELSE NULL
            END AS NUM_TEST12,
            CASE
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(RE_NUM_BLOCK, '[^\n]+', 1, 13), '[0-9]+') != 0
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
                        WHEN (REGEXP_INSTR(ENG_BLOCK, '[0-9]+[|,|.|;| ][A-z]+[,|.|;| ]') != 0
                            OR REGEXP_INSTR(ENG_BLOCK, '[0-9]+[|,|.|;| ][|,|.|;| ][A-z]+[,|.|;| ]') != 0
                            OR REGEXP_INSTR(ENG_BLOCK, '[-][0-9]+[|,|.|;| ][A-z]+[,|.|;| ]') != 0
                            OR REGEXP_INSTR(ENG_BLOCK, '[-][0-9]+[|,|.|;| ][|,|.|;| ][A-z]+[,|.|;| ]') != 0)
                        THEN REGEXP_REPLACE(
                            REPLACE(
                                ENG_BLOCK, '\n', ' '
                            ), ' {2,}', ' '
                        )
                        ELSE NULL
                    END AS ENG_BLOCK_ELSE,
                    CASE
                        WHEN (REGEXP_INSTR(NUM_BLOCK, '[A-z]+[|,|.|;| ][0-9]+[,|.|;| ]') != 0
                            OR REGEXP_INSTR(NUM_BLOCK, '[A-z]+[|,|.|;| ][|,|.|;| ][0-9]+[,|.|;| ]') != 0
                            OR REGEXP_INSTR(NUM_BLOCK, '[A-z]+[|,|.|;| ][0-9]+[-][0-9]+[,|.|;| ]') != 0
                            OR REGEXP_INSTR(NUM_BLOCK, '[A-z]+[|,|.|;| ][|,|.|;| ][0-9]+[-][0-9]+[,|.|;| ]') != 0
                            OR REGEXP_INSTR(NUM_BLOCK, '[A-z]+[|,|.|;| ][0-9]+[-][0-9]+[,|.|;| ]') != 0
                            OR REGEXP_INSTR(NUM_BLOCK, '[A-z]+[|,|.|;| ][|,|.|;| ][0-9]+[-][0-9]+[,|.|;| ]') != 0)
                        THEN REGEXP_REPLACE(
                            REPLACE(
                                NUM_BLOCK, '\n', ' '
                            ), ' {2,}', ' '
                        )
                        ELSE NULL
                    END AS NUM_BLOCK_ELSE
                FROM(
                    SELECT *,
                        CASE 
                            WHEN REGEXP_INSTR(BLOCK_A1, '^ [A-z]+') != 0
                            THEN BLOCK_A1
                            ELSE NULL
                        END AS ENG_BLOCK,
                        CASE 
                            WHEN REGEXP_INSTR(BLOCK_A1, '^ [0-9]+') != 0
                            THEN BLOCK_A1
                            ELSE NULL
                        END AS NUM_BLOCK
                    FROM(
                        SELECT *,
                            CASE 
                                WHEN REGEXP_INSTR(BLOCK_A1_1, '^ (R|r)epresentative sections are embedded[.]') != 0
                                THEN REGEXP_REPLACE(
                                    REGEXP_REPLACE(
                                        BLOCK_A1_1, '^ (R|r)epresentative sections are embedded[.] [(][0-9]+[-][0-9]+[)][\n][\n]', ''
                                    ), '^ [-] ', ' '
                                )
                                WHEN REGEXP_INSTR(BLOCK_A1_1, '^ (R|r)epresentative sections are embedded ') != 0
                                THEN REGEXP_REPLACE(
                                    REGEXP_REPLACE(
                                        BLOCK_A1_1, '^ (R|r)epresentative sections are embedded [(][0-9]+[-][0-9]+[)][\n][\n]', ''
                                    ), '^ [-] ', ' '
                                )
                                ELSE BLOCK_A1_1
                            END AS BLOCK_A1
                        FROM(
                            SELECT *,
                                CASE 
                                    WHEN NULLIF(VALUE_A, '') IS NOT NULL
                                    THEN REGEXP_REPLACE(
                                        REGEXP_REPLACE(
                                            REGEXP_REPLACE(
                                                SUBSTR(VALUE_A, REGEXP_INSTR(VALUE_A, '(S|s)lide key')), '(S|s)lide keys;', ' '
                                            ), '(S|s)lide key;', ' '
                                        ), ' {2,}', ' '
                                    )
                                    ELSE NULL
                                END AS BLOCK_A1_1,
                                CASE 
                                    WHEN NULLIF(VALUE_FROZEN, '') IS NOT NULL
                                    THEN REPLACE(
                                        REPLACE(
                                            REPLACE(
                                                REPLACE(
                                                    REPLACE(
                                                        REPLACE(
                                                            REPLACE(
                                                                REPLACE(
                                                                    REPLACE(
                                                                        REPLACE(
                                                                            REPLACE(
                                                                                REPLACE(
                                                                                    REPLACE(
                                                                                        VALUE_FROZEN, 'Froze', 'FROZEN'
                                                                                    ), 'examinaton', 'examination'
                                                                                ), 'examinatio', 'examination'
                                                                            ), 'examaination', 'examination'
                                                                        ), 'examinationn', 'examination'
                                                                    ), 'FROZENn', 'FROZEN'
                                                                ), 'FROZEN Gross', 'FROZEN GROSS EXAMINATION'
                                                            ), 'FROZEN gross', 'FROZEN GROSS EXAMINATION'
                                                        ), 'FROZEN GROSS EXAMINATION examination', 'FROZEN GROSS EXAMINATION'
                                                    ), 'FROZEN diagnosis', 'FROZEN DIAGNOSIS'
                                                ), 'FROZEN Diagnosis', 'FROZEN DIAGNOSIS'
                                            ), 'Gross examination', 'GROSS EXAMINATION'
                                        ), ';;', ';'
                                    )
                                    ELSE NULL
                                END AS BLOCK_A2
                            FROM block_mapping_01_06
                        ) a
                    ) a
                ) a
            ) a
        ) a
    ) a
) a