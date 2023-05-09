SELECT
    원무접수ID,
    환자번호,
    LABEL_BLOCK1,
    LABEL_BLOCK2,
    NONE_LABEL_BLOCK1,
    NONE_LABEL_BLOCK2,
    # Frozen Diagnosis
    BLOCK_A3
FROM(
    SELECT *
    FROM(
        SELECT *
        FROM(
            SELECT *
            FROM(
                SELECT *
                FROM(
                    SELECT *
                    FROM(
                        SELECT *,
                            CASE 
                                WHEN (NULLIF(VALUE_A1, '') IS NOT NULL AND NULLIF(LABEL_BLOCK1, '') IS NULL)
                                THEN VALUE_A1
                                ELSE NULL
                            END AS NONE_LABEL_BLOCK1,
                            CASE 
                                WHEN (NULLIF(VALUE_A2, '') IS NOT NULL AND NULLIF(LABEL_BLOCK2, '') IS NULL)
                                THEN VALUE_A2
                                ELSE NULL
                            END AS NONE_LABEL_BLOCK2
                        FROM(
                            SELECT *,
                                CASE 
                                    WHEN (INSTR(SUBSTR(VALUE_A1, 1, REGEXP_INSTR(VALUE_A1, 'A[)]')), '\"') != 0
                                        OR INSTR(SUBSTR(VALUE_A1, 1, REGEXP_INSTR(VALUE_A1, '(A|RG)[0-9]+[)]')), '\"') != 0)
                                    THEN VALUE_A1
                                    ELSE NULL
                                END AS LABEL_BLOCK1,
                                CASE
                                    WHEN (INSTR(SUBSTR(VALUE_A2, 1, REGEXP_INSTR(VALUE_A2, '[0-9]+[)]')), '\"') != 0
                                        OR INSTR(SUBSTR(VALUE_A2, 1, REGEXP_INSTR(VALUE_A2, '[0-9]+[)]')), '\"') != 0)
                                    THEN VALUE_A2
                                    ELSE NULL
                                END AS LABEL_BLOCK2
                            FROM(
                                SELECT *,
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
                                    END AS BLOCK_A3
                                FROM block_mapping_01_05
                            ) a
                        ) a
                    ) a
                ) a
            ) a
        ) a
    ) a
) a