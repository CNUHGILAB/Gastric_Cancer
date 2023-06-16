SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    CD31nD240,
    CD31nD240_Comment,
    CD31,
    CD31_Comment,
    D240,
    D240_Comment
FROM(
    SELECT *,
        CASE 
            WHEN REGEXP_INSTR(CD31nD240_C, '[(|)|,]') != 0
            THEN REPLACE(
                CD31nD240_C,
                SUBSTR(CD31nD240_C, REGEXP_INSTR(CD31nD240_C, '[(|)|,]')),
                ''
            )
            ELSE NULL
        END AS CD31nD240_Comment,
        CASE 
            WHEN REGEXP_INSTR(CD31_C, '[(|)|,]') != 0
            THEN REPLACE(
                CD31_C,
                SUBSTR(CD31_C, REGEXP_INSTR(CD31_C, '[(|)|,]')),
                ''
            )
            ELSE NULL
        END AS CD31_Comment,
        CASE 
            WHEN REGEXP_INSTR(D240_C, '[(|)|,]') != 0
            THEN REPLACE(
                D240_C,
                SUBSTR(D240_C, REGEXP_INSTR(D240_C, '[(|)|,]')),
                ''
            )
            ELSE NULL
        END AS D240_Comment
    FROM(
        SELECT *,
            CASE 
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(CD31nD240_1, '[^:]+', 1, 2), '^ [(][A-z]+') != 0
                THEN REPLACE(
                    REPLACE(
                        REGEXP_SUBSTR(CD31nD240_1, '[^:]+', 1, 2), ' (', ''
                    ), ')', ''
                )
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(CD31nD240_1, '[^:]+', 1, 2), '^ [(][+|-][)] ') != 0
                THEN REPLACE(
                    SUBSTR(REGEXP_SUBSTR(CD31nD240_1, '[^:]+', 1, 2), INSTR(REGEXP_SUBSTR(CD31nD240_1, '[^:]+', 1, 2), ') ')),
                    ') ', ''
                )
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(CD31nD240_1, '[^:]+', 1, 2), '^ [(] [(][+|-][)]') != 0
                THEN REPLACE(
                    SUBSTR(REGEXP_SUBSTR(CD31nD240_1, '[^:]+', 1, 2), INSTR(REGEXP_SUBSTR(CD31nD240_1, '[^:]+', 1, 2), ') ')),
                    ') ', ''
                )
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(CD31nD240_1, '[^:]+', 1, 2), '[(][+|-][,]') != 0
                THEN REGEXP_REPLACE(
                    REGEXP_SUBSTR(REGEXP_SUBSTR(CD31nD240_1, '[^:]+', 1, 2), '[^,]+', 1, 2),
                    '^ ', ''
                )
                WHEN REGEXP_INSTR(CD31nD240_2, '[(][+|-][,]') != 0
                THEN REGEXP_REPLACE(
                    REGEXP_SUBSTR(CD31nD240_2, '[^,]+', 1, 2),
                    '^ ', ''
                )
                ELSE NULL
            END AS CD31nD240_C,
            CASE 
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(CD31_1, '[^:]+', 1, 2), '^ [(][A-z]+') != 0
                THEN REPLACE(
                    REGEXP_SUBSTR(CD31_1, '[^:]+', 1, 2),
                    ' (', ''
                )
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(CD31_1, '[^:]+', 1, 2), '^ [A-z]+') != 0
                THEN REGEXP_REPLACE(
                    REGEXP_SUBSTR(CD31_1, '[^:]+', 1, 2),
                    '^ ', ''
                )
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(CD31_1, '[^:]+', 1, 2), '^ [(][+|-][)] [A-z]+') != 0
                THEN REPLACE(
                    SUBSTR(REGEXP_SUBSTR(CD31_1, '[^:]+', 1, 2), INSTR(REGEXP_SUBSTR(CD31_1, '[^:]+', 1, 2), ') ')),
                    ') ', ''
                )
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(CD31_1, '[^:]+', 1, 2), '[(][+|-][,]') != 0
                THEN REGEXP_REPLACE(
                    REGEXP_SUBSTR(REGEXP_SUBSTR(CD31_1, '[^:]+', 1, 2), '[^,]+', 1, 2),
                    '^ ', ''
                )
                WHEN REGEXP_INSTR(CD31_2, ' [(][A-z]+') != 0 AND REGEXP_INSTR(CD31_2, ' [(]a[0-9]+') = 0
                THEN REPLACE(
                    SUBSTR(CD31_2, INSTR(CD31_2, ' (')),
                    ' (', ''
                )
                ELSE NULL
            END AS CD31_C,
            CASE 
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(D240_1, '[^:]+', 1, 2), '^ [(][+|-][)] [A-z]+') != 0
                THEN REPLACE(
                    SUBSTR(REGEXP_SUBSTR(D240_1, '[^:]+', 1, 2), INSTR(REGEXP_SUBSTR(D240_1, '[^:]+', 1, 2), ') ')),
                    ') ', ''
                )
                WHEN REGEXP_INSTR(REGEXP_SUBSTR(D240_1, '[^:]+', 1, 2), '[(][+|-][,]') != 0
                THEN REGEXP_REPLACE(
                    REGEXP_SUBSTR(D240_1, '[^,]+', 1, 2),
                    '^ ', ''
                )
                WHEN REGEXP_INSTR(D240_2, ' [(][A-z]+') != 0
                THEN REPLACE(
                    SUBSTR(D240_2, INSTR(D240_1, ' (')),
                    ' (', ''
                )
                ELSE NULL
            END AS D240_C
        FROM(
            SELECT *,
                CASE 
                    WHEN INSTR(REGEXP_SUBSTR(CD31nD240_1, '[^:]+', 1, 2), '(+)') != 0
                        OR INSTR(REGEXP_SUBSTR(CD31nD240_1, '[^:]+', 1, 2), '(+,') != 0
                    THEN '+'
                    WHEN INSTR(REGEXP_SUBSTR(CD31nD240_1, '[^:]+', 1, 2), '(-)') != 0
                        OR INSTR(REGEXP_SUBSTR(CD31nD240_1, '[^:]+', 1, 2), '(-,') != 0
                    THEN '-'
                    WHEN INSTR(CD31nD240_2, ' (+)') != 0
                        OR INSTR(CD31nD240_2, ' (+,') != 0
                    THEN '+'
                    WHEN INSTR(CD31nD240_2, ' (-)') != 0
                        OR INSTR(CD31nD240_2, ' (-,') != 0
                    THEN '-'
                    ELSE NULL
                END AS CD31nD240,
                CASE 
                    WHEN INSTR(REGEXP_SUBSTR(CD31_1, '[^:]+', 1, 2), '(+)') != 0
                        OR INSTR(REGEXP_SUBSTR(CD31_1, '[^:]+', 1, 2), '(+,') != 0
                    THEN '+'
                    WHEN REGEXP_INSTR(REGEXP_SUBSTR(CD31_1, '[^:]+', 1, 2), '[(|)]') = 0
                        OR INSTR(REGEXP_SUBSTR(CD31_1, '[^:]+', 1, 2), '+') != 0
                    THEN '+'
                    WHEN INSTR(REGEXP_SUBSTR(CD31_1, '[^:]+', 1, 2), '(-)') != 0
                        OR INSTR(REGEXP_SUBSTR(CD31_1, '[^:]+', 1, 2), '(-,') != 0
                    THEN '-'
                    WHEN REGEXP_INSTR(REGEXP_SUBSTR(CD31_1, '[^:]+', 1, 2), '[(|)]') = 0
                        OR INSTR(REGEXP_SUBSTR(CD31_1, '[^:]+', 1, 2), '-') != 0
                    THEN '-'
                    WHEN INSTR(CD31_2, '(+)') != 0
                        OR INSTR(CD31_2, '(+,') != 0
                    THEN '+'
                    WHEN INSTR(CD31_2, '(-)') != 0
                        OR INSTR(CD31_2, '(-,') != 0
                    THEN '-'
                    ELSE NULL
                END AS CD31,
                CASE 
                    WHEN INSTR(REGEXP_SUBSTR(D240_1, '[^:]+', 1, 2), '(+)') != 0
                        OR INSTR(REGEXP_SUBSTR(D240_1, '[^:]+', 1, 2), '(+,') != 0
                    THEN '+'
                    WHEN INSTR(REGEXP_SUBSTR(D240_1, '[^:]+', 1, 2), '(-)') != 0
                        OR INSTR(REGEXP_SUBSTR(D240_1, '[^:]+', 1, 2), '(-,') != 0
                    THEN '-'
                    WHEN INSTR(D240_2, '(+)') != 0
                        OR INSTR(D240_2, '(+,') != 0
                    THEN '+'
                    WHEN INSTR(D240_2, '(-)') != 0
                        OR INSTR(D240_2, '(-,') != 0
                    THEN '-'
                    ELSE NULL
                END AS D240
            FROM(
                SELECT *,
                    CASE 
                        WHEN INSTR(`SUBSTR(D240)`, ':') != 0
                        THEN `SUBSTR(D240)`
                        ELSE NULL
                    END AS D240_1,
                    CASE 
                        WHEN INSTR(`SUBSTR(D240)`, ':') = 0
                        THEN `SUBSTR(D240)`
                        ELSE NULL
                    END AS D240_2
                FROM(
                    SELECT *,
                        CASE 
                            WHEN INSTR(`SUBSTR(CD31)`, ':') != 0
                            THEN `SUBSTR(CD31)`
                            ELSE NULL
                        END AS CD31_1,
                        CASE 
                            WHEN INSTR(`SUBSTR(CD31)`, ':') = 0
                            THEN `SUBSTR(CD31)`
                            ELSE NULL
                        END AS CD31_2
                    FROM(
                        SELECT *,
                            CASE 
                                WHEN INSTR(`SUBSTR(CD31nD240)`, ':') != 0
                                THEN `SUBSTR(CD31nD240)`
                                ELSE NULL
                            END AS CD31nD240_1,
                            CASE 
                                WHEN INSTR(`SUBSTR(CD31nD240)`, ':') = 0
                                THEN `SUBSTR(CD31nD240)`
                                ELSE NULL
                            END AS CD31nD240_2
                        FROM genetic_06_01
                    ) a
                ) a
            ) a
        ) a
    ) a
) a