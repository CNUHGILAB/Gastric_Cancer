#Slide keys와 Paraffin block keys를 구분하는 Code
SELECT
    원무접수ID,
    Slide_keys
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(Re_Slide_keys, '') IS NOT NULL AND INSTR(Re_Slide_keys, 'A2)') = 0 AND INSTR(Re_Slide_keys, '2)') != 0)
            THEN REPLACE(Re_Slide_keys, SUBSTR(Re_Slides, INSTR(Re_Slides, '2)')), '')
            ELSE Re_Slide_keys
        END AS Slide_keys
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(Re_Slides, '') IS NOT NULL AND INSTR(BINARY Re_Slides, 'No2') != 0)
                THEN REPLACE(Re_Slides, SUBSTR(Re_Slides, INSTR(Re_Slides, 'No2')), '')
                ELSE Re_Slides
            END AS Re_Slide_keys,
            CASE
                WHEN (NULLIF(Re_Paraffins, '') IS NOT NULL AND INSTR(Re_Paraffins, 'Gross by') != 0)
                THEN SUBSTR(Re_Paraffins, 1, INSTR(Re_Paraffins, 'Gross by'))
                ELSE NULL
            END AS Re_Paraffin_block_keys
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
                            WHEN (INSTR(Re_Type5, 'Slide key') != 0)
                            THEN REGEXP_REPLACE(Re_Type5, '[>|:|,]', ';')
                            ELSE NULL
                        END AS Re_Slide,
                        CASE
                            WHEN (INSTR(Re_Type5, 'paraffin block key') != 0)
                            THEN REGEXP_REPLACE(Re_Type5, '[>|:|,]', ';')
                            ELSE NULL
                        END AS Re_Paraffin
                    FROM(
                        SELECT *,
                            CASE
                                WHEN (NULLIF(Re_Type5, '') IS NULL)
                                THEN R_Type_5
                                ELSE NULL
                            END AS Else_A5
                        FROM(
                            SELECT *,
                                CASE
                                    WHEN (INSTR(R_Type_5, 'slide key') != 0)
                                    THEN REPLACE(BINARY R_Type_5, 'slide key', 'Slide key')
                                    ELSE NULL
                                END AS Re_Type5
                            FROM(
                                SELECT *,
                                    CASE
                                        WHEN INSTR(Type_5, '.') != 0
                                        THEN REPLACE(Type_5, '.', '')
                                        ELSE Type_5
                                    END AS R_Type_5
                                FROM data_Type_5
                            ) a
                        ) a
                    ) a
                ) a
            ) a
        ) a
    ) a
) a
WHERE (NOT 원무접수ID = 'MI0071438720020126' AND Slide_keys IS NOT NULL)