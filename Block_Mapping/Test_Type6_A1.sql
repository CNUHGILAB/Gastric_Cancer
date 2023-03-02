SELECT
    원무접수ID,
    SLIDE1,
    SLIDE2,
    SLIDE3
    /*
    YES_NO,
    NOT_NO,
    FROZEN_GROSS,
    FROZEN_DIAGNOSIS,
    GROSS_EXAMINATION,
    ELSE_A,
    FDN_GEN_R1,
    FDN_GEN_R2
    */
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(YES_NO, '') IS NOT NULL AND NULLIF(ELSE_A, '') IS NULL)
            THEN YES_NO
            WHEN (NULLIF(ELSE_A, '') IS NULL AND NULLIF(FDN_GEN_R2, '') IS NOT NULL AND INSTR(FDN_GEN_R2, 'No.1') != 0)
            THEN FDN_GEN_R2
            ELSE NULL
        END AS SLIDE1,
        CASE
            WHEN (NULLIF(NOT_NO, '') IS NOT NULL AND NULLIF(ELSE_A, '') IS NULL)
            THEN NOT_NO
            WHEN (NULLIF(ELSE_A, '') IS NULL AND NULLIF(FDN_GEN_R2, '') IS NOT NULL AND INSTR(FDN_GEN_R2, 'No.1') = 0)
            THEN FDN_GEN_R2
            ELSE NULL
        END AS SLIDE2,
        CASE
            WHEN (NULLIF(ELSE_A, '') IS NOT NULL)
            THEN ELSE_A
            ELSE NULL
        END AS SLIDE3
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(GROSS_EXAMINATION, '') IS NOT NULL AND NULLIF(NOT_NO, '') IS NULL AND NULLIF(ELSE_A, '') IS NULL)
                THEN GROSS_EXAMINATION
                WHEN (NULLIF(GROSS_EXAMINATION, '') IS NOT NULL AND NULLIF(NOT_NO, '') IS NULL AND NULLIF(ELSE_A, '') IS NOT NULL)
                THEN ELSE_A
                ELSE NULL
            END AS YES_NO
        FROM(
            SELECT *,
                CASE
                    WHEN (INSTR(GROSS_EXAMINATION, 'No.1') = 0)
                    THEN GROSS_EXAMINATION
                    ELSE NULL
                END AS NOT_NO
            FROM(
                SELECT *,
                    CASE
                        WHEN (REGEXP_INSTR(BINARY FROZEN_GROSS, '[A][0-9]{1,3}') != 0)
                        THEN FROZEN_GROSS
                        WHEN (REGEXP_INSTR(BINARY FROZEN_DIAGNOSIS, '[A][0-9]{1,3}') != 0)
                        THEN FROZEN_DIAGNOSIS
                        WHEN (REGEXP_INSTR(BINARY FDN_GEN_R1, '[A][0-9]{1,3}') != 0)
                        THEN FDN_GEN_R1
                        ELSE NULL
                    END AS ELSE_A
                FROM(
                    SELECT *,
                        CASE
                            WHEN (NULLIF(Type_6_RE, '') IS NOT NULL)
                            THEN SUBSTRING_INDEX(SUBSTRING_INDEX(BINARY Type_6_RE, 'FROZEN DIAGNOSIS', 1), 'FROZEN GROSS', -1)
                            #THEN SUBSTR(BINARY Type_6_RE, INSTR(BINARY Type_6_RE, 'FROZEN GROSS'), INSTR(BINARY Type_6_RE, 'FROZEN DIAGNOSIS'))
                            ELSE NULL
                        END AS FROZEN_GROSS,
                        CASE
                            WHEN (NULLIF(Type_6_RE, '') IS NOT NULL)
                            THEN SUBSTRING_INDEX(SUBSTRING_INDEX(BINARY Type_6_RE, 'GROSS EXAMINATION', 1), 'FROZEN DIAGNOSIS', -1)
                            ELSE NULL
                        END AS FROZEN_DIAGNOSIS,
                        CASE
                            WHEN (NULLIF(Type_6_RE, '') IS NOT NULL)
                            THEN SUBSTR(BINARY Type_6_RE, INSTR(BINARY Type_6_RE, 'GROSS EXAMINATION'))
                            ELSE NULL
                        END AS GROSS_EXAMINATION
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (NULLIF(Type_6_FDN, '') IS NULL AND NULLIF(Type_6_GEN, '') IS NULL)
                                THEN Re_Type_6
                                ELSE NULL
                            END AS Type_6_RE
                        FROM(
                            SELECT *,
                                CASE
                                    WHEN (NULLIF(Type_6_FDN, '') IS NOT NULL)
                                    THEN SUBSTR(BINARY Type_6_FDN, INSTR(BINARY Type_6_FDN, 'GROSS EXAMINATION:'))
                                    WHEN (NULLIF(Type_6_GEN, '') IS NOT NULL)
                                    THEN SUBSTR(BINARY Type_6_GEN, INSTR(BINARY Type_6_GEN, 'FROZEN DIAGNOSIS'))
                                    ELSE NULL
                                END AS FDN_GEN_R2
                            FROM(
                                SELECT *,
                                    CASE
                                        WHEN (NULLIF(Type_6_FDN, '') IS NOT NULL)
                                        THEN SUBSTR(BINARY Type_6_FDN, INSTR(BINARY Type_6_FDN, 'FROZEN GROSS'), INSTR(Type_6_FDN, 'GROSS EXAMINATION ('))
                                        WHEN (NULLIF(Type_6_GEN, '') IS NOT NULL)
                                        THEN SUBSTR(BINARY Type_6_GEN, INSTR(BINARY Type_6_GEN, 'FROZEN GROSS'), INSTR(Type_6_GEN, 'FROZEN DIAGNOSIS'))
                                        ELSE NULL
                                    END AS FDN_GEN_R1
                                FROM(
                                    SELECT *,
                                        CASE
                                            WHEN (INSTR(Re_Type_6, 'FROZEN DIAGNOSIS') = 0)
                                            THEN Re_Type_6
                                            ELSE NULL
                                        END AS Type_6_FDN,
                                        CASE
                                            WHEN (INSTR(Re_Type_6, 'GROSS EXAMINATION') = 0)
                                            THEN Re_Type_6
                                            ELSE NULL
                                        END AS Type_6_GEN
                                    FROM(
                                        SELECT *,
                                            CASE
                                                WHEN (INSTR(BINARY Type_6_R2, 'Gross examination') != 0)
                                                THEN REPLACE(BINARY Type_6_R2, 'Gross examination', 'GROSS EXAMINATION')
                                                WHEN (INSTR(BINARY Type_6_R2, 'Gross Examination') != 0)
                                                THEN REPLACE(BINARY Type_6_R2, 'Gross Examination', 'GROSS EXAMINATION')
                                                ELSE Type_6_R2
                                            END AS Re_Type_6
                                        FROM(
                                            SELECT *,
                                                CASE
                                                    WHEN (INSTR(BINARY Type_6_R1, 'Frozen diagnosis') != 0)
                                                    THEN REPLACE(BINARY Type_6_R1, 'Frozen diagnosis', 'FROZEN DIAGNOSIS')
                                                    WHEN (INSTR(BINARY Type_6_R1, 'Frozen Diagnosis') != 0)
                                                    THEN REPLACE(BINARY Type_6_R1, 'Frozen Diagnosis', 'FROZEN DIAGNOSIS')
                                                    ELSE Type_6_R1
                                                END AS Type_6_R2
                                            FROM(
                                                SELECT *,
                                                    CASE
                                                        WHEN (INSTR(BINARY R_Type_6, 'Frozen gross') != 0)
                                                        THEN REPLACE(BINARY R_Type_6, 'Frozen gross', 'FROZEN GROSS')
                                                        WHEN (INSTR(BINARY R_Type_6, 'Frozen Gross') != 0)
                                                        THEN REPLACE(BINARY R_Type_6, 'Frozen gross', 'FROZEN GROSS')
                                                        ELSE R_Type_6
                                                    END AS Type_6_R1
                                                FROM(
                                                    SELECT *,
                                                        CASE
                                                            WHEN (INSTR(Type_6, 'Forzen') != 0)
                                                            THEN REPLACE(Type_6, 'Forzen', 'Frozen')
                                                            WHEN (INSTR(Type_6, 'disagnosis') != 0)
                                                            THEN REPLACE(Type_6, 'disagnosis', 'diagnosis')
                                                            WHEN (INSTR(Type_6, 'daignosis') != 0)
                                                            THEN REPLACE(Type_6, 'daignosis', 'diagnosis')
                                                            WHEN (INSTR(Type_6, 'examaination') != 0)
                                                            THEN REPLACE(Type_6, 'examaination', 'examination')
                                                            WHEN (INSTR(BINARY Type_6, 'No. 1') != 0)
                                                            THEN REPLACE(Type_6, 'No. 1', 'No.1')
                                                            ELSE Type_6
                                                        END AS R_Type_6
                                                    FROM data_type_6
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