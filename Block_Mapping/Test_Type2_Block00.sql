SELECT
    DISTINCT 원무접수ID,
    환자번호,
    SAMPLE_BLOCK
FROM(
    SELECT *,
        CASE 
            WHEN (INSTR(SAMPLE_BLOCK15, 'black') != 0)
            THEN REPLACE(SAMPLE_BLOCK15, 'black', 'block')
            ELSE SAMPLE_BLOCK15
        END AS SAMPLE_BLOCK
    FROM(
        SELECT *,
            CASE 
                WHEN (INSTR(SAMPLE_BLOCK14, 'blcok') != 0)
                THEN REPLACE(SAMPLE_BLOCK14, 'blcok', 'block')
                ELSE SAMPLE_BLOCK14
            END AS SAMPLE_BLOCK15
        FROM(
            SELECT *,
                CASE 
                    WHEN (INSTR(BINARY SAMPLE_BLOCK13, 'Block') != 0)
                    THEN REPLACE(BINARY SAMPLE_BLOCK13, 'Block', 'block')
                    ELSE SAMPLE_BLOCK13
                END AS SAMPLE_BLOCK14
            FROM(
                SELECT *,
                    CASE 
                        WHEN (INSTR(SAMPLE_BLOCK12, 'bolck') != 0)
                        THEN REPLACE(SAMPLE_BLOCK12, 'bolck', 'block')
                        ELSE SAMPLE_BLOCK12
                    END AS SAMPLE_BLOCK13
                FROM(
                    SELECT *,
                        CASE
                            WHEN (INSTR(SAMPLE_BLOCK11, 'labeeld') != 0)
                            THEN REPLACE(SAMPLE_BLOCK11, 'labeeld', 'labeled')
                            ELSE SAMPLE_BLOCK11
                        END AS SAMPLE_BLOCK12
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (INSTR(SAMPLE_BLOCK10, 'lbaeled') != 0)
                                THEN REPLACE(SAMPLE_BLOCK10, 'lbaeled', 'labeled')
                                ELSE SAMPLE_BLOCK10
                            END AS SAMPLE_BLOCK11
                        FROM(
                            SELECT *,
                                CASE
                                    WHEN (INSTR(SAMPLE_BLOCK9, 'labelee') != 0)
                                    THEN REPLACE(SAMPLE_BLOCK9, 'labelee', 'labeled')
                                    ELSE SAMPLE_BLOCK9
                                END AS SAMPLE_BLOCK10
                            FROM(
                                SELECT *,
                                    CASE
                                        WHEN (INSTR(SAMPLE_BLOCK8, 'albeled') != 0)
                                        THEN REPLACE(SAMPLE_BLOCK8, 'albeled', 'labeled')
                                        ELSE SAMPLE_BLOCK8
                                    END AS SAMPLE_BLOCK9
                                FROM(
                                    SELECT *,
                                        CASE
                                            WHEN (INSTR(SAMPLE_BLOCK7, 'laabeled') != 0)
                                            THEN REPLACE(SAMPLE_BLOCK7, 'laabeled', 'labeled')
                                            ELSE SAMPLE_BLOCK7
                                        END AS SAMPLE_BLOCK8
                                    FROM(
                                        SELECT *,
                                            CASE
                                                WHEN (INSTR(SAMPLE_BLOCK6, 'labled') != 0)
                                                THEN REPLACE(SAMPLE_BLOCK6, 'labled', 'labeled')
                                                ELSE SAMPLE_BLOCK6
                                            END AS SAMPLE_BLOCK7
                                        FROM(
                                            SELECT *,
                                                CASE
                                                    WHEN (INSTR(SAMPLE_BLOCK5, 'labele ') != 0)
                                                    THEN REPLACE(SAMPLE_BLOCK5, 'labele ', 'labeled')
                                                    ELSE SAMPLE_BLOCK5
                                                END AS SAMPLE_BLOCK6
                                            FROM(
                                                SELECT *,
                                                    CASE
                                                        WHEN (INSTR(SAMPLE_BLOCK4, 'albeled') != 0)
                                                        THEN REPLACE(SAMPLE_BLOCK4, 'albeled', 'labeled')
                                                        ELSE SAMPLE_BLOCK4
                                                    END AS SAMPLE_BLOCK5
                                                FROM(
                                                    SELECT *,
                                                        CASE 
                                                            WHEN (INSTR(SAMPLE_BLOCK3, 'labelded') != 0)
                                                            THEN REPLACE(SAMPLE_BLOCK3, 'labelded', 'labeled')
                                                            ELSE SAMPLE_BLOCK3
                                                        END AS SAMPLE_BLOCK4
                                                    FROM(
                                                        SELECT *,
                                                            CASE 
                                                                WHEN (INSTR(SAMPLE_BLOCK2, '\n') != 0)
                                                                THEN REPLACE(SAMPLE_BLOCK2, '\n', ' ')
                                                                ELSE SAMPLE_BLOCK2
                                                            END AS SAMPLE_BLOCK3
                                                        FROM(
                                                            SELECT *,
                                                                CASE 
                                                                    WHEN (INSTR(SAMPLE_BLOCK1, ':') != 0)
                                                                    THEN REPLACE(SAMPLE_BLOCK1, ':', ';')
                                                                    ELSE SAMPLE_BLOCK1
                                                                END AS SAMPLE_BLOCK2
                                                            FROM(
                                                                SELECT *,
                                                                    CASE 
                                                                        WHEN (NULLIF(SAMPLE_BLOCK0, '') IS NOT NULL AND INSTR(SAMPLE_BLOCK0, '2) ') != 0)
                                                                        THEN SUBSTR(SAMPLE_BLOCK0, INSTR(SAMPLE_BLOCK0, '2) '))
                                                                        ELSE NULL
                                                                    END AS SAMPLE_BLOCK1
                                                                FROM(
                                                                    SELECT *,
                                                                        CASE 
                                                                            WHEN (NULLIF(Type_2, '') IS NOT NULL AND INSTR(Type_2, 'paraffin block key') != 0)
                                                                            THEN SUBSTR(Type_2, INSTR(Type_2, ') paraffin block key'))
                                                                            ELSE NULL
                                                                        END AS SAMPLE_BLOCK0
                                                                    FROM data_type_2
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
    ) a
) a