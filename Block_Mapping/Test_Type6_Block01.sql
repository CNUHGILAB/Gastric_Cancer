SELECT
    원무접수ID,
    환자번호,
    SAMPLE_BLOCK_YES,
    SAMPLE_BLOCK_NO
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(SAMPLE_BLOCK_YES4, '') IS NOT NULL)
            THEN REGEXP_REPLACE(SAMPLE_BLOCK_YES4, '[\n]', ' ')
            ELSE SAMPLE_BLOCK_YES4
        END AS SAMPLE_BLOCK_YES,
        CASE
            WHEN (NULLIF(SAMPLE_BLOCK_NO2, '') IS NOT NULL)
            THEN REGEXP_REPLACE(SAMPLE_BLOCK_NO2, '[\n]', ' ')
            ELSE SAMPLE_BLOCK_NO2
        END AS SAMPLE_BLOCK_NO
    FROM(
        SELECT *,
            CASE
                WHEN (INSTR(SAMPLE_BLOCK_YES3, 'No. 9') != 0)
                THEN REPLACE(SAMPLE_BLOCK_YES3, 'No. 9', 'No.9')
                ELSE SAMPLE_BLOCK_YES2
            END AS SAMPLE_BLOCK_YES4
        FROM(
            SELECT *,
                CASE
                    WHEN (INSTR(SAMPLE_BLOCK_YES2, 'No. 8') != 0)
                    THEN REPLACE(SAMPLE_BLOCK_YES2, 'No. 8', 'No.8')
                    ELSE SAMPLE_BLOCK_YES2
                END AS SAMPLE_BLOCK_YES3
            FROM(
                SELECT *,
                    CASE
                        WHEN (INSTR(SAMPLE_BLOCK_YES1, '  ') != 0)
                        THEN REPLACE(SAMPLE_BLOCK_YES1, '  ', ' ')
                        WHEN (INSTR(SAMPLE_BLOCK_YES1, '   ') != 0)
                        THEN REPLACE(SAMPLE_BLOCK_YES1, '   ', ' ')
                        WHEN (INSTR(SAMPLE_BLOCK_YES1, '    ') != 0)
                        THEN REPLACE(SAMPLE_BLOCK_YES1, '    ', ' ')
                        WHEN (INSTR(SAMPLE_BLOCK_YES1, '     ') != 0)
                        THEN REPLACE(SAMPLE_BLOCK_YES1, '     ', ' ')
                        WHEN (INSTR(SAMPLE_BLOCK_YES1, '      ') != 0)
                        THEN REPLACE(SAMPLE_BLOCK_YES1, '      ', ' ')
                        WHEN (INSTR(SAMPLE_BLOCK_YES1, '       ') != 0)
                        THEN REPLACE(SAMPLE_BLOCK_YES1, '       ', ' ')
                        WHEN (INSTR(SAMPLE_BLOCK_YES1, '        ') != 0)
                        THEN REPLACE(SAMPLE_BLOCK_YES1, '        ', ' ')
                        WHEN (INSTR(SAMPLE_BLOCK_YES1, '         ') != 0)
                        THEN REPLACE(SAMPLE_BLOCK_YES1, '         ', ' ')
                        WHEN (INSTR(SAMPLE_BLOCK_YES1, '          ') != 0)
                        THEN REPLACE(SAMPLE_BLOCK_YES1, '          ', ' ')
                        WHEN (INSTR(SAMPLE_BLOCK_YES1, '           ') != 0)
                        THEN REPLACE(SAMPLE_BLOCK_YES1, '           ', ' ')
                        ELSE SAMPLE_BLOCK_YES1
                    END AS SAMPLE_BLOCK_YES2,
                    CASE
                        WHEN (INSTR(SAMPLE_BLOCK_NO1, '  ') != 0)
                        THEN REPLACE(SAMPLE_BLOCK_NO1, '  ', ' ')
                        WHEN (INSTR(SAMPLE_BLOCK_NO1, '   ') != 0)
                        THEN REPLACE(SAMPLE_BLOCK_NO1, '   ', ' ')
                        WHEN (INSTR(SAMPLE_BLOCK_NO1, '    ') != 0)
                        THEN REPLACE(SAMPLE_BLOCK_NO1, '    ', ' ')
                        WHEN (INSTR(SAMPLE_BLOCK_NO1, '     ') != 0)
                        THEN REPLACE(SAMPLE_BLOCK_NO1, '     ', ' ')
                        WHEN (INSTR(SAMPLE_BLOCK_NO1, '      ') != 0)
                        THEN REPLACE(SAMPLE_BLOCK_NO1, '      ', ' ')
                        WHEN (INSTR(SAMPLE_BLOCK_NO1, '       ') != 0)
                        THEN REPLACE(SAMPLE_BLOCK_NO1, '       ', ' ')
                        WHEN (INSTR(SAMPLE_BLOCK_NO1, '        ') != 0)
                        THEN REPLACE(SAMPLE_BLOCK_NO1, '        ', ' ')
                        WHEN (INSTR(SAMPLE_BLOCK_NO1, '         ') != 0)
                        THEN REPLACE(SAMPLE_BLOCK_NO1, '         ', ' ')
                        WHEN (INSTR(SAMPLE_BLOCK_NO1, '          ') != 0)
                        THEN REPLACE(SAMPLE_BLOCK_NO1, '          ', ' ')
                        WHEN (INSTR(SAMPLE_BLOCK_NO1, '           ') != 0)
                        THEN REPLACE(SAMPLE_BLOCK_NO1, '           ', ' ')
                        ELSE SAMPLE_BLOCK_NO1
                    END AS SAMPLE_BLOCK_NO2
                FROM(
                    SELECT *,
                        CASE
                            WHEN (NULLIF(SAMPLE_BLOCK1_YES, '') IS NOT NULL)
                            THEN SUBSTR(SAMPLE_BLOCK1_YES, INSTR(SAMPLE_BLOCK1_YES, 'No.2'))
                            WHEN (NULLIF(SAMPLE_BLOCK2_YES, '') IS NOT NULL)
                            THEN SUBSTR(SAMPLE_BLOCK2_YES, INSTR(SAMPLE_BLOCK2_YES, 'No.2'))
                            WHEN (NULLIF(SAMPLE_BLOCK3_YES, '') IS NOT NULL)
                            THEN SUBSTR(SAMPLE_BLOCK3_YES, INSTR(SAMPLE_BLOCK3_YES, 'No.2'))
                            ELSE NULL
                        END AS SAMPLE_BLOCK_YES1,
                        CASE
                            WHEN (NULLIF(SAMPLE_BLOCK1_NO, '') IS NOT NULL)
                            THEN SUBSTR(SAMPLE_BLOCK1_NO, INSTR(SAMPLE_BLOCK1_NO, '(1)'))
                            WHEN (NULLIF(SAMPLE_BLOCK2_NO, '') IS NOT NULL)
                            THEN SUBSTR(SAMPLE_BLOCK2_NO, INSTR(SAMPLE_BLOCK2_NO, '(1)'))
                            WHEN (NULLIF(SAMPLE_BLOCK3_NO, '') IS NOT NULL)
                            THEN SUBSTR(SAMPLE_BLOCK3_NO, INSTR(SAMPLE_BLOCK3_NO, '(1)'))
                            ELSE NULL
                        END AS SAMPLE_BLOCK_NO1
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (NULLIF(SAMPLE_BLOCK1_1, '') IS NOT NULL AND INSTR(SAMPLE_BLOCK1_1, 'No.2') != 0)
                                THEN SAMPLE_BLOCK1_1
                                ELSE NULL
                            END AS SAMPLE_BLOCK1_YES,
                            CASE
                                WHEN (NULLIF(SAMPLE_BLOCK1_1, '') IS NOT NULL AND INSTR(SAMPLE_BLOCK1_1, 'No.2') = 0)
                                THEN SAMPLE_BLOCK1_1
                                ELSE NULL
                            END AS SAMPLE_BLOCK1_NO,
                            CASE
                                WHEN (NULLIF(SAMPLE_BLOCK2_1, '') IS NOT NULL AND INSTR(SAMPLE_BLOCK2_1, 'No.2') != 0)
                                THEN SAMPLE_BLOCK2_1
                                ELSE NULL
                            END AS SAMPLE_BLOCK2_YES,
                            CASE
                                WHEN (NULLIF(SAMPLE_BLOCK2_1, '') IS NOT NULL AND INSTR(SAMPLE_BLOCK2_1, 'No.2') = 0)
                                THEN SAMPLE_BLOCK2_1
                                ELSE NULL
                            END AS SAMPLE_BLOCK2_NO,
                            CASE
                                WHEN (NULLIF(SAMPLE_BLOCK3_1, '') IS NOT NULL AND INSTR(SAMPLE_BLOCK3_1, 'No.2') != 0)
                                THEN SAMPLE_BLOCK3_1
                                ELSE NULL
                            END AS SAMPLE_BLOCK3_YES,
                            CASE
                                WHEN (NULLIF(SAMPLE_BLOCK3_1, '') IS NOT NULL AND INSTR(SAMPLE_BLOCK3_1, 'No.2') = 0)
                                THEN SAMPLE_BLOCK3_1
                                ELSE NULL
                            END AS SAMPLE_BLOCK3_NO
                        FROM(
                            SELECT *,
                                CASE
                                    WHEN (NULLIF(SAMPLE_BLOCK1, '') IS NOT NULL AND INSTR(SAMPLE_BLOCK1, '(B)') != 0)
                                    THEN SAMPLE_BLOCK1
                                    ELSE NULL
                                END AS SAMPLE_BLOCK1_1,
                                CASE
                                    WHEN (NULLIF(SAMPLE_BLOCK2, '') IS NOT NULL AND INSTR(SAMPLE_BLOCK2, '(B)') != 0)
                                    THEN SAMPLE_BLOCK2
                                    ELSE NULL
                                END AS SAMPLE_BLOCK2_1,
                                CASE
                                    WHEN (NULLIF(SAMPLE_BLOCK3, '') IS NOT NULL AND INSTR(SAMPLE_BLOCK3, '(B)') != 0)
                                    THEN SAMPLE_BLOCK3
                                    ELSE NULL
                                END AS SAMPLE_BLOCK3_1
                            FROM test_type6_block_00
                        ) a
                    ) a
                ) a
            ) a
        ) a
    ) a
) a