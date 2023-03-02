#Slide keys와 Paraffin block keys를 구분하는 Code
SELECT
    원무접수ID,
    Slide_keys
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(Re_Slide_keys, '') IS NOT NULL AND INSTR(BINARY Re_Slide_keys, 'A)') != 0)
            THEN REPLACE(SUBSTR(Re_Slide_keys, INSTR(BINARY Re_Slide_keys, 'A)')), 'A) ', '')
            WHEN (NULLIF(Re_Slide_keys, '') IS NOT NULL AND INSTR(BINARY Re_Slide_keys, 'A)') = 0)
            THEN REPLACE(BINARY Re_Slide_keys, 'Slide keys; ', '')
            ELSE Re_Slide_keys
        END AS Slide_keys
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(Re_Slide_key, '') IS NOT NULL AND INSTR(BINARY Re_Slide_key, 'B)') != 0)
                THEN REPLACE(Re_Slide_key, SUBSTR(Re_Slide_key, INSTR(Re_Slide_key, 'B)')), '')
                WHEN (NULLIF(Re_Slide_key, '') IS NOT NULL AND INSTR(BINARY Re_Slide_key, 'B;') != 0)
                THEN REPLACE(Re_Slide_key, SUBSTR(Re_Slide_key, INSTR(Re_Slide_key, 'B;')), '')
                ELSE Re_Slide_key
            END AS Re_Slide_keys
        FROM(
            SELECT *,
                CASE
                    WHEN (NULLIF(Re_Slides, '') IS NOT NULL AND INSTR(Re_Slides, 'Gross by') != 0)
                    THEN REPLACE(Re_Slides, SUBSTR(Re_Slides, INSTR(Re_Slides, 'Gross by')), '')
                    ELSE NULL
                END AS Re_Slide_key,
                CASE
                    WHEN (NULLIF(Re_Paraffins, '') IS NOT NULL AND INSTR(Re_Paraffins, 'Gross by') != 0)
                    THEN SUBSTR(Re_Paraffins, 1, INSTR(Re_Paraffins, 'Gross by'))
                    ELSE NULL
                END AS Re_Paraffin_block_key
            FROM(
                SELECT *,
                    CASE
                        WHEN (NULLIF(Re_Slide, '') IS NOT NULL)
                        THEN SUBSTR(Re_Slide, INSTR(Re_Slide, 'Slide key'))
                        ELSE NULL
                    END AS Re_Slides,
                    CASE
                        WHEN (NULLIF(Re_Paraffin, '') IS NOT NULL)
                        THEN SUBSTR(Re_Paraffin, INSTR(Re_Paraffin, 'paraffin block key'))
                        ELSE NULL
                    END AS Re_Paraffins
                FROM(
                    SELECT *,
                        CASE
                            WHEN (NULLIF(Re_Slide, '') IS NULL)
                            THEN Re_Slide
                            ELSE REPLACE(Re_Slide, Re_Slide, NULL)
                        END AS Re_Slide_Not2,
                        CASE
                            WHEN (NULLIF(Re_Paraffin, '') IS NULL)
                            THEN Re_Paraffin
                            ELSE REPLACE(Re_Paraffin, Re_Paraffin, NULL)
                        END AS Re_Paraffin_Not2
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (INSTR(Re_Type3, 'Slide key') != 0)
                                THEN REGEXP_REPLACE(Re_Type3, '[>|:|,]', ';')
                                ELSE REPLACE(Re_Type3, Re_Type3, NULL)
                            END AS Re_Slide,
                            CASE
                                WHEN (INSTR(Re_Type3, 'paraffin block key') != 0)
                                THEN REGEXP_REPLACE(Re_Type3, '[>|:|,]', ';')
                                ELSE REPLACE(Re_Type3, Re_Type3, NULL)
                            END AS Re_Paraffin
                        FROM(
                            SELECT *,
                                CASE
                                    WHEN (NULLIF(R_Type_3, '') IS NOT NULL AND NULLIF(Re_Type3, '') IS NULL)
                                    THEN R_Type_3
                                    ELSE NULL
                                END AS Else_A3
                            FROM(
                                SELECT *,
                                    CASE
                                        WHEN INSTR(R_Type_3, 'Slide key') != 0
                                        THEN R_Type_3
                                        WHEN INSTR(R_Type_3, 'paraffin block key') != 0
                                        THEN R_Type_3
                                        ELSE NULL
                                    END AS Re_Type3
                                FROM(
                                    SELECT *,
                                        CASE
                                            WHEN INSTR(Type_3, '.') != 0
                                            THEN REPLACE(Type_3, '.', '')
                                            ELSE Type_3
                                        END AS R_Type_3
                                    FROM data_Type_3
                                ) a
                            ) a
                        ) a
                    ) a
                ) a
            ) a
        ) a
    ) a
) a
WHERE (Slide_keys IS NOT NULL)