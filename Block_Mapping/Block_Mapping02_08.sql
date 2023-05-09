SELECT
    원무접수ID,
    환자번호,
    NUM_BLOCK_ELSE,
    # Frozen Diagnosis
    BLOCK_A2
FROM(
    SELECT *
    FROM(
        SELECT *
        FROM(
            SELECT *
            FROM(
                SELECT *,
                    CASE 
                        WHEN REGEXP_INSTR(BLOCK_A1, '^ (A|RG)[0-9]+') != 0
                        THEN BLOCK_A1
                        ELSE NULL
                    END AS NUM_BLOCK_ELSE
                FROM(
                    SELECT *,
                        CASE 
                            WHEN NULLIF(BLOCK_A1_1, '') IS NOT NULL
                            THEN REGEXP_REPLACE(
                                REGEXP_REPLACE(
                                    SUBSTR(BLOCK_A1_1, REGEXP_INSTR(BLOCK_A1_1, 'follows[;] (A|RG)[0-9]+')), '^follows[;]', ' '
                                ), ' {2,}', ' '
                            )
                            ELSE NULL
                        END AS BLOCK_A1
                    FROM(
                        SELECT *,
                            CASE 
                                WHEN NULLIF(VALUE_A, '') IS NOT NULL
                                THEN REGEXP_REPLACE(
                                    REPLACE(
                                        VALUE_A, '\n', ' '
                                    ), ' {2,}', ' '
                                )
                                ELSE NULL
                            END AS BLOCK_A1_1,
                            CASE 
                                WHEN NULLIF(VALUE_FROZEN, '') IS NOT NULL
                                THEN REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            REPLACE(
                                                REPLACE(
                                                    REPLACE(
                                                        REPLACE(
                                                            REPLACE(
                                                                REPLACE(
                                                                    REPLACE(
                                                                        REPLACE(
                                                                            REPLACE(
                                                                                REPLACE(
                                                                                    VALUE_FROZEN, 'Froze', 'FROZEN'
                                                                                ), 'examinaton', 'examination'
                                                                            ), 'examinatio', 'examination'
                                                                        ), 'examaination', 'examination'
                                                                    ), 'examinationn', 'examination'
                                                                ), 'FROZENn', 'FROZEN'
                                                            ), 'FROZEN Gross', 'FROZEN GROSS EXAMINATION'
                                                        ), 'FROZEN gross', 'FROZEN GROSS EXAMINATION'
                                                    ), 'FROZEN GROSS EXAMINATION examination', 'FROZEN GROSS EXAMINATION'
                                                ), 'FROZEN diagnosis', 'FROZEN DIAGNOSIS'
                                            ), 'FROZEN Diagnosis', 'FROZEN DIAGNOSIS'
                                        ), 'Gross examination', 'GROSS EXAMINATION'
                                    ), ';;', ';'
                                )
                                ELSE NULL
                            END AS BLOCK_A2
                        FROM block_mapping_01_08
                    ) a
                ) a
            ) a
        ) a
    ) a
) a