#Slide keys와 Paraffin block keys를 구분하는 Code
SELECT
    원무접수ID,
    Paraffin_block_keys
FROM(
    SELECT *,
        /*
        CASE
            WHEN (NULLIF(Re_Slide_block_keys, '') IS NOT NULL)
            THEN SUBSTRING_INDEX(SUBSTRING_INDEX(Re_Slide_block_keys, '2)', 1), 'Slide keys', -1)
            ELSE NULL
        END AS Re_Slide_block_keys,
        */
        CASE
            WHEN (NULLIF(Re_Paraffin_block_keys, '') IS NOT NULL)
            THEN SUBSTRING_INDEX(SUBSTRING_INDEX(Re_Paraffin_block_keys, '(9)', 1), 'paraffin block key', -1)
            ELSE Re_Paraffin_block_keys
        END AS Paraffin_block_keys
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(Re_Slides, '') IS NOT NULL)
                THEN SUBSTR(Re_Slides, INSTR(Re_Slides, 'Slide keys'))
                ELSE NULL
            END AS Re_Slide_block_keys,
            CASE
                WHEN (NULLIF(Re_Paraffins, '') IS NOT NULL)
                THEN SUBSTRING_INDEX(SUBSTRING_INDEX(Re_Paraffins, '2) ', 1), 'paraffin block key', -1)
                ELSE Re_Paraffins
            END AS Re_Paraffin_block_keys
        FROM(
            SELECT *,
                CASE
                    WHEN (NULLIF(Re_Slide, '') IS NOT NULL AND NULLIF(Re_Slides, '') IS NULL)
                    THEN Re_Slide
                    ELSE NULL
                END AS Re_Slide_Not2,
                CASE
                    WHEN (NULLIF(Re_Paraffin, '') IS NOT NULL AND NULLIF(Re_Paraffins, '') IS NULL)
                    THEN Re_Paraffin
                    ELSE NULL
                END AS Re_Paraffin_Not2
            FROM(
                SELECT *,
                    CASE
                        WHEN (INSTR(Re_Slide, ' 2)') != 0)
                        THEN Re_Slide
                        WHEN (INSTR(Re_Slide, '2)') != 0 AND INSTR(Re_Slide, '(2)') != 0)
                        THEN Re_Slide
                        ELSE REPLACE(Re_Slide, Re_Slide, NULL)
                    END AS Re_Slides,
                    CASE
                        WHEN (NULLIF(Re_Paraffin, '') IS NOT NULL)
                        THEN SUBSTR(Re_Paraffin, INSTR(Re_Paraffin, 'paraffin block key'))
                        ELSE NULL
                    END AS Re_Paraffins
                FROM(
                    SELECT *,
                        CASE
                            WHEN (INSTR(Re_Type2, 'Slide keys') != 0)
                            THEN REGEXP_REPLACE(Re_Type2, '[>|:|,]', ';')
                            ELSE REPLACE(Re_Type2, Re_Type2, NULL)
                        END AS Re_Slide,
                        CASE
                            WHEN (INSTR(Re_Type2, 'paraffin block keys') != 0)
                            THEN REGEXP_REPLACE(Re_Type2, '[>|:|,]', ';')
                            ELSE REPLACE(Re_Type2, Re_Type2, NULL)
                        END AS Re_Paraffin
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (NULLIF(Re_Type2, '') IS NULL)
                                THEN R_Type_2
                                ELSE NULL
                            END AS Else_A2
                        FROM(
                            SELECT *,
                                CASE
                                    WHEN (INSTR(R_Type_2, 'Slide key') != 0)
                                    THEN R_Type_2
                                    WHEN (INSTR(R_Type_2, 'paraffin block key') != 0)
                                    THEN R_Type_2
                                    ELSE NULL
                                END AS Re_Type2
                            FROM(
                                SELECT *,
                                    CASE
                                        WHEN INSTR(Type_2, '.') != 0
                                        THEN REPLACE(Type_2, '.', '')
                                        WHEN INSTR(Type_2, '[\n]') != 0
                                        THEN REGEXP_REPLACE(Type_2, '[\n]+', ';')
                                        ELSE Type_2
                                    END AS R_Type_2
                                FROM data_Type_2
                            ) a
                        ) a
                    ) a
                ) a
            ) a
        ) a
    ) a
) a
WHERE (Paraffin_block_keys IS NOT NULL)