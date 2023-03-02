SELECT
    원무접수ID,
    환자번호,
    BLOCK1,
    BLOCK2,
    BLOCK3,
    BLOCK4,
    BLOCK5,
    BLOCK6
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(BLOCK_1, '') IS NOT NULL AND INSTR(BLOCK_1, '  ') != 0)
            THEN REPLACE(BLOCK_1, '  ', ' ')
            WHEN (NULLIF(BLOCK_1, '') IS NOT NULL AND INSTR(BLOCK_1, '   ') != 0)
            THEN REPLACE(BLOCK_1, '   ', ' ')
            WHEN (NULLIF(BLOCK_1, '') IS NOT NULL AND INSTR(BLOCK_1, '    ') != 0)
            THEN REPLACE(BLOCK_1, '    ', ' ')
            WHEN (NULLIF(BLOCK_1, '') IS NOT NULL AND INSTR(BLOCK_1, '     ') != 0)
            THEN REPLACE(BLOCK_1, '     ', ' ')
            ELSE BLOCK_1
        END AS BLOCK1,
        CASE
            WHEN (NULLIF(BLOCK_2, '') IS NOT NULL AND INSTR(BLOCK_2, '  ') != 0)
            THEN REPLACE(BLOCK_2, '  ', ' ')
            WHEN (NULLIF(BLOCK_2, '') IS NOT NULL AND INSTR(BLOCK_2, '   ') != 0)
            THEN REPLACE(BLOCK_2, '   ', ' ')
            WHEN (NULLIF(BLOCK_2, '') IS NOT NULL AND INSTR(BLOCK_2, '    ') != 0)
            THEN REPLACE(BLOCK_2, '    ', ' ')
            WHEN (NULLIF(BLOCK_2, '') IS NOT NULL AND INSTR(BLOCK_2, '     ') != 0)
            THEN REPLACE(BLOCK_2, '     ', ' ')
            ELSE BLOCK_2
        END AS BLOCK2,
        CASE
            WHEN (NULLIF(BLOCK_3, '') IS NOT NULL AND INSTR(BLOCK_3, '  ') != 0)
            THEN REPLACE(BLOCK_3, '  ', ' ')
            WHEN (NULLIF(BLOCK_3, '') IS NOT NULL AND INSTR(BLOCK_3, '   ') != 0)
            THEN REPLACE(BLOCK_3, '   ', ' ')
            WHEN (NULLIF(BLOCK_3, '') IS NOT NULL AND INSTR(BLOCK_3, '    ') != 0)
            THEN REPLACE(BLOCK_3, '    ', ' ')
            WHEN (NULLIF(BLOCK_3, '') IS NOT NULL AND INSTR(BLOCK_3, '     ') != 0)
            THEN REPLACE(BLOCK_3, '     ', ' ')
            ELSE BLOCK_3
        END AS BLOCK3,
        CASE
            WHEN (NULLIF(BLOCK_4, '') IS NOT NULL AND INSTR(BLOCK_4, '  ') != 0)
            THEN REPLACE(BLOCK_4, '  ', ' ')
            WHEN (NULLIF(BLOCK_4, '') IS NOT NULL AND INSTR(BLOCK_4, '   ') != 0)
            THEN REPLACE(BLOCK_4, '   ', ' ')
            WHEN (NULLIF(BLOCK_4, '') IS NOT NULL AND INSTR(BLOCK_4, '    ') != 0)
            THEN REPLACE(BLOCK_4, '    ', ' ')
            WHEN (NULLIF(BLOCK_4, '') IS NOT NULL AND INSTR(BLOCK_4, '     ') != 0)
            THEN REPLACE(BLOCK_4, '     ', ' ')
            ELSE BLOCK_4
        END AS BLOCK4,
        CASE
            WHEN (NULLIF(BLOCK_5, '') IS NOT NULL AND INSTR(BLOCK_5, '  ') != 0)
            THEN REPLACE(BLOCK_5, '  ', ' ')
            WHEN (NULLIF(BLOCK_5, '') IS NOT NULL AND INSTR(BLOCK_5, '   ') != 0)
            THEN REPLACE(BLOCK_5, '   ', ' ')
            WHEN (NULLIF(BLOCK_5, '') IS NOT NULL AND INSTR(BLOCK_5, '    ') != 0)
            THEN REPLACE(BLOCK_5, '    ', ' ')
            WHEN (NULLIF(BLOCK_5, '') IS NOT NULL AND INSTR(BLOCK_5, '     ') != 0)
            THEN REPLACE(BLOCK_5, '     ', ' ')
            ELSE BLOCK_5
        END AS BLOCK5,
        CASE
            WHEN (NULLIF(BLOCK_6, '') IS NOT NULL AND INSTR(BLOCK_6, '  ') != 0)
            THEN REPLACE(BLOCK_6, '  ', ' ')
            WHEN (NULLIF(BLOCK_6, '') IS NOT NULL AND INSTR(BLOCK_6, '   ') != 0)
            THEN REPLACE(BLOCK_6, '   ', ' ')
            WHEN (NULLIF(BLOCK_6, '') IS NOT NULL AND INSTR(BLOCK_6, '    ') != 0)
            THEN REPLACE(BLOCK_6, '    ', ' ')
            WHEN (NULLIF(BLOCK_6, '') IS NOT NULL AND INSTR(BLOCK_6, '     ') != 0)
            THEN REPLACE(BLOCK_6, '     ', ' ')
            ELSE BLOCK_6
        END AS BLOCK6
    FROM(
        SELECT *,
            CASE
                WHEN (REGEXP_INSTR(NUM1, '^[#][0-9]') != 0 OR REGEXP_INSTR(NUM1, '^[0-9][)]') != 0 OR REGEXP_INSTR(BINARY NUM1, '^No[0-9]') != 0) AND (INSTR(BLOCK_2, '★') = 0)
                THEN NUM1
                WHEN (REGEXP_INSTR(NUM1, '^[#][0-9]') != 0 OR REGEXP_INSTR(NUM1, '^[0-9][)]') != 0 OR REGEXP_INSTR(BINARY NUM1, '^No[0-9]') != 0) AND (NULLIF(BLOCK_2, '') IS NULL)
                THEN NUM1
                WHEN (REGEXP_INSTR(NUM1, '^[#][0-9]') != 0 OR REGEXP_INSTR(NUM1, '^[0-9][)]') != 0 OR REGEXP_INSTR(BINARY NUM1, '^No[0-9]') != 0) AND (INSTR(BLOCK_2, '★') != 0)
                THEN REPLACE(
                    CONCAT(
                        CONCAT(
                            NUM1, ' '
                        ), BLOCK_2
                    ), '★', ''
                )
                ELSE CONCAT(NUM1, '★')
            END AS BLOCK_1
        FROM(
            SELECT *,
                CASE
                    WHEN (REGEXP_INSTR(NUM2, '^[#][0-9]') != 0 OR REGEXP_INSTR(NUM2, '^[0-9][)]') != 0 OR REGEXP_INSTR(BINARY NUM2, '^No[0-9]') != 0) AND (INSTR(BLOCK_3, '★') = 0)
                    THEN NUM2
                    WHEN (REGEXP_INSTR(NUM2, '^[#][0-9]') != 0 OR REGEXP_INSTR(NUM2, '^[0-9][)]') != 0 OR REGEXP_INSTR(BINARY NUM2, '^No[0-9]') != 0) AND (NULLIF(BLOCK_3, '') IS NULL)
                    THEN NUM2
                    WHEN (REGEXP_INSTR(NUM2, '^[#][0-9]') != 0 OR REGEXP_INSTR(NUM2, '^[0-9][)]') != 0 OR REGEXP_INSTR(BINARY NUM2, '^No[0-9]') != 0) AND (INSTR(BLOCK_3, '★') != 0)
                    THEN REPLACE(
                        CONCAT(
                            CONCAT(
                                NUM2, ' '
                            ), BLOCK_3
                        ), '★', ''
                    )
                    ELSE CONCAT(NUM2, '★')
                END AS BLOCK_2
            FROM(
                SELECT *,
                    CASE
                        WHEN (REGEXP_INSTR(NUM3, '^[#][0-9]') != 0 OR REGEXP_INSTR(NUM3, '^[0-9][)]') != 0 OR REGEXP_INSTR(BINARY NUM3, '^No[0-9]') != 0) AND (INSTR(BLOCK_4, '★') = 0)
                        THEN NUM3
                        WHEN (REGEXP_INSTR(NUM3, '^[#][0-9]') != 0 OR REGEXP_INSTR(NUM3, '^[0-9][)]') != 0 OR REGEXP_INSTR(BINARY NUM3, '^No[0-9]') != 0) AND (NULLIF(BLOCK_4, '') IS NULL)
                        THEN NUM3
                        WHEN (REGEXP_INSTR(NUM3, '^[#][0-9]') != 0 OR REGEXP_INSTR(NUM3, '^[0-9][)]') != 0 OR REGEXP_INSTR(BINARY NUM3, '^No[0-9]') != 0) AND (INSTR(BLOCK_4, '★') != 0)
                        THEN REPLACE(
                            CONCAT(
                                CONCAT(
                                    NUM3, ' '
                                ), BLOCK_4
                            ), '★', ''
                        )
                        ELSE CONCAT(NUM3, '★')
                    END AS BLOCK_3
                FROM(
                    SELECT *,
                        CASE
                            WHEN (REGEXP_INSTR(NUM4, '^[#][0-9]') != 0 OR REGEXP_INSTR(NUM4, '^[0-9][)]') != 0 OR REGEXP_INSTR(BINARY NUM4, '^No[0-9]') != 0) AND (INSTR(BLOCK_5, '★') = 0)
                            THEN NUM4
                            WHEN (REGEXP_INSTR(NUM4, '^[#][0-9]') != 0 OR REGEXP_INSTR(NUM4, '^[0-9][)]') != 0 OR REGEXP_INSTR(BINARY NUM4, '^No[0-9]') != 0) AND (NULLIF(BLOCK_5, '') IS NULL)
                            THEN NUM4
                            WHEN (REGEXP_INSTR(NUM4, '^[#][0-9]') != 0 OR REGEXP_INSTR(NUM4, '^[0-9][)]') != 0 OR REGEXP_INSTR(BINARY NUM4, '^No[0-9]') != 0) AND (INSTR(BLOCK_5, '★') != 0)
                            THEN REPLACE(
                                CONCAT(
                                    CONCAT(
                                        NUM4, ' '
                                    ), BLOCK_5
                                ), '★', ''
                            )
                            ELSE CONCAT(NUM4, '★')
                        END AS BLOCK_4
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (REGEXP_INSTR(NUM5, '^[#][0-9]') != 0 OR REGEXP_INSTR(NUM5, '^[0-9][)]') != 0 OR REGEXP_INSTR(BINARY NUM5, '^No[0-9]') != 0) AND (INSTR(BLOCK_6, '★') = 0)
                                THEN NUM5
                                WHEN (REGEXP_INSTR(NUM5, '^[#][0-9]') != 0 OR REGEXP_INSTR(NUM5, '^[0-9][)]') != 0 OR REGEXP_INSTR(BINARY NUM5, '^No[0-9]') != 0) AND (NULLIF(BLOCK_6, '') IS NULL)
                                THEN NUM5
                                WHEN (REGEXP_INSTR(NUM5, '^[#][0-9]') != 0 OR REGEXP_INSTR(NUM5, '^[0-9][)]') != 0 OR REGEXP_INSTR(BINARY NUM5, '^No[0-9]') != 0) AND (INSTR(BLOCK_6, '★') != 0)
                                THEN REPLACE(
                                    CONCAT(
                                        CONCAT(
                                            NUM5, ' '
                                        ), BLOCK_6
                                    ), '★', ''
                                )
                                ELSE CONCAT(NUM5, '★')
                            END AS BLOCK_5
                        FROM(
                            SELECT *,
                                CASE
                                    WHEN (REGEXP_INSTR(NUM6, '^[#][0-9]') != 0 OR REGEXP_INSTR(NUM6, '^[0-9][)]') != 0 OR REGEXP_INSTR(BINARY NUM6, '^No[0-9]') != 0)
                                    THEN NUM6
                                    ELSE CONCAT(NUM6, '★')
                                END AS BLOCK_6
                            FROM test_type5_block_01
                        ) a
                    ) a
                ) a
            ) a
        ) a
    ) a
) a