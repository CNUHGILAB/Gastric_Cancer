SELECT
    원무접수ID,
    환자번호,
    GROSS_EXAMINATION,
    NONE_GROSS_EXAMINATION,
    FROZEN_DIAGNOSIS,
    NONE_FROZEN_DIAGNOSIS,
    FROZEN_GROSS_EXAMINATION,
    NONE_FROZEN_GROSS_EXAMINATION
    /*
    RE_FROZEN_ENG_BLOCK,
    FROZEN_ENG_BLOCK_ELSE,
    RE_FROZEN_NUM_BLOCK,
    FROZEN_NUM_BLOCK_ELSE
    */
FROM(
    SELECT *,
        CASE 
            WHEN (NULLIF(FROZEN_ENG_BLOCK, '') IS NOT NULL AND NULLIF(FROZEN_ENG_BLOCK_ELSE, '') IS NULL)
            THEN FROZEN_ENG_BLOCK
            ELSE NULL
        END AS RE_FROZEN_ENG_BLOCK,
        CASE 
            WHEN (NULLIF(FROZEN_NUM_BLOCK, '') IS NOT NULL AND NULLIF(FROZEN_NUM_BLOCK_ELSE, '') IS NULL)
            THEN FROZEN_NUM_BLOCK
            ELSE NULL
        END AS RE_FROZEN_NUM_BLOCK
    FROM(
        SELECT *,
            CASE
                WHEN (REGEXP_INSTR(FROZEN_ENG_BLOCK, '(A|RG)[0-9]+[,|.|;| ][A-z]+[,|.|;| ]') != 0
                    OR REGEXP_INSTR(FROZEN_ENG_BLOCK, '(A|RG)[0-9]+[,|.|;| ][,|.|;| ][A-z]+[,|.|;| ]') != 0
                    OR REGEXP_INSTR(FROZEN_ENG_BLOCK, '[-][0-9]+[,|.|;| ][A-z]+[,|.|;| ]') != 0
                    OR REGEXP_INSTR(FROZEN_ENG_BLOCK, '[-][0-9]+[,|.|;| ][,|.|;| ][A-z]+[,|.|;| ]') != 0)
                THEN REGEXP_REPLACE(
                    REPLACE(
                        FROZEN_ENG_BLOCK, '\n', ' '
                    ), ' {2,}', ' '
                )
                WHEN (REGEXP_INSTR(FROZEN_ENG_BLOCK, '(A|RG)[0-9]+[)][,|.|;| ][A-z]+[,|.|;| ]') != 0
                    OR REGEXP_INSTR(FROZEN_ENG_BLOCK, '(A|RG)[0-9]+[)][,|.|;| ][,|.|;| ][A-z]+[,|.|;| ]') != 0)
                THEN FROZEN_ENG_BLOCK
                ELSE NULL
            END AS FROZEN_ENG_BLOCK_ELSE,
            CASE
                WHEN (REGEXP_INSTR(FROZEN_NUM_BLOCK, '[A-z]+[,|.|;| ](A|RG)[0-9]+[,|.|;| ]') != 0
                    OR REGEXP_INSTR(FROZEN_NUM_BLOCK, '[A-z]+[,|.|;| ][,|.|;| ](A|RG)[0-9]+[,|.|;| ]') != 0
                    OR REGEXP_INSTR(FROZEN_NUM_BLOCK, '[A-z]+[,|.|;| ](A|RG)[0-9]+[-][0-9]+[,|.|;| ]') != 0
                    OR REGEXP_INSTR(FROZEN_NUM_BLOCK, '[A-z]+[,|.|;| ][,|.|;| ](A|RG)[0-9]+[-][0-9]+[,|.|;| ]') != 0
                    OR REGEXP_INSTR(FROZEN_NUM_BLOCK, '[A-z]+[,|.|;| ](A|RG)[0-9]+[-](A|RG)[0-9]+[,|.|;| ]') != 0
                    OR REGEXP_INSTR(FROZEN_NUM_BLOCK, '[A-z]+[,|.|;| ][,|.|;| ](A|RG)[0-9]+[-](A|RG)[0-9]+[,|.|;| ]') != 0)
                THEN REGEXP_REPLACE(
                    REPLACE(
                        FROZEN_NUM_BLOCK, '\n', ' '
                    ), ' {2,}', ' '
                )
                WHEN (REGEXP_INSTR(FROZEN_NUM_BLOCK, '[A-z]+[,|.|;| ][(](A|RG)[0-9]+[,|-|)]') != 0
                    OR REGEXP_INSTR(FROZEN_NUM_BLOCK, '[A-z]+[,|.|;| ][,|.|;| ][(](A|RG)[0-9]+[,|-|)]') != 0)
                THEN FROZEN_NUM_BLOCK
                WHEN (REGEXP_INSTR(FROZEN_NUM_BLOCK, '[A-z]+[)][,|.|;| ](A|RG)[0-9]+[,|-]') != 0
                    OR REGEXP_INSTR(FROZEN_NUM_BLOCK, '[A-z]+[)][,|.|;| ][,|.|;| ](A|RG)[0-9]+[,|-]') != 0)
                THEN REGEXP_REPLACE(
                    REPLACE(
                        FROZEN_NUM_BLOCK, '\n', ' '
                    ), ' {2,}', ' '
                )
                ELSE NULL
            END AS FROZEN_NUM_BLOCK_ELSE
        FROM(
            SELECT *,
                CASE 
                    WHEN (REGEXP_INSTR(RE_FGE_BLOCK_A, '^ [A-z]+') != 0
                        AND REGEXP_INSTR(RE_FGE_BLOCK_A, '^ (A|RG)[0-9]+') = 0)
                    THEN RE_FGE_BLOCK_A
                    WHEN (REGEXP_INSTR(RE_FD_BLOCK_A, '^ [A-z]+') != 0
                        AND REGEXP_INSTR(RE_FD_BLOCK_A, '^ (A|RG)[0-9]+') = 0)
                    THEN RE_FD_BLOCK_A
                    WHEN (REGEXP_INSTR(RE_GE_BLOCK_A, '^ [A-z]+') != 0
                        AND REGEXP_INSTR(RE_GE_BLOCK_A, '^ (A|RG)[0-9]+') = 0)
                    THEN RE_GE_BLOCK_A
                    ELSE NULL
                END AS FROZEN_ENG_BLOCK,
                CASE 
                    WHEN REGEXP_INSTR(RE_FGE_BLOCK_A, '^ (A|RG)[0-9]+') != 0
                    THEN RE_FGE_BLOCK_A
                    WHEN REGEXP_INSTR(RE_FD_BLOCK_A, '^ (A|RG)[0-9]+') != 0
                    THEN RE_FD_BLOCK_A
                    WHEN REGEXP_INSTR(RE_GE_BLOCK_A, '^ (A|RG)[0-9]+') != 0
                    THEN RE_GE_BLOCK_A
                    ELSE NULL
                END AS FROZEN_NUM_BLOCK
            FROM(
                SELECT *,
                    CASE 
                        WHEN REGEXP_INSTR(SUBSTR(FGE_BLOCK_A, INSTR(FGE_BLOCK_A, 'Slide key')), 'A[0-9]+') != 0
                        THEN REGEXP_REPLACE(
                            REPLACE(
                                REPLACE(
                                    SUBSTR(FGE_BLOCK_A, INSTR(FGE_BLOCK_A, 'Slide key')), 'Slide keys;', ' '
                                ), 'Slide key;', ' '
                            ), ' {2,}', ' '
                        )
                        ELSE NULL
                    END AS RE_FGE_BLOCK_A,
                    CASE 
                        WHEN REGEXP_INSTR(SUBSTR(FD_BLOCK_A, INSTR(FD_BLOCK_A, 'Slide key')), 'A[0-9]+') != 0
                        THEN REGEXP_REPLACE(
                            REPLACE(
                                REPLACE(
                                    SUBSTR(FD_BLOCK_A, INSTR(FD_BLOCK_A, 'Slide key')), 'Slide keys;', ' '
                                ), 'Slide key;', ' '
                            ), ' {2,}', ' '
                        )
                        ELSE NULL
                    END AS RE_FD_BLOCK_A,
                    CASE 
                        WHEN REGEXP_INSTR(SUBSTR(GE_BLOCK_A, INSTR(GE_BLOCK_A, 'Slide key')), 'A[0-9]+') != 0
                        THEN REGEXP_REPLACE(
                            REPLACE(
                                REPLACE(
                                    SUBSTR(GE_BLOCK_A, INSTR(GE_BLOCK_A, 'Slide key')), 'Slide keys;', ' '
                                ), 'Slide key;', ' '
                            ), ' {2,}', ' '
                        )
                        ELSE NULL
                    END AS RE_GE_BLOCK_A
                FROM(
                    SELECT *,
                        CASE 
                            WHEN (NULLIF(RE_FROZEN_GROSS_EXAMINATION, '') IS NOT NULL AND NULLIF(FGE_BLOCK_A1, '') IS NULL AND NULLIF(FGE_BLOCK_A2, '') IS NULL)
                            THEN RE_FROZEN_GROSS_EXAMINATION
                            ELSE NULL
                        END AS NONE_FGE_BLOCK_A,
                        CASE 
                            WHEN (NULLIF(RE_FROZEN_DIAGNOSIS, '') IS NOT NULL AND NULLIF(FD_BLOCK_A1, '') IS NULL AND NULLIF(FD_BLOCK_A2, '') IS NULL)
                            THEN RE_FROZEN_DIAGNOSIS
                            ELSE NULL
                        END AS NONE_FD_BLOCK_A,
                        CASE 
                            WHEN (NULLIF(RE_GROSS_EXAMINATION, '') IS NOT NULL AND NULLIF(GE_BLOCK_A1, '') IS NULL AND NULLIF(GE_BLOCK_A2, '') IS NULL)
                            THEN RE_GROSS_EXAMINATION
                            ELSE NULL
                        END AS NONE_GE_BLOCK_A
                    FROM(
                        SELECT *,
                            CASE 
                                WHEN (REGEXP_INSTR(RE_FROZEN_GROSS_EXAMINATION, '(S|s)lide key') != 0
                                    AND REGEXP_INSTR(RE_FROZEN_GROSS_EXAMINATION, 'A[0-9]+') != 0)
                                THEN RE_FROZEN_GROSS_EXAMINATION
                                WHEN (REGEXP_INSTR(RE_FROZEN_GROSS_EXAMINATION, '(P|p)araffin block key') != 0
                                    AND REGEXP_INSTR(RE_FROZEN_GROSS_EXAMINATION, 'A[0-9]+') != 0)
                                THEN RE_FROZEN_GROSS_EXAMINATION
                                ELSE NULL
                            END AS FGE_BLOCK_A1,
                            CASE 
                                WHEN (REGEXP_INSTR(RE_FROZEN_GROSS_EXAMINATION, '(S|s)lide key') = 0
                                    AND REGEXP_INSTR(RE_FROZEN_GROSS_EXAMINATION, '[(]A[)]') != 0)
                                THEN RE_FROZEN_GROSS_EXAMINATION
                                WHEN (REGEXP_INSTR(RE_FROZEN_GROSS_EXAMINATION, '(S|s)lide key') = 0
                                    AND REGEXP_INSTR(RE_FROZEN_GROSS_EXAMINATION, '[(]A[0-9]+') != 0)
                                THEN RE_FROZEN_GROSS_EXAMINATION
                                WHEN (REGEXP_INSTR(RE_FROZEN_GROSS_EXAMINATION, '(P|p)araffin block key') = 0
                                    AND REGEXP_INSTR(RE_FROZEN_GROSS_EXAMINATION, '[(]A[)]') != 0)
                                THEN RE_FROZEN_GROSS_EXAMINATION
                                WHEN (REGEXP_INSTR(RE_FROZEN_GROSS_EXAMINATION, '(P|p)araffin block key') = 0
                                    AND REGEXP_INSTR(RE_FROZEN_GROSS_EXAMINATION, '[(]A[0-9]+') != 0)
                                THEN RE_FROZEN_GROSS_EXAMINATION
                                ELSE NULL
                            END AS FGE_BLOCK_A2,
                            CASE 
                                WHEN (REGEXP_INSTR(RE_FROZEN_DIAGNOSIS, '(S|s)lide key') != 0
                                    AND REGEXP_INSTR(RE_FROZEN_DIAGNOSIS, 'A[0-9]+') != 0)
                                THEN RE_FROZEN_DIAGNOSIS
                                WHEN (REGEXP_INSTR(RE_FROZEN_DIAGNOSIS, '(P|p)araffin block key') != 0
                                    AND REGEXP_INSTR(RE_FROZEN_DIAGNOSIS, 'A[0-9]+') != 0)
                                THEN RE_FROZEN_DIAGNOSIS
                                ELSE NULL
                            END AS FD_BLOCK_A1,
                            CASE 
                                WHEN (REGEXP_INSTR(RE_FROZEN_DIAGNOSIS, '(S|s)lide key') = 0
                                    AND REGEXP_INSTR(RE_FROZEN_DIAGNOSIS, '[(]A[)]') != 0)
                                THEN RE_FROZEN_DIAGNOSIS
                                WHEN (REGEXP_INSTR(RE_FROZEN_DIAGNOSIS, '(S|s)lide key') = 0
                                    AND REGEXP_INSTR(RE_FROZEN_DIAGNOSIS, '[(]A[0-9]+') != 0)
                                THEN RE_FROZEN_DIAGNOSIS
                                WHEN (REGEXP_INSTR(RE_FROZEN_DIAGNOSIS, '(P|p)araffin block key') = 0
                                    AND REGEXP_INSTR(RE_FROZEN_DIAGNOSIS, '[(]A[)]') != 0)
                                THEN RE_FROZEN_DIAGNOSIS
                                WHEN (REGEXP_INSTR(RE_FROZEN_DIAGNOSIS, '(P|p)araffin block key') = 0
                                    AND REGEXP_INSTR(RE_FROZEN_DIAGNOSIS, '[(]A[0-9]+') != 0)
                                THEN RE_FROZEN_DIAGNOSIS
                                ELSE NULL
                            END AS FD_BLOCK_A2,
                            CASE 
                                WHEN (REGEXP_INSTR(RE_GROSS_EXAMINATION, '(S|s)lide key') != 0
                                    AND REGEXP_INSTR(RE_GROSS_EXAMINATION, 'A[0-9]+') != 0)
                                THEN RE_GROSS_EXAMINATION
                                WHEN (REGEXP_INSTR(RE_GROSS_EXAMINATION, '(P|p)araffin block key') != 0
                                    AND REGEXP_INSTR(RE_GROSS_EXAMINATION, 'A[0-9]+') != 0)
                                THEN RE_GROSS_EXAMINATION
                                ELSE NULL
                            END AS GE_BLOCK_A1,
                            CASE 
                                WHEN (REGEXP_INSTR(RE_GROSS_EXAMINATION, '(S|s)lide key') = 0
                                    AND REGEXP_INSTR(RE_GROSS_EXAMINATION, '[(]A[)]') != 0)
                                THEN RE_GROSS_EXAMINATION
                                WHEN (REGEXP_INSTR(RE_GROSS_EXAMINATION, '(S|s)lide key') = 0
                                    AND REGEXP_INSTR(RE_GROSS_EXAMINATION, '[(]A[0-9]+') != 0)
                                THEN RE_GROSS_EXAMINATION
                                WHEN (REGEXP_INSTR(RE_GROSS_EXAMINATION, '(P|p)araffin block key') = 0
                                    AND REGEXP_INSTR(RE_GROSS_EXAMINATION, '[(]A[)]') != 0)
                                THEN RE_GROSS_EXAMINATION
                                WHEN (REGEXP_INSTR(RE_GROSS_EXAMINATION, '(P|p)araffin block key') = 0
                                    AND REGEXP_INSTR(RE_GROSS_EXAMINATION, '[(]A[0-9]+') != 0)
                                THEN RE_GROSS_EXAMINATION
                                ELSE NULL
                            END AS GE_BLOCK_A2
                        FROM(
                            SELECT *,
                                CASE 
                                    WHEN NULLIF(FROZEN_GROSS_EXAMINATION, '') IS NOT NULL
                                    THEN FROZEN_GROSS_EXAMINATION
                                    WHEN NULLIF(ELSE_FROZEN_GROSS_EXAMINATION, '') IS NOT NULL
                                    THEN ELSE_FROZEN_GROSS_EXAMINATION
                                    ELSE NULL
                                END AS RE_FROZEN_GROSS_EXAMINATION,
                                CASE 
                                    WHEN NULLIF(FROZEN_DIAGNOSIS, '') IS NOT NULL
                                    THEN FROZEN_DIAGNOSIS
                                    WHEN NULLIF(ELSE_FROZEN_DIAGNOSIS, '') IS NOT NULL
                                    THEN ELSE_FROZEN_DIAGNOSIS
                                    ELSE NULL
                                END AS RE_FROZEN_DIAGNOSIS,
                                CASE 
                                    WHEN NULLIF(GROSS_EXAMINATION, '') IS NOT NULL
                                    THEN GROSS_EXAMINATION
                                    ELSE NULL
                                END AS RE_GROSS_EXAMINATION
                            FROM(
                                SELECT *,
                                    CASE 
                                        WHEN (INSTR(BINARY ELSE_FROZEN_BLOCK, 'FROZEN Gross Examination') != 0 AND INSTR(BINARY ELSE_FROZEN_BLOCK, 'FROZEN DIAGNOSIS') != 0 AND INSTR(BINARY ELSE_FROZEN_BLOCK, 'GROSS EXAMINATION') = 0)
                                        THEN REPLACE(
                                            ELSE_FROZEN_BLOCK, SUBSTR(BINARY ELSE_FROZEN_BLOCK, INSTR(BINARY ELSE_FROZEN_BLOCK, 'FROZEN DIAGNOSIS')), ''
                                        )
                                        ELSE NULL
                                    END AS ELSE_FROZEN_GROSS_EXAMINATION,
                                    CASE 
                                        WHEN (INSTR(BINARY ELSE_FROZEN_BLOCK, 'FROZEN Gross Examination') != 0 AND INSTR(BINARY ELSE_FROZEN_BLOCK, 'FROZEN DIAGNOSIS') != 0 AND INSTR(BINARY ELSE_FROZEN_BLOCK, 'GROSS EXAMINATION') = 0)
                                        THEN SUBSTR(BINARY ELSE_FROZEN_BLOCK, INSTR(BINARY ELSE_FROZEN_BLOCK, 'FROZEN DIAGNOSIS'))
                                        ELSE NULL
                                    END AS ELSE_FROZEN_DIAGNOSIS
                                FROM(
                                    SELECT *,
                                        CASE 
                                            WHEN (NULLIF(NONE_GROSS_EXAMINATION, '') IS NOT NULL AND NULLIF(NONE_FROZEN_DIAGNOSIS, '') IS NOT NULL AND NULLIF(NONE_FROZEN_GROSS_EXAMINATION, '') IS NOT NULL)
                                            THEN FROZEN_BLOCK
                                            ELSE NULL
                                        END AS ELSE_FROZEN_BLOCK
                                    FROM(
                                        SELECT *,
                                            CASE 
                                                WHEN NULLIF(FROZEN_BLOCK, '') IS NOT NULL AND NULLIF(FROZEN_GROSS_EXAMINATION, '') IS NULL
                                                THEN FROZEN_BLOCK
                                                ELSE NULL
                                            END AS NONE_FROZEN_GROSS_EXAMINATION
                                        FROM(
                                            SELECT *,
                                                CASE 
                                                    WHEN (INSTR(SUBSTR(BINARY FROZEN_BLOCK, 1), 'FROZEN DIAGNOSIS') != 0 AND INSTR(SUBSTR(BINARY FROZEN_BLOCK, 1), 'GROSS EXAMINATION') != 0)
                                                    THEN REPLACE(
                                                        SUBSTR(BINARY FROZEN_BLOCK, 1), SUBSTR(BINARY FROZEN_BLOCK, INSTR(BINARY FROZEN_BLOCK, 'FROZEN DIAGNOSIS')), ''
                                                    )
                                                    ELSE NULL
                                                END AS FROZEN_GROSS_EXAMINATION,
                                                CASE 
                                                    WHEN (NULLIF(FROZEN_BLOCK, '') IS NOT NULL AND NULLIF(FROZEN_DIAGNOSIS, '') IS NULL)
                                                    THEN FROZEN_BLOCK
                                                    ELSE NULL
                                                END AS NONE_FROZEN_DIAGNOSIS
                                            FROM(
                                                SELECT *,
                                                    CASE 
                                                        WHEN INSTR(SUBSTR(BINARY FROZEN_BLOCK, INSTR(BINARY FROZEN_BLOCK, 'FROZEN DIAGNOSIS')), 'GROSS EXAMINATION') != 0
                                                        THEN REPLACE(
                                                            SUBSTR(BINARY FROZEN_BLOCK, INSTR(BINARY FROZEN_BLOCK, 'FROZEN DIAGNOSIS')), SUBSTR(BINARY FROZEN_BLOCK, INSTR(BINARY FROZEN_BLOCK, 'GROSS EXAMINATION')), ''
                                                        )
                                                        ELSE NULL
                                                    END AS FROZEN_DIAGNOSIS,
                                                    CASE 
                                                        WHEN (NULLIF(FROZEN_BLOCK, '') IS NOT NULL AND NULLIF(GROSS_EXAMINATION, '') IS NULL)
                                                        THEN FROZEN_BLOCK
                                                        ELSE NULL
                                                    END AS NONE_GROSS_EXAMINATION
                                                FROM(
                                                    SELECT *,
                                                        CASE 
                                                            WHEN (INSTR(SUBSTR(BINARY FROZEN_BLOCK, INSTR(BINARY FROZEN_BLOCK, 'GROSS EXAMINATION')), 'FROZEN Gross Examination') = 0
                                                                AND INSTR(SUBSTR(BINARY FROZEN_BLOCK, INSTR(BINARY FROZEN_BLOCK, 'GROSS EXAMINATION')), 'FROZEN DIAGNOSIS') = 0)
                                                            THEN SUBSTR(BINARY FROZEN_BLOCK, INSTR(BINARY FROZEN_BLOCK, 'GROSS EXAMINATION'))
                                                            ELSE NULL
                                                        END AS GROSS_EXAMINATION
                                                    FROM(
                                                        SELECT *,
                                                            CASE
                                                                WHEN (REGEXP_INSTR(SUBSTR(BINARY RE_BLOCK_A3, INSTR(BINARY RE_BLOCK_A3, 'FROZEN DIAGNOSIS')), '(One|Two|Three|Four|Five|Six|Senven|Eight|Nine|Ten|Eleven|Twelve) specimens are') != 0
                                                                    OR REGEXP_INSTR(SUBSTR(BINARY RE_BLOCK_A3, INSTR(BINARY RE_BLOCK_A3, 'FROZEN DIAGNOSIS')), 'GROSS EXAMINATION') = 0)
                                                                THEN REPLACE(
                                                                    RE_BLOCK_A3,
                                                                    SUBSTR(SUBSTR(BINARY RE_BLOCK_A3, INSTR(BINARY RE_BLOCK_A3, 'FROZEN DIAGNOSIS')),
                                                                    REGEXP_INSTR(SUBSTR(BINARY RE_BLOCK_A3, INSTR(BINARY RE_BLOCK_A3, 'FROZEN DIAGNOSIS')),
                                                                    '(One|Two|Three|Four|Five|Six|Senven|Eight|Nine|Ten|Eleven|Twelve) specimens are')),
                                                                    CONCAT(
                                                                        'GROSS EXAMINATION ',
                                                                        SUBSTR(
                                                                            SUBSTR(BINARY RE_BLOCK_A3, INSTR(BINARY RE_BLOCK_A3, 'FROZEN DIAGNOSIS')),
                                                                            REGEXP_INSTR(SUBSTR(BINARY RE_BLOCK_A3, INSTR(BINARY RE_BLOCK_A3, 'FROZEN DIAGNOSIS')),
                                                                            '(One|Two|Three|Four|Five|Six|Senven|Eight|Nine|Ten|Eleven|Twelve) specimens are')
                                                                        )
                                                                    )
                                                                )
                                                                ELSE RE_BLOCK_A3
                                                            END AS FROZEN_BLOCK
                                                        FROM(
                                                            SELECT *,
                                                                CASE
                                                                    WHEN (INSTR(BINARY BLOCK_A3, 'FROZEN DIAGNOSIS') = 0
                                                                        AND REGEXP_INSTR(REGEXP_REPLACE(SUBSTR(BINARY BLOCK_A3, INSTR(BINARY BLOCK_A3, 'GROSS EXAMINATION')), '^GROSS EXAMINATION', ''), 'GROSS EXAMINATION') != 0)
                                                                    THEN REPLACE(
                                                                        BLOCK_A3,
                                                                        SUBSTR(BINARY BLOCK_A3, INSTR(BINARY BLOCK_A3, 'GROSS EXAMINATION')),
                                                                        REGEXP_REPLACE(
                                                                            SUBSTR(BINARY BLOCK_A3, INSTR(BINARY BLOCK_A3, 'GROSS EXAMINATION')), '^GROSS EXAMINATION', 'FROZEN DIAGNOSIS'
                                                                        )
                                                                    )
                                                                    ELSE BLOCK_A3
                                                                END AS RE_BLOCK_A3
                                                            FROM block_mapping_02_05
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