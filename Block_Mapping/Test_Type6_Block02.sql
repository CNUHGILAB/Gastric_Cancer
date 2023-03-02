SELECT
    원무접수ID,
    환자번호,
    RE_BLOCK_YES,
    RE_BLOCK_ELSE,
    RE_BLOCK_NO
FROM(
    SELECT *,
        CASE
            WHEN (INSTR(RE_BLOCK_ELSE6, 'labelee') != 0)
            THEN REPLACE(RE_BLOCK_ELSE6, 'labelee', 'labeled')
            ELSE RE_BLOCK_ELSE6
        END AS RE_BLOCK_ELSE
    FROM(
        SELECT *,
            CASE
                WHEN (INSTR(RE_BLOCK_ELSE5, 'albeled') != 0)
                THEN REPLACE(RE_BLOCK_ELSE5, 'albeled', 'labeled')
                ELSE RE_BLOCK_ELSE5
            END AS RE_BLOCK_ELSE6
        FROM(
            SELECT *,
                CASE
                    WHEN (INSTR(RE_BLOCK_ELSE4, 'laabeled') != 0)
                    THEN REPLACE(RE_BLOCK_ELSE4, 'laabeled', 'labeled')
                END AS RE_BLOCK_ELSE5
            FROM(
                SELECT *,
                    CASE
                        WHEN (INSTR(RE_BLOCK_ELSE3, 'labled') != 0)
                        THEN REPLACE(RE_BLOCK_ELSE3, 'labled', 'labeled')
                    END AS RE_BLOCK_ELSE4
                FROM(
                    SELECT *,
                        CASE
                            WHEN (INSTR(RE_BLOCK_ELSE2, 'labele ') != 0)
                            THEN REPLACE(RE_BLOCK_ELSE2, 'labele ', 'labeled')
                            ELSE RE_BLOCK_ELSE2
                        END AS RE_BLOCK_ELSE3
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (INSTR(RE_BLOCK_ELSE1, 'albeled') != 0)
                                THEN REPLACE(RE_BLOCK_ELSE1, 'albeled', 'labeled')
                                ELSE RE_BLOCK_ELSE1
                            END AS RE_BLOCK_ELSE2
                        FROM(
                            SELECT *,
                                CASE
                                    WHEN (NULLIF(RE_BLOCK_YES1, '') IS NOT NULL AND NULLIF(RE_BLOCK_YES, '') IS NULL)
                                    THEN RE_BLOCK_YES1
                                    ELSE NULL
                                END AS RE_BLOCK_ELSE1
                            FROM(
                                SELECT *,
                                    CASE
                                        WHEN (INSTR(RE_BLOCK_YES7, 'labelee') != 0)
                                        THEN REPLACE(RE_BLOCK_YES7, 'labelee', 'labeled')
                                        ELSE RE_BLOCK_YES7
                                    END AS RE_BLOCK_YES
                                FROM(
                                    SELECT *,
                                        CASE
                                            WHEN (INSTR(RE_BLOCK_YES6, 'albeled') != 0)
                                            THEN REPLACE(RE_BLOCK_YES6, 'albeled', 'labeled')
                                            ELSE RE_BLOCK_YES6
                                        END AS RE_BLOCK_YES7
                                    FROM(
                                        SELECT *,
                                            CASE
                                                WHEN (INSTR(RE_BLOCK_YES5, 'laabeled') != 0)
                                                THEN REPLACE(RE_BLOCK_YES5, 'laabeled', 'labeled')
                                                ELSE RE_BLOCK_YES5
                                            END AS RE_BLOCK_YES6
                                        FROM(
                                            SELECT *,
                                                CASE
                                                    WHEN (INSTR(RE_BLOCK_YES4, 'labled') != 0)
                                                    THEN REPLACE(RE_BLOCK_YES4, 'labled', 'labeled')
                                                    ELSE RE_BLOCK_YES4
                                                END AS RE_BLOCK_YES5
                                            FROM(
                                                SELECT *,
                                                    CASE
                                                        WHEN (INSTR(RE_BLOCK_YES3, 'labele ') != 0)
                                                        THEN REPLACE(RE_BLOCK_YES3, 'labele ', 'labeled ')
                                                        ELSE RE_BLOCK_YES3
                                                    END AS RE_BLOCK_YES4
                                                FROM(
                                                    SELECT *,
                                                        CASE
                                                            WHEN (INSTR(RE_BLOCK_YES2, 'albeled') != 0)
                                                            THEN REPLACE(RE_BLOCK_YES2, 'albeled', 'labeled')
                                                            ELSE RE_BLOCK_YES2
                                                        END AS RE_BLOCK_YES3
                                                    FROM(
                                                        SELECT *,
                                                            CASE
                                                                WHEN (NULLIF(RE_BLOCK_YES1, '') IS NOT NULL AND REGEXP_INSTR(BINARY RE_BLOCK_YES1, 'No[.][0-9][-][0-9][;]') != 0)
                                                                THEN NULL
                                                                WHEN (NULLIF(RE_BLOCK_YES1, '') IS NOT NULL AND REGEXP_INSTR(BINARY RE_BLOCK_YES1, 'No[.][0-9][,][0-9][;]') != 0)
                                                                THEN NULL
                                                                WHEN (NULLIF(RE_BLOCK_YES1, '') IS NOT NULL AND REGEXP_INSTR(BINARY RE_BLOCK_YES1, 'No[.][0-9][,][0-9],[0-9][;]') != 0)
                                                                THEN NULL
                                                                ELSE RE_BLOCK_YES1
                                                            END AS RE_BLOCK_YES2
                                                        FROM(
                                                            SELECT *,
                                                                CASE
                                                                    WHEN (NULLIF(SAMPLE_BLOCK_YES, '') IS NOT NULL)
                                                                    THEN REPLACE(SAMPLE_BLOCK_YES, ':', ';')
                                                                    ELSE SAMPLE_BLOCK_YES
                                                                END AS RE_BLOCK_YES1,
                                                                CASE 
                                                                    WHEN (NULLIF(SAMPLE_BLOCK_NO, '') IS NOT NULL)
                                                                    THEN REPLACE(SAMPLE_BLOCK_NO, ':', ';')
                                                                    ELSE SAMPLE_BLOCK_NO
                                                                END AS RE_BLOCK_NO
                                                            FROM test_type6_block_01
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