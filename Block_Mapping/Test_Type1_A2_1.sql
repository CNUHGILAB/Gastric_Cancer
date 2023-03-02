#Slide keys 전처리 과정 1
SELECT
    원무접수ID,
    Re_Slide_keys,
    Else_Slide_A,
    Re_Paraffin_block_keys,
    Else_Paraffin_A
FROM(
    SELECT *,
        CASE
            WHEN INSTR(Re_Slide, REGEXP_LIKE(Re_Slide, 'A[0-9]')) != 0 AND RIGHT(Re_Slide, 1) = ';'
            THEN LEFT(Re_Slide, LENGTH(Re_Slide) - 1)
            ELSE Re_Slide
        END AS Re_Slide_keys,
        CASE
            WHEN INSTR(Re_Paraffin, REGEXP_LIKE(Re_Paraffin, 'A[0-9]')) != 0 AND RIGHT(Re_Paraffin, 1) = ';'
            THEN LEFT(Re_Paraffin, LENGTH(Re_Paraffin) - 1)
            ELSE Re_Paraffin
        END AS Re_Paraffin_block_keys
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(Re_Slide, '') IS NULL)
                THEN Re_Slide
                ELSE NULL
            END AS Else_Slide_A,
            CASE
                WHEN (NULLIF(Re_Paraffin, '') IS NULL)
                THEN Re_Paraffin
                ELSE NULL
            END AS Else_Paraffin_A
        FROM(
            SELECT *,
                CASE
                    WHEN (NULLIF(R_Slide_keys, '') IS NOT NULL AND INSTR(R_Slide_keys, ';;') != 0)
                    THEN REGEXP_REPLACE(R_Slide_keys, ';;', ';')
                    ELSE R_Slide_keys
                END AS Re_Slide,
                CASE
                    WHEN (NULLIF(R_Paraffin_block_keys, '') IS NOT NULL AND INSTR(R_Paraffin_block_keys, ';;') != 0)
                    THEN REGEXP_REPLACE(R_Paraffin_block_keys, ';;', ';')
                    ELSE R_Paraffin_block_keys
                END AS Re_Paraffin
            FROM(
                SELECT *,
                    CASE
                        WHEN INSTR(R_Slide_keys_5, ' ;') != 0
                        THEN REPLACE(R_Slide_keys_5, ' ;', ';')
                        ELSE R_Slide_keys_5
                    END AS R_Slide_keys,
                    CASE
                        WHEN INSTR(R_Paraffin_block_keys_5, ' ;') != 0
                        THEN REPLACE(R_Paraffin_block_keys_5, ' ;', ';')
                        ELSE R_Paraffin_block_keys_5
                    END AS R_Paraffin_block_keys
                FROM(
                    SELECT *,
                        CASE
                            WHEN INSTR(R_Slide_keys_4, '; ') != 0
                            THEN REPLACE(R_Slide_keys_4, '; ', ';')
                            ELSE R_Slide_keys_4
                        END AS R_Slide_keys_5,
                        CASE
                            WHEN INSTR(R_Paraffin_block_keys_4, '; ') != 0
                            THEN REPLACE(R_Paraffin_block_keys_4, '; ', ';')
                            ELSE R_Paraffin_block_keys_4
                        END AS R_Paraffin_block_keys_5
                    FROM(
                        SELECT *,
                            CASE
                                WHEN INSTR(R_Slide_keys_3, ';;') != 0
                                THEN REGEXP_REPLACE(R_Slide_keys_3, ';;', ';')
                                WHEN INSTR(R_Slide_keys_3, ';;;') != 0
                                THEN REGEXP_REPLACE(R_Slide_keys_3, ';;;', ';')
                                ELSE R_Slide_keys_3
                            END AS R_Slide_keys_4,
                            CASE
                                WHEN INSTR(R_Paraffin_block_keys_3, ';;') != 0
                                THEN REGEXP_REPLACE(R_Paraffin_block_keys_3, ';;', ';')
                                WHEN INSTR(R_Paraffin_block_keys_3, ';;;') != 0
                                THEN REGEXP_REPLACE(R_Paraffin_block_keys_3, ';;;', ';')
                                ELSE R_Paraffin_block_keys_3
                            END AS R_Paraffin_block_keys_4
                        FROM(
                            SELECT *,
                                CASE
                                    WHEN INSTR(R_Slide_keys_2, '  ') != 0
                                    THEN REPLACE(R_Slide_keys_2, '  ', '')
                                    WHEN INSTR(R_Slide_keys_2, '   ') != 0
                                    THEN REPLACE(R_Slide_keys_2, '   ', '')
                                    WHEN INSTR(R_Slide_keys_2, '    ') != 0
                                    THEN REPLACE(R_Slide_keys_2, '    ', '')
                                    WHEN INSTR(R_Slide_keys_2, '     ') != 0
                                    THEN REPLACE(R_Slide_keys_2, '     ', '')
                                    WHEN INSTR(R_Slide_keys_2, '      ') != 0
                                    THEN REPLACE(R_Slide_keys_2, '      ', '')
                                    WHEN INSTR(R_Slide_keys_2, '       ') != 0
                                    THEN REPLACE(R_Slide_keys_2, '       ', '')
                                    WHEN INSTR(R_Slide_keys_2, '        ') != 0
                                    THEN REPLACE(R_Slide_keys_2, '        ', '')
                                    WHEN INSTR(R_Slide_keys_2, '         ') != 0
                                    THEN REPLACE(R_Slide_keys_2, '         ', '')
                                    WHEN INSTR(R_Slide_keys_2, '          ') != 0
                                    THEN REPLACE(R_Slide_keys_2, '          ', '')
                                    WHEN INSTR(R_Slide_keys_2, '           ') != 0
                                    THEN REPLACE(R_Slide_keys_2, '           ', '')
                                    WHEN INSTR(R_Slide_keys_2, '            ') != 0
                                    THEN REPLACE(R_Slide_keys_2, '            ', '')
                                    WHEN INSTR(R_Slide_keys_2, '             ') != 0
                                    THEN REPLACE(R_Slide_keys_2, '             ', '')
                                    WHEN INSTR(R_Slide_keys_2, '              ') != 0
                                    THEN REPLACE(R_Slide_keys_2, '              ', '')
                                    WHEN INSTR(R_Slide_keys_2, '                 ') != 0
                                    THEN REPLACE(R_Slide_keys_2, '                 ', '')
                                    WHEN INSTR(R_Slide_keys_2, '                  ') != 0
                                    THEN REPLACE(R_Slide_keys_2, '                  ', '')
                                    ELSE R_Slide_keys_2
                                END AS R_Slide_keys_3,
                                CASE
                                    WHEN INSTR(R_Paraffin_block_keys_2, '  ') != 0
                                    THEN REPLACE(R_Paraffin_block_keys_2, '  ', '')
                                    WHEN INSTR(R_Paraffin_block_keys_2, '   ') != 0
                                    THEN REPLACE(R_Paraffin_block_keys_2, '   ', '')
                                    WHEN INSTR(R_Paraffin_block_keys_2, '    ') != 0
                                    THEN REPLACE(R_Paraffin_block_keys_2, '    ', '')
                                    WHEN INSTR(R_Paraffin_block_keys_2, '     ') != 0
                                    THEN REPLACE(R_Paraffin_block_keys_2, '     ', '')
                                    WHEN INSTR(R_Paraffin_block_keys_2, '      ') != 0
                                    THEN REPLACE(R_Paraffin_block_keys_2, '      ', '')
                                    WHEN INSTR(R_Paraffin_block_keys_2, '       ') != 0
                                    THEN REPLACE(R_Paraffin_block_keys_2, '       ', '')
                                    WHEN INSTR(R_Paraffin_block_keys_2, '        ') != 0
                                    THEN REPLACE(R_Paraffin_block_keys_2, '        ', '')
                                    WHEN INSTR(R_Paraffin_block_keys_2, '         ') != 0
                                    THEN REPLACE(R_Paraffin_block_keys_2, '         ', '')
                                    WHEN INSTR(R_Paraffin_block_keys_2, '          ') != 0
                                    THEN REPLACE(R_Paraffin_block_keys_2, '          ', '')
                                    WHEN INSTR(R_Paraffin_block_keys_2, '           ') != 0
                                    THEN REPLACE(R_Paraffin_block_keys_2, '           ', '')
                                    WHEN INSTR(R_Paraffin_block_keys_2, '            ') != 0
                                    THEN REPLACE(R_Paraffin_block_keys_2, '            ', '')
                                    WHEN INSTR(R_Paraffin_block_keys_2, '             ') != 0
                                    THEN REPLACE(R_Paraffin_block_keys_2, '             ', '')
                                    WHEN INSTR(R_Paraffin_block_keys_2, '              ') != 0
                                    THEN REPLACE(R_Paraffin_block_keys_2, '              ', '')
                                    WHEN INSTR(R_Paraffin_block_keys_2, '                 ') != 0
                                    THEN REPLACE(R_Paraffin_block_keys_2, '                 ', '')
                                    WHEN INSTR(R_Paraffin_block_keys_2, '                  ') != 0
                                    THEN REPLACE(R_Paraffin_block_keys_2, '                  ', '')
                                    ELSE R_Paraffin_block_keys_2
                                END AS R_Paraffin_block_keys_3
                            FROM(
                                SELECT *,
                                    CASE
                                        WHEN REGEXP_INSTR(R_Slide_keys_1, '[\n]') != 0
                                        THEN REGEXP_REPLACE(R_Slide_keys_1, '[\n]+', ';')
                                        ELSE R_Slide_keys_1
                                    END AS R_Slide_keys_2,
                                    CASE
                                        WHEN REGEXP_INSTR(R_Paraffin_block_keys_1, '[\n]') != 0
                                        THEN REGEXP_REPLACE(R_Paraffin_block_keys_1, '[\n]+', ';')
                                        ELSE R_Paraffin_block_keys_1
                                    END AS R_Paraffin_block_keys_2
                                FROM(
                                    SELECT *,
                                        CASE
                                            WHEN REGEXP_INSTR(Slide_keys, '[\t]') != 0
                                            THEN REGEXP_REPLACE(Slide_keys, '[\t]{2,}', '')
                                            ELSE Slide_keys
                                        END AS R_Slide_keys_1,
                                        CASE
                                            WHEN REGEXP_INSTR(Paraffin_block_keys, '[\t]') != 0
                                            THEN REGEXP_REPLACE(Paraffin_block_keys, '[\t]{2,}', '')
                                            ELSE Paraffin_block_keys
                                        END AS R_Paraffin_block_keys_1
                                    FROM test_type1_a1
                                ) a
                            ) a
                        ) a
                    ) a
                ) a
            ) a
        ) a
    ) a
) a