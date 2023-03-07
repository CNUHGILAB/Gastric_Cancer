SELECT
    원무접수ID,
    TRIM(BOTH FROM SUBSTR(CK, 1, INSTR(CK, ',') -1)) AS CK_1,
    TRIM(BOTH FROM REPLACE(SUBSTR(CK, INSTR(CK, ',') + 1), ',', '')) AS CK_2
FROM(
    SELECT
        원무접수ID,
        REGEXP_REPLACE(
            REPLACE(
                REPLACE(
                    REPLACE(
                        CK, 'no tumor metAStASis in lymph nodes (A13-A15 B)', ''
                    ), '-', '-,'
                ), '+', '+,'
            ), '[(|)|.|:|;|/|!|]', ''
        ) AS CK
    FROM(
        SELECT
            원무접수ID,
            CASE
                WHEN (((LENGTH(CK) - LENGTH(REPLACE(CK, '!', ''))) / LENGTH('!')) > 1)
                THEN SUBSTR(CK, INSTR(CK, '!('), INSTR(CK, ')'))
                WHEN (((LENGTH(CK) - LENGTH(REPLACE(CK, '!', ''))) / LENGTH('!')) = 1)
                THEN SUBSTR(CK, INSTR(CK, '!'))
                ELSE CK
            END AS CK
        FROM(
            SELECT
                원무접수ID,
                CASE
                    WHEN (INSTR(CK, '&') != 0 OR INSTR(CK, 'and') != 0)
                    THEN REPLACE(CK, '(', '!(')
                    WHEN INSTR(CK, ':') != 0
                    THEN REPLACE(CK, ':', '!(')
                    WHEN INSTR(CK, ';') != 0
                    THEN REPLACE(CK, ';', '!(')
                    ELSE CONCAT(
                        CONCAT(
                            SUBSTR(
                                CK, INSTR(CK, 'CK'), LENGTH('CK')
                            ), '!'
                        ), SUBSTR(CK, INSTR(CK, 'CK') + LENGTH('CK') + 1)
                    )
                END AS CK
            FROM(
                SELECT
                    원무접수ID,
                    REPLACE(
                        REPLACE(
                            REPLACE(
                                CK, 'positive', '(+)'
                            ), 'negative', '(-)'
                        ), ',', ''
                    ) AS CK
                FROM genetic_12
            ) genetic
        ) genetic
    ) genetic
) genetic