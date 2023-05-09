SELECT
    원무접수ID,
    환자번호,
    BLOCK_A
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
                                WHEN REGEXP_INSTR(RE_FROZEN_GROSS_EXAMINATION, 'A[0-9]+') != 0
                                THEN RE_FROZEN_GROSS_EXAMINATION
                                WHEN REGEXP_INSTR(RE_FROZEN_DIAGNOSIS, 'A[0-9]+') != 0
                                THEN RE_FROZEN_DIAGNOSIS
                                WHEN REGEXP_INSTR(RE_GROSS_EXAMINATION, 'A[0-9]+') != 0
                                THEN RE_GROSS_EXAMINATION
                                ELSE NULL
                            END AS BLOCK_A
                        FROM(
                            SELECT *,
                                CASE 
                                    WHEN NULLIF(FROZEN_GROSS_EXAMINATION, '') IS NOT NULL
                                    THEN FROZEN_GROSS_EXAMINATION
                                    WHEN NULLIF(ELSE_FROZEN_GROSS_EXAMINATION, '') IS NOT NULL
                                    THEN ELSE_FROZEN_GROSS_EXAMINATION
                                    ELSE NULL
                                END AS RE_FROZEN_GROSS_EXAMINATION,
                                CASE 
                                    WHEN NULLIF(FROZEN_DIAGNOSIS, '') IS NOT NULL
                                    THEN FROZEN_DIAGNOSIS
                                    WHEN NULLIF(ELSE_FROZEN_DIAGNOSIS, '') IS NOT NULL
                                    THEN ELSE_FROZEN_DIAGNOSIS
                                    ELSE NULL
                                END AS RE_FROZEN_DIAGNOSIS,
                                CASE 
                                    WHEN NULLIF(GROSS_EXAMINATION, '') IS NOT NULL
                                    THEN GROSS_EXAMINATION
                                    ELSE NULL
                                END AS RE_GROSS_EXAMINATION
                            FROM(
                                SELECT *,
                                    CASE 
                                        WHEN (INSTR(BINARY ELSE_FROZEN_BLOCK, 'FROZEN Gross Examination') != 0 AND INSTR(BINARY ELSE_FROZEN_BLOCK, 'FROZEN DIAGNOSIS') != 0 AND INSTR(BINARY ELSE_FROZEN_BLOCK, 'GROSS EXAMINATION') = 0)
                                        THEN REPLACE(
                                            ELSE_FROZEN_BLOCK, SUBSTR(BINARY ELSE_FROZEN_BLOCK, INSTR(BINARY ELSE_FROZEN_BLOCK, 'FROZEN DIAGNOSIS')), ''
                                        )
                                        ELSE NULL
                                    END AS ELSE_FROZEN_GROSS_EXAMINATION,
                                    CASE 
                                        WHEN (INSTR(BINARY ELSE_FROZEN_BLOCK, 'FROZEN Gross Examination') != 0 AND INSTR(BINARY ELSE_FROZEN_BLOCK, 'FROZEN DIAGNOSIS') != 0 AND INSTR(BINARY ELSE_FROZEN_BLOCK, 'GROSS EXAMINATION') = 0)
                                        THEN SUBSTR(BINARY ELSE_FROZEN_BLOCK, INSTR(BINARY ELSE_FROZEN_BLOCK, 'FROZEN DIAGNOSIS'))
                                        ELSE NULL
                                    END AS ELSE_FROZEN_DIAGNOSIS
                                FROM(
                                    SELECT *,
                                        CASE 
                                            WHEN (NULLIF(NONE_GROSS_EXAMINATION, '') IS NOT NULL AND NULLIF(NONE_FROZEN_DIAGNOSIS, '') IS NOT NULL AND NULLIF(NONE_FROZEN_GROSS_EXAMINATION, '') IS NOT NULL)
                                            THEN FROZEN_BLOCK
                                            ELSE NULL
                                        END AS ELSE_FROZEN_BLOCK
                                    FROM(
                                        SELECT *,
                                            CASE 
                                                WHEN NULLIF(FROZEN_BLOCK, '') IS NOT NULL AND NULLIF(FROZEN_GROSS_EXAMINATION, '') IS NULL
                                                THEN FROZEN_BLOCK
                                                ELSE NULL
                                            END AS NONE_FROZEN_GROSS_EXAMINATION
                                        FROM(
                                            SELECT *,
                                                CASE 
                                                    WHEN (INSTR(SUBSTR(BINARY FROZEN_BLOCK, 1), 'FROZEN DIAGNOSIS') != 0 AND INSTR(SUBSTR(BINARY FROZEN_BLOCK, 1), 'GROSS EXAMINATION') != 0)
                                                    THEN REPLACE(
                                                        SUBSTR(BINARY FROZEN_BLOCK, 1), SUBSTR(BINARY FROZEN_BLOCK, INSTR(BINARY FROZEN_BLOCK, 'FROZEN DIAGNOSIS')), ''
                                                    )
                                                    ELSE NULL
                                                END AS FROZEN_GROSS_EXAMINATION,
                                                CASE 
                                                    WHEN (NULLIF(FROZEN_BLOCK, '') IS NOT NULL AND NULLIF(FROZEN_DIAGNOSIS, '') IS NULL)
                                                    THEN FROZEN_BLOCK
                                                    ELSE NULL
                                                END AS NONE_FROZEN_DIAGNOSIS
                                            FROM(
                                                SELECT *,
                                                    CASE 
                                                        WHEN INSTR(SUBSTR(BINARY FROZEN_BLOCK, INSTR(BINARY FROZEN_BLOCK, 'FROZEN DIAGNOSIS')), 'GROSS EXAMINATION') != 0
                                                        THEN REPLACE(
                                                            SUBSTR(BINARY FROZEN_BLOCK, INSTR(BINARY FROZEN_BLOCK, 'FROZEN DIAGNOSIS')), SUBSTR(BINARY FROZEN_BLOCK, INSTR(BINARY FROZEN_BLOCK, 'GROSS EXAMINATION')), ''
                                                        )
                                                        ELSE NULL
                                                    END AS FROZEN_DIAGNOSIS,
                                                    CASE 
                                                        WHEN (NULLIF(FROZEN_BLOCK, '') IS NOT NULL AND NULLIF(GROSS_EXAMINATION, '') IS NULL)
                                                        THEN FROZEN_BLOCK
                                                        ELSE NULL
                                                    END AS NONE_GROSS_EXAMINATION
                                                FROM(
                                                    SELECT *,
                                                        CASE 
                                                            WHEN (INSTR(SUBSTR(BINARY FROZEN_BLOCK, INSTR(BINARY FROZEN_BLOCK, 'GROSS EXAMINATION')), 'FROZEN Gross Examination') = 0
                                                                AND INSTR(SUBSTR(BINARY FROZEN_BLOCK, INSTR(BINARY FROZEN_BLOCK, 'GROSS EXAMINATION')), 'FROZEN DIAGNOSIS') = 0)
                                                            THEN SUBSTR(BINARY FROZEN_BLOCK, INSTR(BINARY FROZEN_BLOCK, 'GROSS EXAMINATION'))
                                                            ELSE NULL
                                                        END AS GROSS_EXAMINATION
                                                    FROM(
                                                        SELECT *,
                                                            CASE
                                                                WHEN REGEXP_INSTR(SUBSTR(BINARY RE_BLOCK_A3, INSTR(BINARY RE_BLOCK_A3, 'FROZEN DIAGNOSIS')), '(One|Two|Three|Four|Five|Six|Senven|Eight|Nine|Ten|Eleven|Twelve) specimens are') != 0
                                                                THEN REPLACE(
                                                                    RE_BLOCK_A3,
                                                                    SUBSTR(SUBSTR(BINARY RE_BLOCK_A3, INSTR(BINARY RE_BLOCK_A3, 'FROZEN DIAGNOSIS')),
                                                                    REGEXP_INSTR(SUBSTR(BINARY RE_BLOCK_A3, INSTR(BINARY RE_BLOCK_A3, 'FROZEN DIAGNOSIS')),
                                                                    '(One|Two|Three|Four|Five|Six|Senven|Eight|Nine|Ten|Eleven|Twelve) specimens are')),
                                                                    CONCAT(
                                                                        'GROSS EXAMINATION\n\n',
                                                                        SUBSTR(
                                                                            SUBSTR(BINARY RE_BLOCK_A3, INSTR(BINARY RE_BLOCK_A3, 'FROZEN DIAGNOSIS')),
                                                                            REGEXP_INSTR(SUBSTR(BINARY RE_BLOCK_A3, INSTR(BINARY RE_BLOCK_A3, 'FROZEN DIAGNOSIS')),
                                                                            '(One|Two|Three|Four|Five|Six|Senven|Eight|Nine|Ten|Eleven|Twelve) specimens are')
                                                                        )
                                                                    )
                                                                )
                                                                ELSE RE_BLOCK_A3
                                                            END AS FROZEN_BLOCK
                                                        FROM(
                                                            SELECT *,
                                                                CASE
                                                                    WHEN (INSTR(BINARY BLOCK_A3, 'FROZEN DIAGNOSIS') = 0 AND INSTR(BINARY BLOCK_A3, 'GROSS EXAMINATION') != 0)
                                                                    THEN REPLACE(
                                                                        BLOCK_A3,
                                                                        SUBSTR(BINARY BLOCK_A3, INSTR(BINARY BLOCK_A3, 'GROSS EXAMINATION')),
                                                                        REGEXP_REPLACE(
                                                                            SUBSTR(BINARY BLOCK_A3, INSTR(BINARY BLOCK_A3, 'GROSS EXAMINATION')), '^GROSS EXAMINATION', 'FROZEN DIAGNOSIS'
                                                                        )
                                                                    )
                                                                    ELSE BLOCK_A3
                                                                END AS RE_BLOCK_A3
                                                            FROM block_mapping_02_02
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