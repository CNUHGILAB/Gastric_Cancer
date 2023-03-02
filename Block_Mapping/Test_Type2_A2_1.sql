#Slide keys 전처리 과정 1
SELECT
    원무접수ID,
    Re_Paraffin_Block_keys
FROM(
    SELECT *,
        CASE
            WHEN NULLIF(R_Paraffin_block_keys, '') IS NOT NULL
            THEN SUBSTR(R_Paraffin_block_keys, INSTR(R_Paraffin_block_keys, REGEXP_SUBSTR(R_Paraffin_block_keys, '[^;]+', 1, 2)))
            ELSE R_Paraffin_block_keys
        END AS Re_Paraffin_Block_keys
    FROM(
        SELECT *,
            CASE
                WHEN INSTR(R_Paraffin_block_keys_4, ';;') != 0
                THEN REPLACE(R_Paraffin_block_keys_4, ';;', ';')
                ELSE R_Paraffin_block_keys_4
            END AS R_Paraffin_block_keys
        FROM(
            SELECT *,
                CASE
                    WHEN INSTR(R_Paraffin_block_keys_3, '; ') != 0
                    THEN REPLACE(R_Paraffin_block_keys_3, '; ', ';')
                    WHEN INSTR(R_Paraffin_block_keys_3, ' ;') != 0
                    THEN REPLACE(R_Paraffin_block_keys_3, ' ;', ';')
                    ELSE R_Paraffin_block_keys_3
                END AS R_Paraffin_block_keys_4
            FROM(
                SELECT *,
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
                        WHEN INSTR(R_Paraffin_block_keys_2, '               ') != 0
                        THEN REPLACE(R_Paraffin_block_keys_2, '               ', '')
                        WHEN INSTR(R_Paraffin_block_keys_2, '                ') != 0
                        THEN REPLACE(R_Paraffin_block_keys_2, '                ', '')
                        WHEN INSTR(R_Paraffin_block_keys_2, '                 ') != 0
                        THEN REPLACE(R_Paraffin_block_keys_2, '                 ', '')
                        WHEN INSTR(R_Paraffin_block_keys_2, '                  ') != 0
                        THEN REPLACE(R_Paraffin_block_keys_2, '                  ', '')
                        WHEN INSTR(R_Paraffin_block_keys_2, '                   ') != 0
                        THEN REPLACE(R_Paraffin_block_keys_2, '                   ', '')
                        WHEN INSTR(R_Paraffin_block_keys_2, '                    ') != 0
                        THEN REPLACE(R_Paraffin_block_keys_2, '                    ', '')
                        WHEN INSTR(R_Paraffin_block_keys_2, '                     ') != 0
                        THEN REPLACE(R_Paraffin_block_keys_2, '                     ', '')
                        WHEN INSTR(R_Paraffin_block_keys_2, '                      ') != 0
                        THEN REPLACE(R_Paraffin_block_keys_2, '                      ', '')
                        WHEN INSTR(R_Paraffin_block_keys_2, '                       ') != 0
                        THEN REPLACE(R_Paraffin_block_keys_2, '                       ', '')
                        WHEN INSTR(R_Paraffin_block_keys_2, '                        ') != 0
                        THEN REPLACE(R_Paraffin_block_keys_2, '                        ', '')
                        WHEN INSTR(R_Paraffin_block_keys_2, '                         ') != 0
                        THEN REPLACE(R_Paraffin_block_keys_2, '                         ', '')
                        WHEN INSTR(R_Paraffin_block_keys_2, '                          ') != 0
                        THEN REPLACE(R_Paraffin_block_keys_2, '                          ', '')
                        WHEN INSTR(R_Paraffin_block_keys_2, '                           ') != 0
                        THEN REPLACE(R_Paraffin_block_keys_2, '                           ', '')
                        WHEN INSTR(R_Paraffin_block_keys_2, '                            ') != 0
                        THEN REPLACE(R_Paraffin_block_keys_2, '                            ', '')
                        WHEN INSTR(R_Paraffin_block_keys_2, '                             ') != 0
                        THEN REPLACE(R_Paraffin_block_keys_2, '                             ', '')
                        ELSE R_Paraffin_block_keys_2
                    END AS R_Paraffin_block_keys_3
                FROM(
                    SELECT *,
                        CASE
                            WHEN REGEXP_INSTR(R_Paraffin_block_keys_1, '[\n]') != 0
                            THEN REGEXP_REPLACE(R_Paraffin_block_keys_1, '[\n]+', '')
                            ELSE R_Paraffin_block_keys_1
                        END AS R_Paraffin_block_keys_2
                    FROM(
                        SELECT *,
                            CASE
                                WHEN REGEXP_INSTR(Paraffin_block_keys, '[\t]') != 0
                                THEN REGEXP_REPLACE(Paraffin_block_keys, '[\t]{2,}', '')
                                ELSE Paraffin_block_keys
                            END AS R_Paraffin_block_keys_1
                        FROM test_type2_a1
                    ) a
                ) a
            ) a
        ) a
    ) a
) a