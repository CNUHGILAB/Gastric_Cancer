SELECT
    원무접수ID,
    /*
    SLIDE_KEY_RE5,
    SLIDE_KEY_RE6,
    SLIDE_KEY_RE7,
    SLIDE_KEY_RE8,
    */
    RE1_SLIDE_KEY,
    RE2_SLIDE_KEY,
    SLIDE_KEY_RE4,
    SLIDE_ELSE
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(SLIDE_KEY_RE4, '') IS NOT NULL AND NULLIF(RE1_SLIDE_KEY, '') IS NULL)
            THEN SLIDE_KEY_RE4
            ELSE NULL
        END AS RE2_SLIDE_KEY
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(SLIDE_KEY_RE5, '') IS NOT NULL)
                THEN SLIDE_KEY_RE5
                WHEN (NULLIF(SLIDE_KEY_RE6, '') IS NOT NULL)
                THEN SLIDE_KEY_RE6
                WHEN (NULLIF(SLIDE_KEY_RE7, '') IS NOT NULL)
                THEN SLIDE_KEY_RE7
                WHEN (NULLIF(SLIDE_KEY_RE8, '') IS NOT NULL)
                THEN SLIDE_KEY_RE8
                ELSE NULL
            END AS RE1_SLIDE_KEY
        FROM(
            SELECT *,
                CASE
                    WHEN (NULLIF(SLIDE_KEY_RE4, '') IS NOT NULL AND REGEXP_INSTR(BINARY SLIDE_KEY_RE4, '[0-9]{1,3} [(][a-z]+[)][;]') != 0)
                    THEN SLIDE_KEY_RE4
                    ELSE NULL
                END AS SLIDE_KEY_RE8
            FROM(
                SELECT *,
                    CASE
                        WHEN (NULLIF(SLIDE_KEY_RE4, '') IS NOT NULL AND REGEXP_INSTR(BINARY SLIDE_KEY_RE4, '[a-z]+[;][0-9]{1,3}[;][a-z]+') != 0)
                        THEN SLIDE_KEY_RE4
                        ELSE NULL
                    END AS SLIDE_KEY_RE7
                FROM(
                    SELECT *,
                        CASE
                            WHEN (NULLIF(SLIDE_KEY_RE4, '') IS NOT NULL AND REGEXP_INSTR(BINARY SLIDE_KEY_RE4, '[A-Z]{1,2}[0-9]{1,3}[;][a-z]+[;][A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN SLIDE_KEY_RE4
                            WHEN (NULLIF(SLIDE_KEY_RE4, '') IS NOT NULL AND REGEXP_INSTR(BINARY SLIDE_KEY_RE4, '[A-Z]{1,2}[0-9]{1,3}[;][a-z]+ [a-z]+[;][A-Z]{1,2}[0-9]{1,3}') != 0)
                            THEN SLIDE_KEY_RE4
                            ELSE NULL
                        END AS SLIDE_KEY_RE6
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (NULLIF(SLIDE_KEY_RE4, '') IS NOT NULL AND REGEXP_INSTR(BINARY SLIDE_KEY_RE4, '[a-z]+[;][A-Z]{1,2}[0-9]{1,3}[;][a-z]+') != 0)
                                THEN SLIDE_KEY_RE4
                                WHEN (NULLIF(SLIDE_KEY_RE4, '') IS NOT NULL AND REGEXP_INSTR(BINARY SLIDE_KEY_RE4, '[a-z]+[;][A-Z]{1,2}[0-9]{1,3}[-][A-Z]{1,2}[0-9]{1,3}[;][a-z]+') != 0)
                                THEN SLIDE_KEY_RE4
                                ELSE NULL
                            END AS SLIDE_KEY_RE5
                        FROM(
                            SELECT *,
                                CASE
                                    WHEN (NULLIF(SLIDE_KEY_RE3, '') IS NOT NULL)
                                    THEN SUBSTR(SLIDE_KEY_RE3, INSTR(SLIDE_KEY_RE3, REGEXP_SUBSTR(SLIDE_KEY_RE3, '[^;]+', 1, 2)))
                                    ELSE NULL
                                END AS SLIDE_KEY_RE4
                            FROM(
                                SELECT *,
                                    CASE
                                        WHEN (NULLIF(SLIDE_KEY_RE2, '') IS NOT NULL AND INSTR(SLIDE_KEY_RE2, '; ') != 0)
                                        THEN REPLACE(SLIDE_KEY_RE2, '; ', ';')
                                        ELSE SLIDE_KEY_RE2
                                    END AS SLIDE_KEY_RE3
                                FROM(
                                    SELECT *,
                                        CASE
                                            WHEN (NULLIF(SLIDE_KEY_RE1, '') IS NOT NULL)
                                            THEN REPLACE(SLIDE_KEY_RE1, ';;', ';')
                                            ELSE NULL
                                        END AS SLIDE_KEY_RE2
                                    FROM(
                                        SELECT *,
                                            CASE
                                                WHEN INSTR(RE_SLIDE_KEY, '  ') != 0
                                                THEN REPLACE(RE_SLIDE_KEY, '  ', '')
                                                WHEN INSTR(RE_SLIDE_KEY, '   ') != 0
                                                THEN REPLACE(RE_SLIDE_KEY, '   ', '')
                                                WHEN INSTR(RE_SLIDE_KEY, '    ') != 0
                                                THEN REPLACE(RE_SLIDE_KEY, '    ', '')
                                                WHEN INSTR(RE_SLIDE_KEY, '     ') != 0
                                                THEN REPLACE(RE_SLIDE_KEY, '     ', '')
                                                WHEN INSTR(RE_SLIDE_KEY, '      ') != 0
                                                THEN REPLACE(RE_SLIDE_KEY, '      ', '')
                                                WHEN INSTR(RE_SLIDE_KEY, '       ') != 0
                                                THEN REPLACE(RE_SLIDE_KEY, '       ', '')
                                                WHEN INSTR(RE_SLIDE_KEY, '        ') != 0
                                                THEN REPLACE(RE_SLIDE_KEY, '        ', '')
                                                WHEN INSTR(RE_SLIDE_KEY, '         ') != 0
                                                THEN REPLACE(RE_SLIDE_KEY, '         ', '')
                                                WHEN INSTR(RE_SLIDE_KEY, '          ') != 0
                                                THEN REPLACE(RE_SLIDE_KEY, '          ', '')
                                                WHEN INSTR(RE_SLIDE_KEY, '           ') != 0
                                                THEN REPLACE(RE_SLIDE_KEY, '           ', '')
                                                WHEN INSTR(RE_SLIDE_KEY, '            ') != 0
                                                THEN REPLACE(RE_SLIDE_KEY, '            ', '')
                                                WHEN INSTR(RE_SLIDE_KEY, '             ') != 0
                                                THEN REPLACE(RE_SLIDE_KEY, '             ', '')
                                                WHEN INSTR(RE_SLIDE_KEY, '              ') != 0
                                                THEN REPLACE(RE_SLIDE_KEY, '              ', '')
                                                WHEN INSTR(RE_SLIDE_KEY, '               ') != 0
                                                THEN REPLACE(RE_SLIDE_KEY, '               ', '')
                                                WHEN INSTR(RE_SLIDE_KEY, '                ') != 0
                                                THEN REPLACE(RE_SLIDE_KEY, '                ', '')
                                                WHEN INSTR(RE_SLIDE_KEY, '                 ') != 0
                                                THEN REPLACE(RE_SLIDE_KEY, '                 ', '')
                                                WHEN INSTR(RE_SLIDE_KEY, '                  ') != 0
                                                THEN REPLACE(RE_SLIDE_KEY, '                  ', '')
                                                WHEN INSTR(RE_SLIDE_KEY, '                   ') != 0
                                                THEN REPLACE(RE_SLIDE_KEY, '                   ', '')
                                                WHEN INSTR(RE_SLIDE_KEY, '                    ') != 0
                                                THEN REPLACE(RE_SLIDE_KEY, '                    ', '')
                                                WHEN INSTR(RE_SLIDE_KEY, '                     ') != 0
                                                THEN REPLACE(RE_SLIDE_KEY, '                     ', '')
                                                WHEN INSTR(RE_SLIDE_KEY, '                      ') != 0
                                                THEN REPLACE(RE_SLIDE_KEY, '                      ', '')
                                                WHEN INSTR(RE_SLIDE_KEY, '                       ') != 0
                                                THEN REPLACE(RE_SLIDE_KEY, '                       ', '')
                                                WHEN INSTR(RE_SLIDE_KEY, '                        ') != 0
                                                THEN REPLACE(RE_SLIDE_KEY, '                        ', '')
                                                WHEN INSTR(RE_SLIDE_KEY, '                         ') != 0
                                                THEN REPLACE(RE_SLIDE_KEY, '                         ', '')
                                                WHEN INSTR(RE_SLIDE_KEY, '                          ') != 0
                                                THEN REPLACE(RE_SLIDE_KEY, '                          ', '')
                                                WHEN INSTR(RE_SLIDE_KEY, '                           ') != 0
                                                THEN REPLACE(RE_SLIDE_KEY, '                           ', '')
                                                WHEN INSTR(RE_SLIDE_KEY, '                            ') != 0
                                                THEN REPLACE(RE_SLIDE_KEY, '                            ', '')
                                                WHEN INSTR(RE_SLIDE_KEY, '                             ') != 0
                                                THEN REPLACE(RE_SLIDE_KEY, '                             ', '')
                                                ELSE RE_SLIDE_KEY
                                            END AS SLIDE_KEY_RE1
                                        FROM(
                                            SELECT *,
                                                CASE
                                                    WHEN (NULLIF(SLIDE_KEYS, '') IS NOT NULL)
                                                    THEN REGEXP_REPLACE(SLIDE_KEYS, '[:|.|,]', ';')
                                                    ELSE NULL
                                                END AS RE_SLIDE_KEY
                                            FROM(
                                                SELECT *,
                                                    CASE
                                                        WHEN (NULLIF(SLIDE_KEY, '') IS NOT NULL AND INSTR(SLIDE_KEY, 'No.3') != 0)
                                                        THEN SUBSTRING_INDEX(SUBSTRING_INDEX(BINARY SLIDE1, 'No.3', 1), 'Slide key', -1)
                                                        ELSE SLIDE_KEY
                                                    END AS SLIDE_KEYS
                                                FROM(
                                                    SELECT *,
                                                        CASE
                                                            WHEN (NULLIF(SLIDE_KEY1, '') IS NOT NULL AND INSTR(SLIDE_KEY1, 'Slide key') != 0)
                                                            THEN SUBSTR(SLIDE_KEY1, INSTR(SLIDE_KEY1, 'Slide key'))
                                                            WHEN (NULLIF(SLIDE_KEY2, '') IS NOT NULL AND INSTR(SLIDE_KEY2, 'Slide key') != 0)
                                                            THEN SUBSTR(SLIDE_KEY2, INSTR(SLIDE_KEY2, 'Slide key'))
                                                            WHEN (NULLIF(SLIDE_KEY3, '') IS NOT NULL AND INSTR(SLIDE_KEY3, 'Slide key') != 0)
                                                            THEN SUBSTR(SLIDE_KEY3, INSTR(SLIDE_KEY3, 'Slide key'))
                                                            WHEN (NULLIF(SLIDE_KEY4, '') IS NOT NULL AND INSTR(SLIDE_KEY4, 'Slide key') != 0)
                                                            THEN SUBSTR(SLIDE_KEY4, INSTR(SLIDE_KEY4, 'Slide key'))
                                                            ELSE NULL
                                                        END AS SLIDE_KEY,
                                                        CASE
                                                            WHEN (NULLIF(SLIDE_KEY1, '') IS NOT NULL AND INSTR(SLIDE_KEY1, 'Slide key') = 0)
                                                            THEN SLIDE_KEY1
                                                            WHEN (NULLIF(SLIDE_KEY2, '') IS NOT NULL AND INSTR(SLIDE_KEY2, 'Slide key') = 0)
                                                            THEN SLIDE_KEY2
                                                            WHEN (NULLIF(SLIDE_KEY3, '') IS NOT NULL AND INSTR(SLIDE_KEY3, 'Slide key') = 0)
                                                            THEN SLIDE_KEY3
                                                            WHEN (NULLIF(SLIDE_KEY4, '') IS NOT NULL AND INSTR(SLIDE_KEY4, 'Slide key') = 0)
                                                            THEN SLIDE_KEY4
                                                            ELSE NULL
                                                        END AS SLIDE_ELSE
                                                    FROM(
                                                        SELECT *,
                                                            CASE
                                                                WHEN (NULLIF(SLIDE1, '') IS NOT NULL AND INSTR(SLIDE1, 'No.2') != 0)
                                                                THEN SUBSTRING_INDEX(SUBSTRING_INDEX(BINARY SLIDE1, 'No.2', 1), 'No.1', -1)
                                                                #THEN SUBSTR(SLIDE1, INSTR(BINARY SLIDE1, 'No.1'), INSTR(BINARY SLIDE1, 'No.2'))
                                                                ELSE NULL
                                                            END AS SLIDE_KEY1,
                                                            CASE
                                                                WHEN (NULLIF(SLIDE2, '') IS NOT NULL AND INSTR(SLIDE2, 'slide key') != 0)
                                                                THEN SLIDE2
                                                                ELSE NULL
                                                            END AS SLIDE_KEY2,
                                                            CASE
                                                                WHEN (NULLIF(SLIDE3, '') IS NOT NULL AND INSTR(BINARY SLIDE3, 'No.3') != 0)
                                                                THEN SUBSTRING_INDEX(SUBSTRING_INDEX(BINARY SLIDE3, 'No.2', 1), 'No.1', -1)
                                                                ELSE NULL
                                                            END AS SLIDE_KEY3,
                                                            CASE
                                                                WHEN (NULLIF(SLIDE3, '') IS NOT NULL AND INSTR(BINARY SLIDE3, 'No.3') = 0)
                                                                THEN SUBSTR(BINARY SLIDE3, INSTR(BINARY SLIDE3, 'No.2'))
                                                                ELSE NULL
                                                            END AS SLIDE_KEY4
                                                        FROM test_type6_a1
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