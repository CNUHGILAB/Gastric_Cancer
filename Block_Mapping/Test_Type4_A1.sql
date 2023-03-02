#Slide keys와 Paraffin block keys를 구분하는 Code
SELECT
    원무접수ID,
    Slide_keys,
    Paraffin_block_keys
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(Re_Slide_keys, '') IS NOT NULL)
            THEN SUBSTR(Re_Slide_keys, INSTR(Re_Slide_keys, REGEXP_SUBSTR(Re_Slide_keys, '[^;]+', 1, 2)))
            ELSE NULL
        END AS Slide_keys,
        CASE
            WHEN (NULLIF(Re_Paraffin_block_keys, '') IS NOT NULL)
            THEN SUBSTR(Re_Paraffin_block_keys, INSTR(Re_Paraffin_block_keys, REGEXP_SUBSTR(Re_Paraffin_block_keys, '[^;]+', 1, 2)))
            ELSE NULL
        END AS Paraffin_block_keys
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(Re_Slides, '') IS NOT NULL AND REGEXP_INSTR(BINARY Re_Slides, '[2] [A-z]+') != 0)
                THEN REPLACE(Re_Slides, SUBSTR(Re_Slides, REGEXP_INSTR(BINARY Re_Slides, '[2] [A-z]+')), '')
                WHEN (NULLIF(Re_Slides, '') IS NOT NULL AND REGEXP_INSTR(BINARY Re_Slides, '[2][)]') != 0)
                THEN REPLACE(Re_Slides, SUBSTR(Re_Slides, REGEXP_INSTR(BINARY Re_Slides, '[2][)]')), '')
                ELSE Re_Slides
            END AS Re_Slide_keys,
            CASE
                WHEN (NULLIF(Re_Paraffins, '') IS NOT NULL AND REGEXP_INSTR(BINARY Re_Paraffins, '[2] [A-z]+') != 0)
                THEN REPLACE(Re_Paraffins, SUBSTR(Re_Paraffins, REGEXP_INSTR(BINARY Re_Paraffins, '[2] [A-z]+')), '')
                WHEN (NULLIF(Re_Paraffins, '') IS NOT NULL AND REGEXP_INSTR(BINARY Re_Paraffins, '[2][)]') != 0)
                THEN REPLACE(Re_Paraffins, SUBSTR(Re_Paraffins, REGEXP_INSTR(BINARY Re_Paraffins, '[2][)]')), '')
                ELSE Re_Paraffins
            END AS Re_Paraffin_block_keys
        FROM(
            SELECT *,
                CASE
                    WHEN (NULLIF(Re_Slide, '') IS NOT NULL)
                    THEN SUBSTR(Re_Slide, INSTR(Re_Slide, 'Slide keys'))
                    ELSE NULL
                END AS Re_Slides,
                CASE
                    WHEN (NULLIF(Re_Paraffin, '') IS NOT NULL)
                    THEN SUBSTR(Re_Paraffin, INSTR(Re_Paraffin, 'paraffin block keys'))
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
                            WHEN (INSTR(Re_Type4, 'Slide keys') != 0)
                            THEN REGEXP_REPLACE(Re_Type4, '[>|:|,]', ';')
                            ELSE REPLACE(Re_Type4, Re_Type4, NULL)
                        END AS Re_Slide,
                        CASE
                            WHEN (INSTR(Re_Type4, 'paraffin block keys') != 0)
                            THEN REGEXP_REPLACE(Re_Type4, '[>|:|,]', ';')
                            ELSE REPLACE(Re_Type4, Re_Type4, NULL)
                        END AS Re_Paraffin
                    FROM(
                        SELECT *,
                            CASE
                                WHEN INSTR(R_Type_4, 'Slide key') != 0 OR INSTR(R_Type_4, 'Slide keys') = 0
                                THEN REPLACE(R_Type_4, 'Slide key', 'Slide keys')
                                WHEN INSTR(R_Type_4, 'Slide key') = 0 OR INSTR(R_Type_4, 'Slide keys') != 0
                                THEN R_Type_4
                                WHEN INSTR(R_Type_4, 'paraffin block key') != 0 OR INSTR(R_Type_4, 'paraffin block keys') = 0
                                THEN REPLACE(R_Type_4, 'paraffin block key', 'paraffin block keys')
                                ELSE R_Type_4
                            END AS Re_Type4,
                            CASE
                                WHEN (INSTR(R_Type_4, 'Slide keys') != 0)
                                THEN NULL
                                WHEN (INSTR(R_Type_4, 'paraffin block keys') != 0)
                                THEN NULL
                                ELSE R_Type_4
                            END AS Else_A4
                        FROM(
                            SELECT *,
                                CASE
                                    WHEN INSTR(Type_4, '.') != 0
                                    THEN REPLACE(Type_4, '.', '')
                                    WHEN INSTR(Type_4, '[\n]') != 0
                                    THEN REGEXP_REPLACE(Type_4, '[\n]+', ';')
                                    ELSE Type_4
                                END AS R_Type_4
                            FROM data_Type_4
                        ) a
                    ) a
                ) a
            ) a
        ) a
    ) a
) a
WHERE (Slide_keys IS NOT NULL OR Paraffin_block_keys IS NOT NULL)