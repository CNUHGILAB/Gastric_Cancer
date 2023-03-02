SELECT
    원무접수ID,
    Re_Slide_keys
FROM(
    SELECT *,
        CASE
            WHEN INSTR(Slide_keys, '  ') != 0
            THEN REPLACE(Slide_keys, '  ', '')
            WHEN INSTR(Slide_keys, '   ') != 0
            THEN REPLACE(Slide_keys, '   ', '')
            WHEN INSTR(Slide_keys, '    ') != 0
            THEN REPLACE(Slide_keys, '    ', '')
            WHEN INSTR(Slide_keys, '     ') != 0
            THEN REPLACE(Slide_keys, '     ', '')
            WHEN INSTR(Slide_keys, '      ') != 0
            THEN REPLACE(Slide_keys, '      ', '')
            WHEN INSTR(Slide_keys, '       ') != 0
            THEN REPLACE(Slide_keys, '       ', '')
            WHEN INSTR(Slide_keys, '        ') != 0
            THEN REPLACE(Slide_keys, '        ', '')
            WHEN INSTR(Slide_keys, '         ') != 0
            THEN REPLACE(Slide_keys, '         ', '')
            WHEN INSTR(Slide_keys, '          ') != 0
            THEN REPLACE(Slide_keys, '          ', '')
            WHEN INSTR(Slide_keys, '           ') != 0
            THEN REPLACE(Slide_keys, '           ', '')
            WHEN INSTR(Slide_keys, '            ') != 0
            THEN REPLACE(Slide_keys, '            ', '')
            WHEN INSTR(Slide_keys, '             ') != 0
            THEN REPLACE(Slide_keys, '             ', '')
            WHEN INSTR(Slide_keys, '              ') != 0
            THEN REPLACE(Slide_keys, '              ', '')
            WHEN INSTR(Slide_keys, '               ') != 0
            THEN REPLACE(Slide_keys, '               ', '')
            WHEN INSTR(Slide_keys, '                ') != 0
            THEN REPLACE(Slide_keys, '                ', '')
            WHEN INSTR(Slide_keys, '                 ') != 0
            THEN REPLACE(Slide_keys, '                 ', '')
            WHEN INSTR(Slide_keys, '                  ') != 0
            THEN REPLACE(Slide_keys, '                  ', '')
            WHEN INSTR(Slide_keys, '                   ') != 0
            THEN REPLACE(Slide_keys, '                   ', '')
            WHEN INSTR(Slide_keys, '                    ') != 0
            THEN REPLACE(Slide_keys, '                    ', '')
            WHEN INSTR(Slide_keys, '                     ') != 0
            THEN REPLACE(Slide_keys, '                     ', '')
            WHEN INSTR(Slide_keys, '                      ') != 0
            THEN REPLACE(Slide_keys, '                      ', '')
            WHEN INSTR(Slide_keys, '                       ') != 0
            THEN REPLACE(Slide_keys, '                       ', '')
            WHEN INSTR(Slide_keys, '                        ') != 0
            THEN REPLACE(Slide_keys, '                        ', '')
            WHEN INSTR(Slide_keys, '                         ') != 0
            THEN REPLACE(Slide_keys, '                         ', '')
            WHEN INSTR(Slide_keys, '                          ') != 0
            THEN REPLACE(Slide_keys, '                          ', '')
            WHEN INSTR(Slide_keys, '                           ') != 0
            THEN REPLACE(Slide_keys, '                           ', '')
            WHEN INSTR(Slide_keys, '                            ') != 0
            THEN REPLACE(Slide_keys, '                            ', '')
            WHEN INSTR(Slide_keys, '                             ') != 0
            THEN REPLACE(Slide_keys, '                             ', '')
            ELSE Slide_keys
        END AS Re_Slide_keys
    FROM test_type3_a1
) a