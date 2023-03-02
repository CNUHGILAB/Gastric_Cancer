SELECT
    원무접수ID,
    환자번호,
    SAMPLE_BLOCK6
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(SAMPLE_BLOCK5, '') IS NOT NULL AND INSTR(BINARY SAMPLE_BLOCK4, 'No2') != 0)
            THEN REPLACE(SAMPLE_BLOCK5, 'No2', 'No.2')
            ELSE SAMPLE_BLOCK5
        END AS SAMPLE_BLOCK6
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(SAMPLE_BLOCK4, '') IS NOT NULL AND INSTR(BINARY SAMPLE_BLOCK4, '\"No.') != 0)
                THEN REPLACE(BINARY SAMPLE_BLOCK4, '\"No.', '\"no.')
                ELSE SAMPLE_BLOCK4
            END AS SAMPLE_BLOCK5
        FROM(
            SELECT *,
                CASE
                    WHEN (NULLIF(SAMPLE_BLOCK3, '') IS NOT NULL AND INSTR(BINARY SAMPLE_BLOCK3, '\'No.') != 0)
                    THEN REPLACE(BINARY SAMPLE_BLOCK3, '\'No.', '\'no.')
                    ELSE SAMPLE_BLOCK3
                END AS SAMPLE_BLOCK4
            FROM(
                SELECT *,
                    CASE
                        WHEN (NULLIF(SAMPLE_BLOCK2, '') IS NOT NULL)
                        THEN REPLACE(BINARY SAMPLE_BLOCK2, 'no.', 'No.')
                        ELSE NULL
                    END AS SAMPLE_BLOCK3
                FROM(
                    SELECT *,
                        CASE
                            WHEN (NULLIF(SAMPLE_BLOCK1, '') IS NOT NULL)
                            THEN REPLACE(SAMPLE_BLOCK1, '  ', '')
                            ELSE NULL
                        END AS SAMPLE_BLOCK2
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (NULLIF(Type_1, '') IS NOT NULL)
                                THEN REGEXP_REPLACE(Type_1, '[:]', ';')
                                #THEN REPLACE(SUBSTR(Type_1, INSTR(BINARY Type_1, 'No.2')), '  ', '')
                                #THEN SUBSTRING_INDEX(SUBSTRING_INDEX(BINARY Type_1, 'No.3', 1), 'No.2', -1)
                                ELSE NULL
                            END AS SAMPLE_BLOCK1
                        FROM data_type_1
                    ) a
                ) a
            ) a
        ) a
    ) a
) a